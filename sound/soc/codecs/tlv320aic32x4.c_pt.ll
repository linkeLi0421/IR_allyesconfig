; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tlv320aic32x4.c_pt.bc'
source_filename = "../sound/soc/codecs/tlv320aic32x4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+aic32x4_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_aic32x4_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_aic32x4_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aic32x4_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22aic32x4_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_aic32x4_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+aic32x4_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_aic32x4_probe\09\09\09\09"
module asm "\09.long\09__crc_aic32x4_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aic32x4_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22aic32x4_probe\22\09\09\09\09\09"
module asm "__kstrtabns_aic32x4_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+aic32x4_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_aic32x4_remove\09\09\09\09"
module asm "\09.long\09__crc_aic32x4_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aic32x4_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22aic32x4_remove\22\09\09\09\09\09"
module asm "__kstrtabns_aic32x4_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.aic32x4_priv = type { ptr, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.aic32x4_pdata = type { ptr, i32, i32, i8, i32 }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@aic32x4_regmap_pages = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 251, i32 0, i32 255, i32 0, i32 0, i32 128 }], [32 x i8] zeroinitializer }, align 32
@aic32x4_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 251, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @aic32x4_regmap_pages, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_aic32x4_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_aic32x4_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_aic32x4_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aic32x4_regmap_config to i32), ptr @__kstrtab_aic32x4_regmap_config, ptr @__kstrtabns_aic32x4_regmap_config }, section "___ksymtab+aic32x4_regmap_config", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@aic32x4_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to parse DT node\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aic32x4_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/codecs/tlv320aic32x4.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aic32x4_probe._entry_ptr = internal global ptr @aic32x4_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320aic32x4 rstn\00", [45 x i8] zeroinitializer }, align 32
@aic32x4_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to setup regulators\0A\00", [36 x i8] zeroinitializer }, align 32
@aic32x4_probe._entry_ptr.9 = internal global ptr @aic32x4_probe._entry.7, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@soc_component_dev_aic32x4_tas2505 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @aic32x4_tas2505_snd_controls, i32 7, ptr @aic32x4_tas2505_dapm_widgets, i32 6, ptr @aic32x4_tas2505_dapm_routes, i32 5, ptr @aic32x4_tas2505_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic32x4_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@aic32x4_tas2505_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.83, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @aic32x4_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.56, i64 73014445124, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@soc_component_dev_aic32x4 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @aic32x4_snd_controls, i32 25, ptr @aic32x4_dapm_widgets, i32 40, ptr @aic32x4_dapm_routes, i32 70, ptr @aic32x4_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic32x4_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@aic32x4_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.219, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @aic32x4_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.220, i64 73014445124, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.56, i64 73014445124, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@aic32x4_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register component\0A\00", [34 x i8] zeroinitializer }, align 32
@aic32x4_probe._entry_ptr.12 = internal global ptr @aic32x4_probe._entry.10, section ".printk_index", align 4
@__kstrtab_aic32x4_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_aic32x4_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_aic32x4_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aic32x4_probe to i32), ptr @__kstrtab_aic32x4_probe, ptr @__kstrtabns_aic32x4_probe }, section "___ksymtab+aic32x4_probe", align 4
@__kstrtab_aic32x4_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_aic32x4_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_aic32x4_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aic32x4_remove to i32), ptr @__kstrtab_aic32x4_remove, ptr @__kstrtabns_aic32x4_remove }, section "___ksymtab+aic32x4_remove", align 4
@__UNIQUE_ID_description294 = internal constant [66 x i8] c"snd_soc_tlv320aic32x4.description=ASoC tlv320aic32x4 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [77 x i8] c"snd_soc_tlv320aic32x4.author=Javier Martin <javier.martin@vista-silicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [66 x i8] c"snd_soc_tlv320aic32x4.file=sound/soc/codecs/snd-soc-tlv320aic32x4\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [34 x i8] c"snd_soc_tlv320aic32x4.license=GPL\00", section ".modinfo", align 1
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aic32x4-gpio-func\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldoin\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iov\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"dv\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"av\00", [29 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 1259, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Missing supply 'iov'\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aic32x4_setup_regulators\00", [39 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry_ptr = internal global ptr @aic32x4_setup_regulators._entry, section ".printk_index", align 4
@aic32x4_setup_regulators._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.3, i32 1268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Missing supply 'dv' or 'ldoin'\0A\00", [32 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry_ptr.24 = internal global ptr @aic32x4_setup_regulators._entry.22, section ".printk_index", align 4
@aic32x4_setup_regulators._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.3, i32 1272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Missing supply 'av' or 'ldoin'\0A\00", [32 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry_ptr.27 = internal global ptr @aic32x4_setup_regulators._entry.25, section ".printk_index", align 4
@aic32x4_setup_regulators._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.3, i32 1284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator iov\0A\00", [32 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry_ptr.30 = internal global ptr @aic32x4_setup_regulators._entry.28, section ".printk_index", align 4
@aic32x4_setup_regulators._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.3, i32 1291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable regulator ldo\0A\00", [32 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry_ptr.33 = internal global ptr @aic32x4_setup_regulators._entry.31, section ".printk_index", align 4
@aic32x4_setup_regulators._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.21, ptr @.str.3, i32 1299, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable regulator dv\0A\00", [33 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry_ptr.36 = internal global ptr @aic32x4_setup_regulators._entry.34, section ".printk_index", align 4
@aic32x4_setup_regulators._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.21, ptr @.str.3, i32 1307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable regulator av\0A\00", [33 x i8] zeroinitializer }, align 32
@aic32x4_setup_regulators._entry_ptr.39 = internal global ptr @aic32x4_setup_regulators._entry.37, section ".printk_index", align 4
@aic32x4_tas2505_snd_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_pcm }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @l_ptm_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_tas_driver_gain }, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_tas_driver_gain }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_amp_vol }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }], [80 x i8] zeroinitializer }, align 32
@aic32x4_tas2505_dapm_routes = internal constant { [5 x %struct.snd_soc_dapm_route], [92 x i8] } { [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.63, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }], [92 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@tlv_pcm = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -127, i32 48, i32 48, i32 65, i32 65, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DAC Playback PowerTune Switch\00", [34 x i8] zeroinitializer }, align 32
@l_ptm_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 131, i8 2, i8 2, i32 3, i32 3, ptr @ptm_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HP Driver Gain Volume\00", [42 x i8] zeroinitializer }, align 32
@tlv_tas_driver_gain = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5850, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 116, i32 116, i32 144, i32 144, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HP DAC Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 144, i32 144, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Speaker Driver Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 116, i32 116, i32 174, i32 174, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Speaker Amplifier Playback Volume\00", [62 x i8] zeroinitializer }, align 32
@tlv_amp_vol = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 66136], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 176, i32 176, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Auto-mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 64, i32 64, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@ptm_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54], [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"P3\00", [29 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"P2\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"P1\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Output Mixer\00", [16 x i8] zeroinitializer }, align 32
@hp_output_mixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP Power\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Driver\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@aic32x4_tas2505_dapm_widgets = internal constant { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [264 x i8] } { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.55, ptr @.str.56, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_output_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 137, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 173, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 140, i32 140, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@aic32x4_tas2505_component_probe.clocks = internal global { [4 x %struct.clk_bulk_data], [32 x i8] } { [4 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.65, ptr null }, %struct.clk_bulk_data { ptr @.str.66, ptr null }, %struct.clk_bulk_data { ptr @.str.67, ptr null }, %struct.clk_bulk_data { ptr @.str.68, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codec_clkin\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pll\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bdiv\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdac\00", [27 x i8] zeroinitializer }, align 32
@aic32x4_mfp1 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aic32x4_get_mfp1_gpio, ptr null, %union.anon.96 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aic32x4_mfp2 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr null, ptr @aic32x4_set_mfp2_gpio, %union.anon.96 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aic32x4_mfp3 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aic32x4_get_mfp3_gpio, ptr null, %union.anon.96 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aic32x4_mfp4 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr null, ptr @aic32x4_set_mfp4_gpio, %union.anon.96 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@aic32x4_mfp5 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @aic32x4_get_mfp5_gpio, ptr @aic32x4_set_mfp5_gpio, %union.anon.96 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MFP1 GPIO\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MFP2 GPIO\00", [22 x i8] zeroinitializer }, align 32
@aic32x4_set_mfp2_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: MFP2 is not configure as a GPIO output\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aic32x4_set_mfp2_gpio\00", [42 x i8] zeroinitializer }, align 32
@aic32x4_set_mfp2_gpio._entry_ptr = internal global ptr @aic32x4_set_mfp2_gpio._entry, section ".printk_index", align 4
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MFP3 GPIO\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MFP4 GPIO\00", [22 x i8] zeroinitializer }, align 32
@aic32x4_set_mfp4_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: MFP4 is not configure as a GPIO output\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aic32x4_set_mfp4_gpio\00", [42 x i8] zeroinitializer }, align 32
@aic32x4_set_mfp4_gpio._entry_ptr = internal global ptr @aic32x4_set_mfp4_gpio._entry, section ".printk_index", align 4
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MFP5 GPIO\00", [22 x i8] zeroinitializer }, align 32
@aic32x4_set_mfp5_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: MFP5 is not configure as a GPIO output\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aic32x4_set_mfp5_gpio\00", [42 x i8] zeroinitializer }, align 32
@aic32x4_set_mfp5_gpio._entry_ptr = internal global ptr @aic32x4_set_mfp5_gpio._entry, section ".printk_index", align 4
@aic32x4_set_bias_level.clocks = internal global { [3 x %struct.clk_bulk_data], [40 x i8] } { [3 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.80, ptr null }, %struct.clk_bulk_data { ptr @.str.68, ptr null }, %struct.clk_bulk_data { ptr @.str.67, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"madc\00", [27 x i8] zeroinitializer }, align 32
@aic32x4_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable clocks\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aic32x4_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@aic32x4_set_bias_level._entry_ptr = internal global ptr @aic32x4_set_bias_level._entry, section ".printk_index", align 4
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tas2505-hifi\00", [19 x i8] zeroinitializer }, align 32
@aic32x4_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @aic32x4_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @aic32x4_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic32x4_mute, ptr null, ptr null, ptr @aic32x4_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@aic32x4_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013aic32x4: invalid DAI master/slave interface\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aic32x4_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@aic32x4_set_dai_fmt._entry_ptr = internal global ptr @aic32x4_set_dai_fmt._entry, section ".printk_index", align 4
@aic32x4_set_dai_fmt._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013aic32x4: invalid DAI interface format\0A\00", [55 x i8] zeroinitializer }, align 32
@aic32x4_set_dai_fmt._entry_ptr.88 = internal global ptr @aic32x4_set_dai_fmt._entry.86, section ".printk_index", align 4
@aic32x4_setup_clocks.clocks = internal global { [6 x %struct.clk_bulk_data], [48 x i8] } { [6 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.66, ptr null }, %struct.clk_bulk_data { ptr @.str.89, ptr null }, %struct.clk_bulk_data { ptr @.str.80, ptr null }, %struct.clk_bulk_data { ptr @.str.90, ptr null }, %struct.clk_bulk_data { ptr @.str.68, ptr null }, %struct.clk_bulk_data { ptr @.str.67, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nadc\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ndac\00", [27 x i8] zeroinitializer }, align 32
@aic32x4_setup_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.3, i32 757, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Sampling rate not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aic32x4_setup_clocks\00", [43 x i8] zeroinitializer }, align 32
@aic32x4_setup_clocks._entry_ptr = internal global ptr @aic32x4_setup_clocks._entry, section ".printk_index", align 4
@aic32x4_setup_clocks._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Could not set clocks to support sample rate.\0A\00", [50 x i8] zeroinitializer }, align 32
@aic32x4_setup_clocks._entry_ptr.95 = internal global ptr @aic32x4_setup_clocks._entry.93, section ".printk_index", align 4
@aic32x4_snd_controls = internal constant { [25 x %struct.snd_kcontrol_new], [304 x i8] } { [25 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_pcm }, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @l_ptm_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @r_ptm_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_driver_gain }, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_driver_gain }, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @lo_cm_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_adc_vol }, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @tlv_step_0_5 }, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }], [304 x i8] zeroinitializer }, align 32
@aic32x4_dapm_routes = internal constant { [70 x %struct.snd_soc_dapm_route], [904 x i8] } { [70 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.186, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.188, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.186, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.191, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.193, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.191, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.198, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.199, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.200, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.198, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.199, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.200, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.198, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.199, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.200, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.198, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.199, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.200, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.198, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.199, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.200, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.198, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.199, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.200, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.198, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.199, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.200, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.198, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.199, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.200, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.198, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.199, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.200, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.198, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.199, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.200, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.198, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.199, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.200, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.198, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.199, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.200, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.198, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.199, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.200, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.198, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.199, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.200, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }], [904 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -127, i32 48, i32 48, i32 65, i32 66, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DAC Left Playback PowerTune Switch\00", [61 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DAC Right Playback PowerTune Switch\00", [60 x i8] zeroinitializer }, align 32
@r_ptm_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 132, i8 2, i8 2, i32 3, i32 3, ptr @ptm_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tlv_driver_gain = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -6, i32 29, i32 29, i32 144, i32 145, i32 0, i32 0, i32 5, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LO Driver Gain Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -6, i32 29, i32 29, i32 146, i32 147, i32 0, i32 0, i32 5, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 144, i32 145, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LO DAC Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 146, i32 147, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LO Playback Common Mode Switch\00", [33 x i8] zeroinitializer }, align 32
@lo_cm_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 138, i8 3, i8 3, i32 2, i32 1, ptr @lo_cm_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mic PGA Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 187, i32 188, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADCFGA Left Mute Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADCFGA Right Mute Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Level Volume\00", [47 x i8] zeroinitializer }, align 32
@tlv_adc_vol = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -24, i32 40, i32 40, i32 83, i32 84, i32 0, i32 0, i32 6, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PGA Level Volume\00", [47 x i8] zeroinitializer }, align 32
@tlv_step_0_5 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 187, i32 188, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 64, i32 64, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AGC Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AGC Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 94, i32 94, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AGC Target Level\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 86, i32 94, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGC Gain Hysteresis\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 86, i32 94, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AGC Hysteresis\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 87, i32 95, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGC Noise Threshold\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 87, i32 95, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AGC Max PGA\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 88, i32 96, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AGC Attack Time\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 89, i32 97, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AGC Decay Time\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 90, i32 98, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AGC Noise Debounce\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 91, i32 99, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGC Signal Debounce\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 92, i32 100, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@lo_cm_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.139, ptr @.str.140], [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Full Chip\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.65V\00", [26 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HPL Output Mixer\00", [47 x i8] zeroinitializer }, align 32
@hpl_output_mixer_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HPL Power\00", [22 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LOL Output Mixer\00", [47 x i8] zeroinitializer }, align 32
@lol_output_mixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOL Power\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HPR Output Mixer\00", [47 x i8] zeroinitializer }, align 32
@hpr_output_mixer_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HPR Power\00", [22 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LOR Output Mixer\00", [47 x i8] zeroinitializer }, align 32
@lor_output_mixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LOR Power\00", [22 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IN1_R to Right Mixer Positive Resistor\00", [57 x i8] zeroinitializer }, align 32
@in1r_to_rmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in1r_rpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IN2_R to Right Mixer Positive Resistor\00", [57 x i8] zeroinitializer }, align 32
@in2r_to_rmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in2r_rpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IN3_R to Right Mixer Positive Resistor\00", [57 x i8] zeroinitializer }, align 32
@in3r_to_rmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in3r_rpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IN2_L to Right Mixer Positive Resistor\00", [57 x i8] zeroinitializer }, align 32
@in2l_to_rmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.203, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in2l_rpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CM_R to Right Mixer Negative Resistor\00", [58 x i8] zeroinitializer }, align 32
@cmr_to_rmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @cmr_rpga_n_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IN1_L to Right Mixer Negative Resistor\00", [57 x i8] zeroinitializer }, align 32
@in1l_to_rmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in1l_rpga_n_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IN3_L to Right Mixer Negative Resistor\00", [57 x i8] zeroinitializer }, align 32
@in3l_to_rmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in3l_rpga_n_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IN1_L to Left Mixer Positive Resistor\00", [58 x i8] zeroinitializer }, align 32
@in1l_to_lmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in1l_lpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IN2_L to Left Mixer Positive Resistor\00", [58 x i8] zeroinitializer }, align 32
@in2l_to_lmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in2l_lpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IN3_L to Left Mixer Positive Resistor\00", [58 x i8] zeroinitializer }, align 32
@in3l_to_lmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in3l_lpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IN1_R to Left Mixer Positive Resistor\00", [58 x i8] zeroinitializer }, align 32
@in1r_to_lmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in1r_lpga_p_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CM_L to Left Mixer Negative Resistor\00", [59 x i8] zeroinitializer }, align 32
@cml_to_lmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.211, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @cml_lpga_n_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IN2_R to Left Mixer Negative Resistor\00", [58 x i8] zeroinitializer }, align 32
@in2r_to_lmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in2r_lpga_n_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IN3_R to Left Mixer Negative Resistor\00", [58 x i8] zeroinitializer }, align 32
@in3r_to_lmixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.213, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @in3r_lpga_n_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Reset\00", [22 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOL\00", [28 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOR\00", [28 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1_L\00", [26 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1_R\00", [26 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN2_L\00", [26 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN2_R\00", [26 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN3_L\00", [26 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN3_R\00", [26 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CM_L\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CM_R\00", [27 x i8] zeroinitializer }, align 32
@aic32x4_dapm_widgets = internal constant { [40 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1792 x i8] } { [40 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.141, ptr @.str.142, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @hpl_output_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 137, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lol_output_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 137, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.147, ptr @.str.148, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @hpr_output_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 137, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lor_output_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 137, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.153, ptr @.str.154, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1r_to_rmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in2r_to_rmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in3r_to_rmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in2l_to_rmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cmr_to_rmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1l_to_rmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in3l_to_rmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.162, ptr @.str.163, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1l_to_lmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in2l_to_lmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in3l_to_lmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1r_to_lmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @cml_to_lmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in2r_to_lmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in3r_to_lmixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 179, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @mic_bias_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic32x4_reset_adc, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1792 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"L_DAC Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 140, i32 140, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IN1_L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 140, i32 140, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 142, i32 142, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"R_DAC Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 141, i32 141, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IN1_R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 141, i32 141, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 143, i32 143, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN1_R R+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in1r_rpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 183, i8 6, i8 6, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@resistor_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200], [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10 kOhm\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"20 kOhm\00", [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"40 kOhm\00", [24 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN2_R R+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in2r_rpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 183, i8 4, i8 4, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN3_R R+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in3r_rpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 183, i8 2, i8 2, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN2_L R+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in2l_rpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 183, i8 0, i8 0, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CM_R R- Switch\00", [17 x i8] zeroinitializer }, align 32
@cmr_rpga_n_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 185, i8 6, i8 6, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN1_L R- Switch\00", [16 x i8] zeroinitializer }, align 32
@in1l_rpga_n_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 185, i8 4, i8 4, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN3_L R- Switch\00", [16 x i8] zeroinitializer }, align 32
@in3l_rpga_n_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 185, i8 2, i8 2, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN1_L L+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in1l_lpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 180, i8 6, i8 6, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN2_L L+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in2l_lpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 180, i8 4, i8 4, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN3_L L+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in3l_lpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 180, i8 2, i8 2, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN1_R L+ Switch\00", [16 x i8] zeroinitializer }, align 32
@in1r_lpga_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 180, i8 0, i8 0, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CM_L L- Switch\00", [17 x i8] zeroinitializer }, align 32
@cml_lpga_n_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 182, i8 6, i8 6, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN2_R L- Switch\00", [16 x i8] zeroinitializer }, align 32
@in2r_lpga_n_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 182, i8 4, i8 4, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IN3_R L- Switch\00", [16 x i8] zeroinitializer }, align 32
@in3r_lpga_n_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 182, i8 2, i8 2, i32 4, i32 3, ptr @resistor_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic_bias_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Mic Bias will be turned ON\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mic_bias_event\00", [17 x i8] zeroinitializer }, align 32
@mic_bias_event._entry_ptr = internal global ptr @mic_bias_event._entry, section ".printk_index", align 4
@mic_bias_event._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.215, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Mic Bias will be turned OFF\0A\00", [61 x i8] zeroinitializer }, align 32
@mic_bias_event._entry_ptr.218 = internal global ptr @mic_bias_event._entry.216, section ".printk_index", align 4
@aic32x4_component_probe.clocks = internal global { [4 x %struct.clk_bulk_data], [32 x i8] } { [4 x %struct.clk_bulk_data] [%struct.clk_bulk_data { ptr @.str.65, ptr null }, %struct.clk_bulk_data { ptr @.str.66, ptr null }, %struct.clk_bulk_data { ptr @.str.67, ptr null }, %struct.clk_bulk_data { ptr @.str.68, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320aic32x4-hifi\00", [45 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@switch.table.aic32x4_hw_params = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 32, i32 0, i32 48], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.221 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.222 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.223 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.224 = private unnamed_addr constant [21 x i8] c"aic32x4_regmap_pages\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 577, i32 38 }
@___asan_gen_.227 = private unnamed_addr constant [22 x i8] c"aic32x4_regmap_config\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 588, i32 28 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1355, i32 24 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1359, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1372, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1379, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [34 x i8] c"soc_component_dev_aic32x4_tas2505\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1190, i32 46 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c"aic32x4_tas2505_dai\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1129, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant [26 x i8] c"soc_component_dev_aic32x4\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1068, i32 46 }
@___asan_gen_.269 = private unnamed_addr constant [12 x i8] c"aic32x4_dai\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 927, i32 34 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1408, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1217, i32 37 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1224, i32 45 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1226, i32 37 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1251, i32 57 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1252, i32 48 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1253, i32 56 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1254, i32 56 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1259, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1268, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1272, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1284, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1291, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1299, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1307, i32 4 }
@___asan_gen_.344 = private unnamed_addr constant [29 x i8] c"aic32x4_tas2505_snd_controls\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1084, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant [28 x i8] c"aic32x4_tas2505_dapm_routes\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1118, i32 40 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1085, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [8 x i8] c"tlv_pcm\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 248, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1087, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [11 x i8] c"l_ptm_enum\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 267, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1089, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c"tlv_tas_driver_gain\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 254, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1091, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1093, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1095, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [12 x i8] c"tlv_amp_vol\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 255, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1098, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [9 x i8] c"ptm_text\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 263, i32 27 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 264, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 264, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 264, i32 14 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1106, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1107, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [25 x i8] c"hp_output_mixer_controls\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1101, i32 38 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1110, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1112, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1114, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1115, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [29 x i8] c"aic32x4_tas2505_dapm_widgets\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1105, i32 41 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1102, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1147, i32 30 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1148, i32 11 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1149, i32 11 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1150, i32 11 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1151, i32 11 }
@___asan_gen_.447 = private unnamed_addr constant [13 x i8] c"aic32x4_mfp1\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 224, i32 38 }
@___asan_gen_.450 = private unnamed_addr constant [13 x i8] c"aic32x4_mfp2\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 228, i32 38 }
@___asan_gen_.453 = private unnamed_addr constant [13 x i8] c"aic32x4_mfp3\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 232, i32 38 }
@___asan_gen_.456 = private unnamed_addr constant [13 x i8] c"aic32x4_mfp4\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 236, i32 38 }
@___asan_gen_.459 = private unnamed_addr constant [13 x i8] c"aic32x4_mfp5\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 240, i32 38 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 225, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 229, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 125, i32 3 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 233, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 237, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 166, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 241, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 206, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 881, i32 30 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 882, i32 11 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 895, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 1130, i32 10 }
@___asan_gen_.522 = private unnamed_addr constant [12 x i8] c"aic32x4_ops\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 919, i32 37 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 626, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 653, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 717, i32 30 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 719, i32 11 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 721, i32 11 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 757, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 813, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [21 x i8] c"aic32x4_snd_controls\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 270, i32 38 }
@___asan_gen_.567 = private unnamed_addr constant [20 x i8] c"aic32x4_dapm_routes\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 479, i32 40 }
@___asan_gen_.570 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 273, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 274, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [11 x i8] c"r_ptm_enum\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 268, i32 8 }
@___asan_gen_.580 = private unnamed_addr constant [16 x i8] c"tlv_driver_gain\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 250, i32 8 }
@___asan_gen_.583 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 278, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 283, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 285, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [11 x i8] c"lo_cm_enum\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 261, i32 8 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 286, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 289, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 290, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 292, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [12 x i8] c"tlv_adc_vol\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 252, i32 8 }
@___asan_gen_.617 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 294, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [13 x i8] c"tlv_step_0_5\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 246, i32 8 }
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.625 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 299, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 300, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 301, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 303, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 305, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 307, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 309, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 311, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 313, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 315, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 317, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.670 = private unnamed_addr constant [11 x i8] c"lo_cm_text\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 257, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 258, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 258, i32 15 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 407, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 408, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant [26 x i8] c"hpl_output_mixer_controls\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 321, i32 38 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 411, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 413, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [26 x i8] c"lol_output_mixer_controls\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 331, i32 38 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 416, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 418, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 419, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [26 x i8] c"hpr_output_mixer_controls\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 326, i32 38 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 422, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 423, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [26 x i8] c"lor_output_mixer_controls\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 335, i32 38 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 426, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 428, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 429, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [24 x i8] c"in1r_to_rmixer_controls\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 384, i32 38 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 431, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [24 x i8] c"in2r_to_rmixer_controls\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 387, i32 38 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 433, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [24 x i8] c"in3r_to_rmixer_controls\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 390, i32 38 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 435, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [24 x i8] c"in2l_to_rmixer_controls\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 393, i32 38 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 437, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [23 x i8] c"cmr_to_rmixer_controls\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 396, i32 38 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 439, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [24 x i8] c"in1l_to_rmixer_controls\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 399, i32 38 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 441, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [24 x i8] c"in3l_to_rmixer_controls\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 402, i32 38 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 444, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 445, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [24 x i8] c"in1l_to_lmixer_controls\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 353, i32 38 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 447, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant [24 x i8] c"in2l_to_lmixer_controls\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 356, i32 38 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 449, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant [24 x i8] c"in3l_to_lmixer_controls\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 359, i32 38 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 451, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant [24 x i8] c"in1r_to_lmixer_controls\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 362, i32 38 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 453, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [23 x i8] c"cml_to_lmixer_controls\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 365, i32 38 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 455, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant [24 x i8] c"in2r_to_lmixer_controls\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 368, i32 38 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 457, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [24 x i8] c"in3r_to_lmixer_controls\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 371, i32 38 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 460, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 463, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 465, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 466, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 467, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 468, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 469, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 470, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 471, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 472, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 473, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 474, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 475, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 476, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [21 x i8] c"aic32x4_dapm_widgets\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 406, i32 41 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 322, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 323, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.876 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 327, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 328, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.885 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 385, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant [17 x i8] c"in1r_rpga_p_enum\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 376, i32 8 }
@___asan_gen_.892 = private unnamed_addr constant [14 x i8] c"resistor_text\00", align 1
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 339, i32 27 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 340, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 340, i32 9 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 340, i32 20 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 340, i32 31 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 388, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant [17 x i8] c"in2r_rpga_p_enum\00", align 1
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 377, i32 8 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 391, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant [17 x i8] c"in3r_rpga_p_enum\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 378, i32 8 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 394, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant [17 x i8] c"in2l_rpga_p_enum\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 379, i32 8 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 397, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant [16 x i8] c"cmr_rpga_n_enum\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 380, i32 8 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 400, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant [17 x i8] c"in1l_rpga_n_enum\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 381, i32 8 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 403, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant [17 x i8] c"in3l_rpga_n_enum\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 382, i32 8 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 354, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant [17 x i8] c"in1l_lpga_p_enum\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 344, i32 8 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 357, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant [17 x i8] c"in2l_lpga_p_enum\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 345, i32 8 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 360, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant [17 x i8] c"in3l_lpga_p_enum\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 346, i32 8 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 363, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant [17 x i8] c"in1r_lpga_p_enum\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 347, i32 8 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 366, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant [16 x i8] c"cml_lpga_n_enum\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 349, i32 8 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 369, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant [17 x i8] c"in2r_lpga_n_enum\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 350, i32 8 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 372, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant [17 x i8] c"in3r_lpga_n_enum\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 351, i32 8 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 88, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 93, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 997, i32 30 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 928, i32 10 }
@___asan_gen_.1006 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1007 = private constant [36 x i8] c"../sound/soc/codecs/tlv320aic32x4.c\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1007, i32 936, i32 19 }
@___asan_gen_.1009 = private unnamed_addr constant [31 x i8] c"switch.table.aic32x4_hw_params\00", align 1
@llvm.compiler.used = appending global [313 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_aic32x4_probe, ptr @__ksymtab_aic32x4_regmap_config, ptr @__ksymtab_aic32x4_remove, ptr @aic32x4_probe._entry, ptr @aic32x4_probe._entry.10, ptr @aic32x4_probe._entry.7, ptr @aic32x4_probe._entry_ptr, ptr @aic32x4_probe._entry_ptr.12, ptr @aic32x4_probe._entry_ptr.9, ptr @aic32x4_set_bias_level._entry, ptr @aic32x4_set_bias_level._entry_ptr, ptr @aic32x4_set_dai_fmt._entry, ptr @aic32x4_set_dai_fmt._entry.86, ptr @aic32x4_set_dai_fmt._entry_ptr, ptr @aic32x4_set_dai_fmt._entry_ptr.88, ptr @aic32x4_set_mfp2_gpio._entry, ptr @aic32x4_set_mfp2_gpio._entry_ptr, ptr @aic32x4_set_mfp4_gpio._entry, ptr @aic32x4_set_mfp4_gpio._entry_ptr, ptr @aic32x4_set_mfp5_gpio._entry, ptr @aic32x4_set_mfp5_gpio._entry_ptr, ptr @aic32x4_setup_clocks._entry, ptr @aic32x4_setup_clocks._entry.93, ptr @aic32x4_setup_clocks._entry_ptr, ptr @aic32x4_setup_clocks._entry_ptr.95, ptr @aic32x4_setup_regulators._entry, ptr @aic32x4_setup_regulators._entry.22, ptr @aic32x4_setup_regulators._entry.25, ptr @aic32x4_setup_regulators._entry.28, ptr @aic32x4_setup_regulators._entry.31, ptr @aic32x4_setup_regulators._entry.34, ptr @aic32x4_setup_regulators._entry.37, ptr @aic32x4_setup_regulators._entry_ptr, ptr @aic32x4_setup_regulators._entry_ptr.24, ptr @aic32x4_setup_regulators._entry_ptr.27, ptr @aic32x4_setup_regulators._entry_ptr.30, ptr @aic32x4_setup_regulators._entry_ptr.33, ptr @aic32x4_setup_regulators._entry_ptr.36, ptr @aic32x4_setup_regulators._entry_ptr.39, ptr @mic_bias_event._entry, ptr @mic_bias_event._entry.216, ptr @mic_bias_event._entry_ptr, ptr @mic_bias_event._entry_ptr.218, ptr @aic32x4_regmap_pages, ptr @aic32x4_regmap_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @soc_component_dev_aic32x4_tas2505, ptr @aic32x4_tas2505_dai, ptr @soc_component_dev_aic32x4, ptr @aic32x4_dai, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @aic32x4_tas2505_snd_controls, ptr @aic32x4_tas2505_dapm_routes, ptr @.str.40, ptr @tlv_pcm, ptr @.compoundliteral, ptr @.str.41, ptr @l_ptm_enum, ptr @.str.42, ptr @tlv_tas_driver_gain, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @tlv_amp_vol, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @ptm_text, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @hp_output_mixer_controls, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @aic32x4_tas2505_dapm_widgets, ptr @.str.63, ptr @.compoundliteral.64, ptr @aic32x4_tas2505_component_probe.clocks, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @aic32x4_mfp1, ptr @aic32x4_mfp2, ptr @aic32x4_mfp3, ptr @aic32x4_mfp4, ptr @aic32x4_mfp5, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @aic32x4_set_bias_level.clocks, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @aic32x4_ops, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @aic32x4_setup_clocks.clocks, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @aic32x4_snd_controls, ptr @aic32x4_dapm_routes, ptr @.compoundliteral.96, ptr @.str.97, ptr @.str.98, ptr @r_ptm_enum, ptr @tlv_driver_gain, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @lo_cm_enum, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @tlv_adc_vol, ptr @.compoundliteral.113, ptr @.str.114, ptr @tlv_step_0_5, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @lo_cm_text, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @hpl_output_mixer_controls, ptr @.str.144, ptr @.str.145, ptr @lol_output_mixer_controls, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @hpr_output_mixer_controls, ptr @.str.150, ptr @.str.151, ptr @lor_output_mixer_controls, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @in1r_to_rmixer_controls, ptr @.str.156, ptr @in2r_to_rmixer_controls, ptr @.str.157, ptr @in3r_to_rmixer_controls, ptr @.str.158, ptr @in2l_to_rmixer_controls, ptr @.str.159, ptr @cmr_to_rmixer_controls, ptr @.str.160, ptr @in1l_to_rmixer_controls, ptr @.str.161, ptr @in3l_to_rmixer_controls, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @in1l_to_lmixer_controls, ptr @.str.165, ptr @in2l_to_lmixer_controls, ptr @.str.166, ptr @in3l_to_lmixer_controls, ptr @.str.167, ptr @in1r_to_lmixer_controls, ptr @.str.168, ptr @cml_to_lmixer_controls, ptr @.str.169, ptr @in2r_to_lmixer_controls, ptr @.str.170, ptr @in3r_to_lmixer_controls, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @aic32x4_dapm_widgets, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.compoundliteral.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @in1r_rpga_p_enum, ptr @resistor_text, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @in2r_rpga_p_enum, ptr @.str.202, ptr @in3r_rpga_p_enum, ptr @.str.203, ptr @in2l_rpga_p_enum, ptr @.str.204, ptr @cmr_rpga_n_enum, ptr @.str.205, ptr @in1l_rpga_n_enum, ptr @.str.206, ptr @in3l_rpga_n_enum, ptr @.str.207, ptr @in1l_lpga_p_enum, ptr @.str.208, ptr @in2l_lpga_p_enum, ptr @.str.209, ptr @in3l_lpga_p_enum, ptr @.str.210, ptr @in1r_lpga_p_enum, ptr @.str.211, ptr @cml_lpga_n_enum, ptr @.str.212, ptr @in2r_lpga_n_enum, ptr @.str.213, ptr @in3r_lpga_n_enum, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @aic32x4_component_probe.clocks, ptr @.str.219, ptr @.str.220, ptr @switch.table.aic32x4_hw_params], section "llvm.metadata"
@0 = internal global [286 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_regmap_pages to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_aic32x4_tas2505 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_tas2505_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_aic32x4 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_regulators._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_regulators._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_regulators._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_regulators._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_regulators._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_regulators._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_tas2505_snd_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_tas2505_dapm_routes to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_pcm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l_ptm_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_tas_driver_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_amp_vol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptm_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_output_mixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_tas2505_dapm_widgets to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_tas2505_component_probe.clocks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_mfp1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_mfp2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_mfp3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_mfp4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_mfp5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_set_mfp2_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_set_mfp4_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_set_mfp5_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_set_bias_level.clocks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_set_dai_fmt._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_clocks.clocks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_setup_clocks._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_snd_controls to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_dapm_routes to i32), i32 3640, i32 4544, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_ptm_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_driver_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_cm_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_adc_vol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv_step_0_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_cm_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpl_output_mixer_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lol_output_mixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpr_output_mixer_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lor_output_mixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1r_to_rmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2r_to_rmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3r_to_rmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2l_to_rmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmr_to_rmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_to_rmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3l_to_rmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_to_lmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2l_to_lmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3l_to_lmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1r_to_lmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cml_to_lmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2r_to_lmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3r_to_lmixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_dapm_widgets to i32), i32 7200, i32 8992, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1r_rpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resistor_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2r_rpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3r_rpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2l_rpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmr_rpga_n_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_rpga_n_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3l_rpga_n_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_lpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2l_lpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3l_lpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1r_lpga_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cml_lpga_n_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in2r_lpga_n_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3r_lpga_n_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_bias_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_bias_event._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic32x4_component_probe.clocks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aic32x4_hw_params to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aic32x4_probe(ptr noundef %dev, ptr noundef %regmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev5, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %type = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 12
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type, align 4
  store ptr %call.i, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %power_cfg = getelementptr inbounds %struct.aic32x4_pdata, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_cfg, align 4
  %power_cfg8 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %power_cfg8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %power_cfg8, align 4
  %swapdacs = getelementptr inbounds %struct.aic32x4_pdata, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %swapdacs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %swapdacs, align 4, !range !505
  %swapdacs10 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %swapdacs10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %swapdacs10, align 4
  %micpga_routing = getelementptr inbounds %struct.aic32x4_pdata, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %micpga_routing to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %micpga_routing, align 4
  %micpga_routing11 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %micpga_routing11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %micpga_routing11, align 4
  %rstn_gpio = getelementptr inbounds %struct.aic32x4_pdata, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %rstn_gpio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rstn_gpio, align 4
  %rstn_gpio12 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %rstn_gpio12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rstn_gpio12, align 4
  %mclk_name = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %mclk_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str, ptr %mclk_name, align 4
  br label %if.end26

if.else:                                          ; preds = %if.end4
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %if.else19, label %if.then14

if.then14:                                        ; preds = %if.else
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then14.do.end_crit_edge, label %if.end.i

if.then14.do.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %if.then14
  %call1.i = tail call i32 @of_property_match_string(ptr noundef nonnull %3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i122 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i122, label %if.end.i.do.end_crit_edge, label %if.end3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @of_clk_get_parent_name(ptr noundef nonnull %3, i32 noundef %call1.i) #4
  %mclk_name.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %mclk_name.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call4.i, ptr %mclk_name.i, align 4
  %swapdacs.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %swapdacs.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %swapdacs.i, align 4
  %micpga_routing.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %micpga_routing.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %micpga_routing.i, align 4
  %call.i22.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef null) #4
  %rstn_gpio.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %rstn_gpio.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i22.i, ptr %rstn_gpio.i, align 4
  %call.i23.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i.i, i32 noundef 5, i32 noundef 0) #4
  %27 = tail call i32 @llvm.smin.i32(i32 %call.i23.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp7.i = icmp sgt i32 %27, -1
  br i1 %cmp7.i, label %if.then8.i, label %if.end3.i.if.end26_crit_edge

if.end3.i.if.end26_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %setup.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 10
  %28 = ptrtoint ptr %setup.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i, ptr %setup.i, align 4
  br label %if.end26

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.then14.do.end_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then14.do.end_crit_edge ], [ -22, %if.end.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.else19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %power_cfg20 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %power_cfg20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %power_cfg20, align 4
  %swapdacs21 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %swapdacs21 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %swapdacs21, align 4
  %micpga_routing22 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %micpga_routing22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %micpga_routing22, align 4
  %rstn_gpio23 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 4
  %32 = ptrtoint ptr %rstn_gpio23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %rstn_gpio23, align 4
  %mclk_name24 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %mclk_name24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str, ptr %mclk_name24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else19, %if.then8.i, %if.end3.i.if.end26_crit_edge, %if.then7
  %rstn_gpio27 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %rstn_gpio27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rstn_gpio27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %35)
  %36 = icmp ult i32 %35, 2048
  br i1 %36, label %if.then29, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  %call31 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %35, i32 noundef 0, ptr noundef nonnull @.str.6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 0
  br i1 %cmp32.not, label %if.then29.if.end35_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.end26.if.end35_crit_edge
  %call.i123 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.16) #4
  %supply_ldo.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %supply_ldo.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i123, ptr %supply_ldo.i, align 4
  %call1.i124 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #4
  %supply_iov.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 7
  %38 = ptrtoint ptr %supply_iov.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i124, ptr %supply_iov.i, align 4
  %call2.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.18) #4
  %supply_dv.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 8
  %39 = ptrtoint ptr %supply_dv.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call2.i, ptr %supply_dv.i, align 4
  %call3.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.19) #4
  %supply_av.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 9
  %40 = ptrtoint ptr %supply_av.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call3.i, ptr %supply_av.i, align 4
  %41 = ptrtoint ptr %supply_iov.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %supply_iov.i, align 4
  %cmp.i.i = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end35.aic32x4_setup_regulators.exit_crit_edge, label %if.end.i125

if.end35.aic32x4_setup_regulators.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %aic32x4_setup_regulators.exit

if.end.i125:                                      ; preds = %if.end35
  %43 = ptrtoint ptr %supply_ldo.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %supply_ldo.i, align 4
  %cmp.i150.i = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.end.i125
  %cmp.i126 = icmp eq ptr %44, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i126, label %if.then10.i.do.end41_crit_edge, label %if.end14.i

if.then10.i.do.end41_crit_edge:                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41

if.end14.i:                                       ; preds = %if.then10.i
  %45 = ptrtoint ptr %supply_dv.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %supply_dv.i, align 4
  %cmp.i151.i = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151.i, label %if.end14.i.aic32x4_setup_regulators.exit_crit_edge, label %if.end23.i

if.end14.i.aic32x4_setup_regulators.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %aic32x4_setup_regulators.exit

if.end23.i:                                       ; preds = %if.end14.i
  %cmp.i152.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152.i, label %if.end23.i.aic32x4_setup_regulators.exit_crit_edge, label %if.end23.i.if.end43.i_crit_edge

if.end23.i.if.end43.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i

if.end23.i.aic32x4_setup_regulators.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %aic32x4_setup_regulators.exit

if.else.i:                                        ; preds = %if.end.i125
  %47 = ptrtoint ptr %supply_dv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %supply_dv.i, align 4
  %cmp35.i = icmp eq ptr %48, inttoptr (i32 -517 to ptr)
  %cmp40.i = icmp eq ptr %call3.i, inttoptr (i32 -517 to ptr)
  %or.cond.i = select i1 %cmp35.i, i1 true, i1 %cmp40.i
  br i1 %or.cond.i, label %if.else.i.do.end41_crit_edge, label %if.else.i.if.end43.i_crit_edge

if.else.i.if.end43.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43.i

if.else.i.do.end41_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41

if.end43.i:                                       ; preds = %if.else.i.if.end43.i_crit_edge, %if.end23.i.if.end43.i_crit_edge
  %call45.i = tail call i32 @regulator_enable(ptr noundef %42) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool.not.i127 = icmp eq i32 %call45.i, 0
  br i1 %tobool.not.i127, label %if.end50.i, label %do.end49.i

do.end49.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #7
  br label %do.end41

if.end50.i:                                       ; preds = %if.end43.i
  %49 = ptrtoint ptr %supply_ldo.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %supply_ldo.i, align 4
  %cmp.i153.i = icmp ugt ptr %50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153.i, label %if.end50.i.if.end62.i_crit_edge, label %if.then53.i

if.end50.i.if.end62.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62.i

if.then53.i:                                      ; preds = %if.end50.i
  %call55.i = tail call i32 @regulator_enable(ptr noundef %50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.then53.i.if.end62.i_crit_edge, label %do.end60.i

if.then53.i.if.end62.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end62.i

do.end60.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #7
  br label %error_ldo.i

if.end62.i:                                       ; preds = %if.then53.i.if.end62.i_crit_edge, %if.end50.i.if.end62.i_crit_edge
  %51 = ptrtoint ptr %supply_dv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %supply_dv.i, align 4
  %cmp.i154.i = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154.i, label %if.end62.i.if.end74.i_crit_edge, label %if.then65.i

if.end62.i.if.end74.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74.i

if.then65.i:                                      ; preds = %if.end62.i
  %call67.i = tail call i32 @regulator_enable(ptr noundef %52) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.then65.i.if.end74.i_crit_edge, label %do.end72.i

if.then65.i.if.end74.i_crit_edge:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74.i

do.end72.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #7
  br label %error_dv.i

if.end74.i:                                       ; preds = %if.then65.i.if.end74.i_crit_edge, %if.end62.i.if.end74.i_crit_edge
  %53 = ptrtoint ptr %supply_av.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %supply_av.i, align 4
  %cmp.i155.i = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155.i, label %if.end74.i.if.end86.i_crit_edge, label %if.then77.i

if.end74.i.if.end86.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86.i

if.then77.i:                                      ; preds = %if.end74.i
  %call79.i = tail call i32 @regulator_enable(ptr noundef %54) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.then77.i.if.end86.i_crit_edge, label %do.end84.i

if.then77.i.if.end86.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86.i

do.end84.i:                                       ; preds = %if.then77.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #7
  %55 = ptrtoint ptr %supply_dv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %supply_dv.i, align 4
  %cmp.i156.i = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156.i, label %do.end84.i.error_dv.i_crit_edge, label %if.then95.i

do.end84.i.error_dv.i_crit_edge:                  ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_dv.i

if.end86.i:                                       ; preds = %if.then77.i.if.end86.i_crit_edge, %if.end74.i.if.end86.i_crit_edge
  %57 = ptrtoint ptr %supply_ldo.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %supply_ldo.i, align 4
  %cmp.i157.i = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157.i, label %if.end86.i.if.end42_crit_edge, label %land.lhs.true.i

if.end86.i.if.end42_crit_edge:                    ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

land.lhs.true.i:                                  ; preds = %if.end86.i
  %59 = ptrtoint ptr %supply_av.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %supply_av.i, align 4
  %cmp.i158.i = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.i, label %if.then91.i, label %land.lhs.true.i.if.end42_crit_edge

land.lhs.true.i.if.end42_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

if.then91.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %power_cfg.i = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %power_cfg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %power_cfg.i, align 4
  %or.i = or i32 %62, 4
  store i32 %or.i, ptr %power_cfg.i, align 4
  br label %if.end42

if.then95.i:                                      ; preds = %do.end84.i
  call void @__sanitizer_cov_trace_pc() #6
  %call97.i = tail call i32 @regulator_disable(ptr noundef %56) #4
  br label %error_dv.i

error_dv.i:                                       ; preds = %if.then95.i, %do.end84.i.error_dv.i_crit_edge, %do.end72.i
  %ret.0.i = phi i32 [ %call79.i, %do.end84.i.error_dv.i_crit_edge ], [ %call79.i, %if.then95.i ], [ %call67.i, %do.end72.i ]
  %63 = ptrtoint ptr %supply_ldo.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %supply_ldo.i, align 4
  %cmp.i159.i = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159.i, label %error_dv.i.error_ldo.i_crit_edge, label %if.then101.i

error_dv.i.error_ldo.i_crit_edge:                 ; preds = %error_dv.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error_ldo.i

if.then101.i:                                     ; preds = %error_dv.i
  call void @__sanitizer_cov_trace_pc() #6
  %call103.i = tail call i32 @regulator_disable(ptr noundef %64) #4
  br label %error_ldo.i

error_ldo.i:                                      ; preds = %if.then101.i, %error_dv.i.error_ldo.i_crit_edge, %do.end60.i
  %ret.1.i = phi i32 [ %ret.0.i, %error_dv.i.error_ldo.i_crit_edge ], [ %ret.0.i, %if.then101.i ], [ %call55.i, %do.end60.i ]
  %65 = ptrtoint ptr %supply_iov.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %supply_iov.i, align 4
  %call106.i = tail call i32 @regulator_disable(ptr noundef %66) #4
  br label %do.end41

aic32x4_setup_regulators.exit:                    ; preds = %if.end23.i.aic32x4_setup_regulators.exit_crit_edge, %if.end14.i.aic32x4_setup_regulators.exit_crit_edge, %if.end35.aic32x4_setup_regulators.exit_crit_edge
  %.str.20.sink = phi ptr [ @.str.20, %if.end35.aic32x4_setup_regulators.exit_crit_edge ], [ @.str.23, %if.end14.i.aic32x4_setup_regulators.exit_crit_edge ], [ @.str.26, %if.end23.i.aic32x4_setup_regulators.exit_crit_edge ]
  %retval.0.i128.in.in = phi ptr [ %supply_iov.i, %if.end35.aic32x4_setup_regulators.exit_crit_edge ], [ %supply_dv.i, %if.end14.i.aic32x4_setup_regulators.exit_crit_edge ], [ %supply_av.i, %if.end23.i.aic32x4_setup_regulators.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.20.sink) #7
  %67 = ptrtoint ptr %retval.0.i128.in.in to i32
  call void @__asan_load4_noabort(i32 %67)
  %retval.0.i128.in = load ptr, ptr %retval.0.i128.in.in, align 4
  %retval.0.i128 = ptrtoint ptr %retval.0.i128.in to i32
  %tobool37.not = icmp eq ptr %retval.0.i128.in, null
  br i1 %tobool37.not, label %aic32x4_setup_regulators.exit.if.end42_crit_edge, label %aic32x4_setup_regulators.exit.do.end41_crit_edge

aic32x4_setup_regulators.exit.do.end41_crit_edge: ; preds = %aic32x4_setup_regulators.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end41

aic32x4_setup_regulators.exit.if.end42_crit_edge: ; preds = %aic32x4_setup_regulators.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42

do.end41:                                         ; preds = %aic32x4_setup_regulators.exit.do.end41_crit_edge, %error_ldo.i, %do.end49.i, %if.else.i.do.end41_crit_edge, %if.then10.i.do.end41_crit_edge
  %retval.0.i128143 = phi i32 [ %retval.0.i128, %aic32x4_setup_regulators.exit.do.end41_crit_edge ], [ -517, %if.else.i.do.end41_crit_edge ], [ -517, %if.then10.i.do.end41_crit_edge ], [ %ret.1.i, %error_ldo.i ], [ %call45.i, %do.end49.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end42:                                         ; preds = %aic32x4_setup_regulators.exit.if.end42_crit_edge, %if.then91.i, %land.lhs.true.i.if.end42_crit_edge, %if.end86.i.if.end42_crit_edge
  %68 = ptrtoint ptr %rstn_gpio27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rstn_gpio27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %69)
  %70 = icmp ult i32 %69, 2048
  br i1 %70, label %if.then45, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748) #4
  %72 = ptrtoint ptr %rstn_gpio27 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rstn_gpio27, align 4
  %call.i129 = tail call ptr @gpio_to_desc(i32 noundef %73) #4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i129, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %call48 = tail call i32 @regmap_write(ptr noundef %regmap, i32 noundef 1, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.err_disable_regulators_crit_edge

if.end47.err_disable_regulators_crit_edge:        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_disable_regulators

if.end51:                                         ; preds = %if.end47
  %mclk_name52 = getelementptr inbounds %struct.aic32x4_priv, ptr %call.i, i32 0, i32 5
  %75 = ptrtoint ptr %mclk_name52 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mclk_name52, align 4
  %call53 = tail call i32 @aic32x4_register_clocks(ptr noundef %dev, ptr noundef %76) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.err_disable_regulators_crit_edge

if.end51.err_disable_regulators_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_disable_regulators

if.end56:                                         ; preds = %if.end51
  %77 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %78)
  %cond = icmp eq i32 %78, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %call58 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_aic32x4_tas2505, ptr noundef nonnull @aic32x4_tas2505_dai, i32 noundef 1) #4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  %call59 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_aic32x4, ptr noundef nonnull @aic32x4_dai, i32 noundef 1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %ret.0 = phi i32 [ %call58, %sw.bb ], [ %call59, %sw.default ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool60.not = icmp eq i32 %ret.0, 0
  br i1 %tobool60.not, label %sw.epilog.cleanup_crit_edge, label %do.end64

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end64:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  br label %err_disable_regulators

err_disable_regulators:                           ; preds = %do.end64, %if.end51.err_disable_regulators_crit_edge, %if.end47.err_disable_regulators_crit_edge
  %ret.1 = phi i32 [ %call48, %if.end47.err_disable_regulators_crit_edge ], [ %call53, %if.end51.err_disable_regulators_crit_edge ], [ %ret.0, %do.end64 ]
  %79 = ptrtoint ptr %supply_iov.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %supply_iov.i, align 4
  %call.i131 = tail call i32 @regulator_disable(ptr noundef %80) #4
  %81 = ptrtoint ptr %supply_ldo.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %supply_ldo.i, align 4
  %cmp.i.i133 = icmp ugt ptr %82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i133, label %err_disable_regulators.if.end.i136_crit_edge, label %if.then.i

err_disable_regulators.if.end.i136_crit_edge:     ; preds = %err_disable_regulators
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i136

if.then.i:                                        ; preds = %err_disable_regulators
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i134 = tail call i32 @regulator_disable(ptr noundef %82) #4
  br label %if.end.i136

if.end.i136:                                      ; preds = %if.then.i, %err_disable_regulators.if.end.i136_crit_edge
  %83 = ptrtoint ptr %supply_dv.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %supply_dv.i, align 4
  %cmp.i20.i = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.end.i136.if.end8.i_crit_edge, label %if.then5.i

if.end.i136.if.end8.i_crit_edge:                  ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 @regulator_disable(ptr noundef %84) #4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i136.if.end8.i_crit_edge
  %85 = ptrtoint ptr %supply_av.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %supply_av.i, align 4
  %cmp.i21.i = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21.i, label %if.end8.i.cleanup_crit_edge, label %if.then10.i138

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10.i138:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i = tail call i32 @regulator_disable(ptr noundef %86) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10.i138, %if.end8.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end41, %if.then29.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i128143, %do.end41 ], [ %retval.0.i, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call31, %if.then29.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %ret.1, %if.end8.i.cleanup_crit_edge ], [ %ret.1, %if.then10.i138 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aic32x4_register_clocks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aic32x4_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supply_iov.i = getelementptr inbounds %struct.aic32x4_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %supply_iov.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply_iov.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %3) #4
  %supply_ldo.i = getelementptr inbounds %struct.aic32x4_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %supply_ldo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply_ldo.i, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = tail call i32 @regulator_disable(ptr noundef %5) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %supply_dv.i = getelementptr inbounds %struct.aic32x4_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %supply_dv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supply_dv.i, align 4
  %cmp.i20.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 @regulator_disable(ptr noundef %7) #4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %supply_av.i = getelementptr inbounds %struct.aic32x4_priv, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %supply_av.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supply_av.i, align 4
  %cmp.i21.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i21.i, label %if.end8.i.aic32x4_disable_regulators.exit_crit_edge, label %if.then10.i

if.end8.i.aic32x4_disable_regulators.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %aic32x4_disable_regulators.exit

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i = tail call i32 @regulator_disable(ptr noundef %9) #4
  br label %aic32x4_disable_regulators.exit

aic32x4_disable_regulators.exit:                  ; preds = %if.then10.i, %if.end8.i.aic32x4_disable_regulators.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_tas2505_component_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @devm_clk_bulk_get(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @aic32x4_tas2505_component_probe.clocks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %setup = getelementptr inbounds %struct.aic32x4_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @aic32x4_setup_gpios(ptr noundef %component)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_tas2505_component_probe.clocks, i32 0, i32 0, i32 1), align 4
  %7 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_tas2505_component_probe.clocks, i32 0, i32 1, i32 1), align 4
  %call5 = tail call i32 @clk_set_parent(ptr noundef %6, ptr noundef %7) #4
  %8 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_tas2505_component_probe.clocks, i32 0, i32 2, i32 1), align 4
  %9 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_tas2505_component_probe.clocks, i32 0, i32 3, i32 1), align 4
  %call6 = tail call i32 @clk_set_parent(ptr noundef %8, ptr noundef %9) #4
  %power_cfg = getelementptr inbounds %struct.aic32x4_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_cfg, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 129, i32 noundef 8) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %12 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_cfg, align 4
  %and12 = lshr i32 %13, 2
  %and12.lobit = and i32 %and12, 1
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 130, i32 noundef %and12.lobit) #4
  %call15 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #4
  %14 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_cfg, align 4
  %and17 = lshr i32 %15, 3
  %16 = and i32 %and17, 1
  %17 = or i32 %16, %call15
  %18 = and i32 %and17, 2
  %19 = or i32 %17, %18
  %call27 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 138, i32 noundef %19) #4
  %call28 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 250, i32 noundef 5) #4
  tail call void @msleep(i32 noundef 40) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call i32 @devm_clk_bulk_get(ptr noundef %1, i32 noundef 3, ptr noundef nonnull @aic32x4_set_bias_level.clocks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 3, ptr noundef nonnull @aic32x4_set_bias_level.clocks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %sw.bb
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 3, ptr noundef nonnull @aic32x4_set_bias_level.clocks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef nonnull @aic32x4_set_bias_level.clocks) #4
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %sw.bb.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %sw.bb.do.end_crit_edge ]
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.81) #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %sw.bb6.cleanup_crit_edge, label %if.end9

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_disable(i32 noundef 3, ptr noundef nonnull @aic32x4_set_bias_level.clocks) #4
  tail call void @clk_bulk_unprepare(i32 noundef 3, ptr noundef nonnull @aic32x4_set_bias_level.clocks) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.bb6.cleanup_crit_edge, %do.end, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %sw.bb6.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end9 ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aic32x4_setup_gpios(ptr noundef %component) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %setup = getelementptr inbounds %struct.aic32x4_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp.not = icmp eq i32 %7, 255
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 54, i32 noundef %7) #4
  %call5 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic32x4_mfp1, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %setup, align 4
  %arrayidx8 = getelementptr [5 x i32], ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %11)
  %cmp9.not = icmp eq i32 %11, 255
  br i1 %cmp9.not, label %if.end.if.end16_crit_edge, label %if.then10

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 53, i32 noundef %11) #4
  %call15 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic32x4_mfp2, i32 noundef 1) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then10, %if.end.if.end16_crit_edge
  %12 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %setup, align 4
  %arrayidx19 = getelementptr [5 x i32], ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %15)
  %cmp20.not = icmp eq i32 %15, 255
  br i1 %cmp20.not, label %if.end16.if.end27_crit_edge, label %if.then21

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 56, i32 noundef %15) #4
  %call26 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic32x4_mfp3, i32 noundef 1) #4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end16.if.end27_crit_edge
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %setup, align 4
  %arrayidx30 = getelementptr [5 x i32], ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %19)
  %cmp31.not = icmp eq i32 %19, 255
  br i1 %cmp31.not, label %if.end27.if.end38_crit_edge, label %if.then32

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 55, i32 noundef %19) #4
  %call37 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic32x4_mfp4, i32 noundef 1) #4
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end27.if.end38_crit_edge
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup, align 4
  %arrayidx41 = getelementptr [5 x i32], ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %23)
  %cmp42.not = icmp eq i32 %23, 255
  br i1 %cmp42.not, label %if.end38.if.end49_crit_edge, label %if.then43

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %call47 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 52, i32 noundef %23) #4
  %call48 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic32x4_mfp5, i32 noundef 1) #4
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end38.if.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_get_mfp1_gpio(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 54) #4
  %and = and i32 %call, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_set_mfp2_gpio(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 53) #4
  %conv2 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp.not.not = icmp eq i32 %conv2, 0
  br i1 %cmp.not.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %and7 = and i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and7)
  %cmp8 = icmp eq i32 %3, %and7
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or = or i32 %3, %call
  %conv21 = and i32 %call, 254
  %val.0 = select i1 %tobool.not, i32 %conv21, i32 %or
  %conv23 = and i32 %val.0, 255
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 53, i32 noundef %conv23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_get_mfp3_gpio(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 56) #4
  %and = and i32 %call, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_set_mfp4_gpio(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 55) #4
  %conv2 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp.not.not = icmp eq i32 %conv2, 0
  br i1 %cmp.not.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %and7 = and i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and7)
  %cmp8 = icmp eq i32 %3, %and7
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or = or i32 %3, %call
  %conv21 = and i32 %call, 254
  %val.0 = select i1 %tobool.not, i32 %conv21, i32 %or
  %conv23 = and i32 %val.0, 255
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 55, i32 noundef %conv23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_get_mfp5_gpio(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 52) #4
  %and = lshr i32 %call, 1
  %2 = and i32 %and, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_set_mfp5_gpio(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 52) #4
  %conv2 = and i32 %call, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %conv2)
  %cmp.not = icmp eq i32 %conv2, 12
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %and7 = and i32 %call, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and7)
  %cmp8 = icmp eq i32 %3, %and7
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or = or i32 %3, %call
  %conv21 = and i32 %call, 254
  %val.0 = select i1 %tobool.not, i32 %conv21, i32 %or
  %conv23 = and i32 %val.0, 255
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 52, i32 noundef %conv23) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.66) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call ptr @clk_get_parent(ptr noundef %call) #4
  %call5 = tail call i32 @clk_set_rate(ptr noundef %call4, i32 noundef %freq) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.221)
  switch i16 %trunc, label %do.end [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %iface_reg_1.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ 12, %sw.bb ]
  %and3 = and i32 %fmt, 15
  %4 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %and3, label %do.end29 [
    i32 1, label %sw.epilog.sw.epilog32_crit_edge
    i32 4, label %sw.bb4
    i32 5, label %sw.bb11
    i32 2, label %sw.bb18
    i32 3, label %sw.bb22
  ]

sw.epilog.sw.epilog32_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog32

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %5 = or i8 %iface_reg_1.0, 64
  br label %sw.epilog32

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %6 = or i8 %iface_reg_1.0, 64
  br label %sw.epilog32

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %7 = or i8 %iface_reg_1.0, -128
  br label %sw.epilog32

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %8 = or i8 %iface_reg_1.0, -64
  br label %sw.epilog32

do.end29:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #7
  br label %cleanup

sw.epilog32:                                      ; preds = %sw.bb22, %sw.bb18, %sw.bb11, %sw.bb4, %sw.epilog.sw.epilog32_crit_edge
  %iface_reg_1.1 = phi i8 [ %8, %sw.bb22 ], [ %7, %sw.bb18 ], [ %6, %sw.bb11 ], [ %5, %sw.bb4 ], [ %iface_reg_1.0, %sw.epilog.sw.epilog32_crit_edge ]
  %iface_reg_2.0 = phi i32 [ 0, %sw.bb22 ], [ 0, %sw.bb18 ], [ 0, %sw.bb11 ], [ 1, %sw.bb4 ], [ 0, %sw.epilog.sw.epilog32_crit_edge ]
  %iface_reg_3.0 = phi i32 [ 0, %sw.bb22 ], [ 0, %sw.bb18 ], [ 8, %sw.bb11 ], [ 8, %sw.bb4 ], [ 0, %sw.epilog.sw.epilog32_crit_edge ]
  %conv33 = zext i8 %iface_reg_1.1 to i32
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 204, i32 noundef %conv33) #4
  %call36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 255, i32 noundef %iface_reg_2.0) #4
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 29, i32 noundef 8, i32 noundef %iface_reg_3.0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog32, %do.end29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end29 ], [ 0, %sw.epilog32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %cond = select i1 %tobool.not, i32 0, i32 12
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 64, i32 noundef 12, i32 noundef %cond) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %arrayidx.i.i40 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i40, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %entry.if.then.i.i.i_crit_edge ], [ %14, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #4, !range !506
  %add.i.i.i = or i32 %12, %i.09.lcssa.i.i.i
  br label %params_physical_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_physical_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

for.inc.i.i.i.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i.params_physical_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_physical_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i) #4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i41 = tail call i32 @devm_clk_bulk_get(ptr noundef %16, i32 noundef 6, ptr noundef nonnull @aic32x4_setup_clocks.clocks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i, label %if.end.i, label %params_physical_width.exit.aic32x4_setup_clocks.exit_crit_edge

params_physical_width.exit.aic32x4_setup_clocks.exit_crit_edge: ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %aic32x4_setup_clocks.exit

if.end.i:                                         ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %7)
  %cmp.i = icmp ult i32 %7, 48001
  br i1 %cmp.i, label %if.then2.i, label %if.else8.i

if.then2.i:                                       ; preds = %if.end.i
  %type.i = getelementptr inbounds %struct.aic32x4_priv, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp3.i = icmp eq i32 %20, 2
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.aic32x4_priv, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 2
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then2.i
  br i1 %cmp.i.i, label %if.then4.i.if.end32.sink.split.i_crit_edge, label %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge

if.then4.i.if.end32.sink.split.sink.split.i_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.sink.split.i

if.then4.i.if.end32.sink.split.i_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.i

if.else.i:                                        ; preds = %if.then2.i
  br i1 %cmp.i.i, label %if.else.i.if.end32.i_crit_edge, label %if.else.i.if.end32.sink.split.sink.split.i_crit_edge

if.else.i.if.end32.sink.split.sink.split.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.sink.split.i

if.else.i.if.end32.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.else8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %7)
  %cmp9.i = icmp ult i32 %7, 96001
  br i1 %cmp9.i, label %if.then10.i, label %if.else18.i

if.then10.i:                                      ; preds = %if.else8.i
  %type11.i = getelementptr inbounds %struct.aic32x4_priv, ptr %18, i32 0, i32 12
  %27 = ptrtoint ptr %type11.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp12.i = icmp eq i32 %28, 2
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i11.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i11.i, align 4
  %type.i12.i = getelementptr inbounds %struct.aic32x4_priv, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %type.i12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp.i13.i = icmp eq i32 %34, 2
  br i1 %cmp12.i, label %if.then13.i, label %if.else15.i

if.then13.i:                                      ; preds = %if.then10.i
  br i1 %cmp.i13.i, label %if.then13.i.if.end32.sink.split.i_crit_edge, label %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge

if.then13.i.if.end32.sink.split.sink.split.i_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.sink.split.i

if.then13.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.i

if.else15.i:                                      ; preds = %if.then10.i
  br i1 %cmp.i13.i, label %if.else15.i.if.end32.i_crit_edge, label %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge

if.else15.i.if.end32.sink.split.sink.split.i_crit_edge: ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.sink.split.i

if.else15.i.if.end32.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.else18.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192000, i32 %7)
  %cmp19.i = icmp eq i32 %7, 192000
  br i1 %cmp19.i, label %if.then20.i, label %do.end.i

if.then20.i:                                      ; preds = %if.else18.i
  %type21.i = getelementptr inbounds %struct.aic32x4_priv, ptr %18, i32 0, i32 12
  %35 = ptrtoint ptr %type21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp22.i = icmp eq i32 %36, 2
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i29.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i29.i, align 4
  %type.i30.i = getelementptr inbounds %struct.aic32x4_priv, ptr %40, i32 0, i32 12
  %41 = ptrtoint ptr %type.i30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type.i30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp.i31.i = icmp eq i32 %42, 2
  br i1 %cmp22.i, label %if.then23.i, label %if.else25.i

if.then23.i:                                      ; preds = %if.then20.i
  br i1 %cmp.i31.i, label %if.then23.i.if.end32.sink.split.i_crit_edge, label %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge

if.then23.i.if.end32.sink.split.sink.split.i_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.sink.split.i

if.then23.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.i

if.else25.i:                                      ; preds = %if.then20.i
  br i1 %cmp.i31.i, label %if.else25.i.if.end32.i_crit_edge, label %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge

if.else25.i.if.end32.sink.split.sink.split.i_crit_edge: ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.sink.split.sink.split.i

if.else25.i.if.end32.i_crit_edge:                 ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

do.end.i:                                         ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.91) #7
  br label %aic32x4_setup_clocks.exit

if.end32.sink.split.sink.split.i:                 ; preds = %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge, %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge, %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge, %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge, %if.else.i.if.end32.sink.split.sink.split.i_crit_edge, %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge
  %.sink75.i = phi i32 [ 0, %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 0, %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 1, %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 0, %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 13, %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 1, %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 1, %if.else.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 1, %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 9, %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 1, %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 19, %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge ]
  %aosr.0.ph.ph.i = phi i32 [ 128, %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 128, %if.else.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 64, %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 64, %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 32, %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 32, %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge ]
  %adc_resource_class.0.ph.ph.i = phi i32 [ 192, %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 192, %if.else.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 192, %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 192, %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 96, %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 96, %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge ]
  %dac_resource_class.0.ph.ph.i = phi i32 [ 255, %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 255, %if.else.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 255, %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 255, %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 127, %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 127, %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge ]
  %dosr_increment.0.ph.ph.i = phi i32 [ 8, %if.then4.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 8, %if.else.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 4, %if.then13.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 4, %if.else15.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 2, %if.then23.i.if.end32.sink.split.sink.split.i_crit_edge ], [ 2, %if.else25.i.if.end32.sink.split.sink.split.i_crit_edge ]
  %call17.i33.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 61, i32 noundef %.sink75.i) #4
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.end32.sink.split.sink.split.i, %if.then23.i.if.end32.sink.split.i_crit_edge, %if.then13.i.if.end32.sink.split.i_crit_edge, %if.then4.i.if.end32.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.then4.i.if.end32.sink.split.i_crit_edge ], [ 1, %if.then13.i.if.end32.sink.split.i_crit_edge ], [ 1, %if.then23.i.if.end32.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end32.sink.split.sink.split.i ]
  %aosr.0.ph.i = phi i32 [ 128, %if.then4.i.if.end32.sink.split.i_crit_edge ], [ 64, %if.then13.i.if.end32.sink.split.i_crit_edge ], [ 32, %if.then23.i.if.end32.sink.split.i_crit_edge ], [ %aosr.0.ph.ph.i, %if.end32.sink.split.sink.split.i ]
  %adc_resource_class.0.ph.i = phi i32 [ 192, %if.then4.i.if.end32.sink.split.i_crit_edge ], [ 192, %if.then13.i.if.end32.sink.split.i_crit_edge ], [ 96, %if.then23.i.if.end32.sink.split.i_crit_edge ], [ %adc_resource_class.0.ph.ph.i, %if.end32.sink.split.sink.split.i ]
  %dac_resource_class.0.ph.i = phi i32 [ 255, %if.then4.i.if.end32.sink.split.i_crit_edge ], [ 255, %if.then13.i.if.end32.sink.split.i_crit_edge ], [ 127, %if.then23.i.if.end32.sink.split.i_crit_edge ], [ %dac_resource_class.0.ph.ph.i, %if.end32.sink.split.sink.split.i ]
  %dosr_increment.0.ph.i = phi i32 [ 8, %if.then4.i.if.end32.sink.split.i_crit_edge ], [ 4, %if.then13.i.if.end32.sink.split.i_crit_edge ], [ 2, %if.then23.i.if.end32.sink.split.i_crit_edge ], [ %dosr_increment.0.ph.ph.i, %if.end32.sink.split.sink.split.i ]
  %call6.i44.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 60, i32 noundef %.sink.i) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end32.sink.split.i, %if.else25.i.if.end32.i_crit_edge, %if.else15.i.if.end32.i_crit_edge, %if.else.i.if.end32.i_crit_edge
  %aosr.0.i = phi i32 [ 128, %if.else.i.if.end32.i_crit_edge ], [ 64, %if.else15.i.if.end32.i_crit_edge ], [ 32, %if.else25.i.if.end32.i_crit_edge ], [ %aosr.0.ph.i, %if.end32.sink.split.i ]
  %adc_resource_class.0.i = phi i32 [ 192, %if.else.i.if.end32.i_crit_edge ], [ 192, %if.else15.i.if.end32.i_crit_edge ], [ 96, %if.else25.i.if.end32.i_crit_edge ], [ %adc_resource_class.0.ph.i, %if.end32.sink.split.i ]
  %dac_resource_class.0.i = phi i32 [ 255, %if.else.i.if.end32.i_crit_edge ], [ 255, %if.else15.i.if.end32.i_crit_edge ], [ 127, %if.else25.i.if.end32.i_crit_edge ], [ %dac_resource_class.0.ph.i, %if.end32.sink.split.i ]
  %dosr_increment.0.i = phi i32 [ 8, %if.else.i.if.end32.i_crit_edge ], [ 4, %if.else15.i.if.end32.i_crit_edge ], [ 2, %if.else25.i.if.end32.i_crit_edge ], [ %dosr_increment.0.ph.i, %if.end32.sink.split.i ]
  %add.i = add nuw nsw i32 %adc_resource_class.0.i, %aosr.0.i
  %45 = trunc i32 %add.i to i16
  %div48.lhs.trunc.i = add nsw i16 %45, -1
  %div48.rhs.trunc.i = trunc i32 %aosr.0.i to i16
  %div4849.i = udiv i16 %div48.lhs.trunc.i, %div48.rhs.trunc.i
  %div48.zext.i = zext i16 %div4849.i to i32
  %div36.i = udiv i32 6200000, %7
  %46 = urem i32 %div36.i, %dosr_increment.0.i
  %mul40.i = sub nuw nsw i32 %div36.i, %46
  %mul50.i = mul nuw nsw i32 %aosr.0.i, %7
  %mul51.i = mul nuw nsw i32 %mul50.i, %div48.zext.i
  %div52.i = udiv i32 110000000, %mul51.i
  %conv53.i = trunc i32 %div52.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv53.i)
  %cmp55.not64.i = icmp eq i8 %conv53.i, 0
  br i1 %cmp55.not64.i, label %if.end32.i.do.end143.i_crit_edge, label %for.body.lr.ph.i

if.end32.i.do.end143.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end143.i

for.body.lr.ph.i:                                 ; preds = %if.end32.i
  %div42.i = udiv i32 2800000, %7
  %47 = urem i32 %div42.i, %dosr_increment.0.i
  %mul46.i = sub nuw nsw i32 %div42.i, %47
  %conv65.i = and i32 %mul46.i, 65535
  %conv6459.i = and i32 %mul40.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6459.i, i32 %conv65.i)
  %cmp66.not60.i = icmp ult i32 %conv6459.i, %conv65.i
  %48 = and i32 %div52.i, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc138.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %indvars.iv70.i = phi i32 [ %48, %for.body.lr.ph.i ], [ %indvars.iv.next71.i, %for.inc138.i.for.body.i_crit_edge ]
  %nadc.065.i = phi i8 [ %conv53.i, %for.body.lr.ph.i ], [ %dec139.i, %for.inc138.i.for.body.i_crit_edge ]
  %mul62.i = mul i32 %indvars.iv70.i, %mul51.i
  br i1 %cmp66.not60.i, label %for.body.i.for.inc138.i_crit_edge, label %for.body.i.for.body68.i_crit_edge

for.body.i.for.body68.i_crit_edge:                ; preds = %for.body.i
  br label %for.body68.i

for.body.i.for.inc138.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc138.i

for.body68.i:                                     ; preds = %for.inc132.i.for.body68.i_crit_edge, %for.body.i.for.body68.i_crit_edge
  %conv6462.i = phi i32 [ %conv64.i, %for.inc132.i.for.body68.i_crit_edge ], [ %conv6459.i, %for.body.i.for.body68.i_crit_edge ]
  %dosr.0.in61.i = phi i32 [ %sub135.i, %for.inc132.i.for.body68.i_crit_edge ], [ %mul40.i, %for.body.i.for.body68.i_crit_edge ]
  %sub73.i = add nuw nsw i32 %conv6462.i, %dac_resource_class.0.i
  %div75.i = udiv i32 %sub73.i, %conv6462.i
  %conv76.i = trunc i32 %div75.i to i8
  %conv77.i = and i32 %div75.i, 255
  %mul79.i = mul i32 %conv6462.i, %7
  %mul80.i = mul i32 %conv77.i, %mul79.i
  %div81.i = udiv i32 110000000, %mul80.i
  %conv82.i = trunc i32 %div81.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %conv76.i)
  %cmp8556.i = icmp ult i8 %conv76.i, -127
  br i1 %cmp8556.i, label %for.cond88.preheader.lr.ph.i, label %for.body68.i.for.inc132.i_crit_edge

for.body68.i.for.inc132.i_crit_edge:              ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc132.i

for.cond88.preheader.lr.ph.i:                     ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv82.i)
  %cmp90.not53.i = icmp eq i8 %conv82.i, 0
  %49 = and i32 %div81.i, 255
  br label %for.cond88.preheader.i

for.cond88.preheader.i:                           ; preds = %for.inc130.i.for.cond88.preheader.i_crit_edge, %for.cond88.preheader.lr.ph.i
  %conv8458.i = phi i32 [ %conv77.i, %for.cond88.preheader.lr.ph.i ], [ %conv84.i, %for.inc130.i.for.cond88.preheader.i_crit_edge ]
  %mdac.057.i = phi i8 [ %conv76.i, %for.cond88.preheader.lr.ph.i ], [ %inc.i, %for.inc130.i.for.cond88.preheader.i_crit_edge ]
  br i1 %cmp90.not53.i, label %for.cond88.preheader.i.for.inc130.i_crit_edge, label %for.body92.lr.ph.i

for.cond88.preheader.i.for.inc130.i_crit_edge:    ; preds = %for.cond88.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc130.i

for.body92.lr.ph.i:                               ; preds = %for.cond88.preheader.i
  %mul97.i = mul i32 %conv8458.i, %mul79.i
  br label %for.body92.i

for.body92.i:                                     ; preds = %for.inc.i.for.body92.i_crit_edge, %for.body92.lr.ph.i
  %indvars.iv.i = phi i32 [ %49, %for.body92.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i.for.body92.i_crit_edge ]
  %ndac.054.i = phi i8 [ %conv82.i, %for.body92.lr.ph.i ], [ %dec.i, %for.inc.i.for.body92.i_crit_edge ]
  %mul98.i = mul i32 %indvars.iv.i, %mul97.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul98.i, i32 %mul62.i)
  %cmp99.i = icmp eq i32 %mul98.i, %mul62.i
  br i1 %cmp99.i, label %if.then101.i, label %for.body92.i.for.inc.i_crit_edge

for.body92.i.for.inc.i_crit_edge:                 ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then101.i:                                     ; preds = %for.body92.i
  %50 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @aic32x4_setup_clocks.clocks, i32 0, i32 0, i32 1), align 4
  %call102.i = tail call i32 @clk_round_rate(ptr noundef %50, i32 noundef %mul62.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %cmp103.i = icmp eq i32 %call102.i, 0
  br i1 %cmp103.i, label %if.then101.i.for.inc.i_crit_edge, label %if.end106.i

if.then101.i.for.inc.i_crit_edge:                 ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end106.i:                                      ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #6
  %51 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @aic32x4_setup_clocks.clocks, i32 0, i32 0, i32 1), align 4
  %call107.i = tail call i32 @clk_set_rate(ptr noundef %51, i32 noundef %mul62.i) #4
  %52 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @aic32x4_setup_clocks.clocks, i32 0, i32 1, i32 1), align 4
  %call112.i = tail call i32 @clk_set_rate(ptr noundef %52, i32 noundef %mul51.i) #4
  %53 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @aic32x4_setup_clocks.clocks, i32 0, i32 2, i32 1), align 4
  %call115.i = tail call i32 @clk_set_rate(ptr noundef %53, i32 noundef %mul50.i) #4
  %call.i.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 20, i32 noundef %aosr.0.i) #4
  %54 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @aic32x4_setup_clocks.clocks, i32 0, i32 3, i32 1), align 4
  %call121.i = tail call i32 @clk_set_rate(ptr noundef %54, i32 noundef %mul97.i) #4
  %55 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @aic32x4_setup_clocks.clocks, i32 0, i32 4, i32 1), align 4
  %call124.i = tail call i32 @clk_set_rate(ptr noundef %55, i32 noundef %mul79.i) #4
  %conv.i46.i = lshr i32 %dosr.0.in61.i, 8
  %56 = and i32 %conv.i46.i, 255
  %call.i47.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 13, i32 noundef %56) #4
  %and.i.i = and i32 %dosr.0.in61.i, 255
  %call2.i.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 14, i32 noundef %and.i.i) #4
  %57 = load ptr, ptr getelementptr inbounds ([6 x %struct.clk_bulk_data], ptr @aic32x4_setup_clocks.clocks, i32 0, i32 5, i32 1), align 4
  %mul126.i = mul i32 %9, %7
  %mul127.i = mul i32 %mul126.i, %call1.i
  %call128.i = tail call i32 @clk_set_rate(ptr noundef %57, i32 noundef %mul127.i) #4
  br label %aic32x4_setup_clocks.exit

for.inc.i:                                        ; preds = %if.then101.i.for.inc.i_crit_edge, %for.body92.i.for.inc.i_crit_edge
  %dec.i = add i8 %ndac.054.i, -1
  %cmp90.not.i = icmp eq i8 %dec.i, 0
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -1
  br i1 %cmp90.not.i, label %for.inc.i.for.inc130.i_crit_edge, label %for.inc.i.for.body92.i_crit_edge

for.inc.i.for.body92.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body92.i

for.inc.i.for.inc130.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %for.inc.i.for.inc130.i_crit_edge, %for.cond88.preheader.i.for.inc130.i_crit_edge
  %inc.i = add i8 %mdac.057.i, 1
  %conv84.i = zext i8 %inc.i to i32
  %cmp85.i = icmp sgt i8 %mdac.057.i, -2
  br i1 %cmp85.i, label %for.inc130.i.for.cond88.preheader.i_crit_edge, label %for.inc130.i.for.inc132.i_crit_edge

for.inc130.i.for.inc132.i_crit_edge:              ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc132.i

for.inc130.i.for.cond88.preheader.i_crit_edge:    ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond88.preheader.i

for.inc132.i:                                     ; preds = %for.inc130.i.for.inc132.i_crit_edge, %for.body68.i.for.inc132.i_crit_edge
  %sub135.i = sub nsw i32 %conv6462.i, %dosr_increment.0.i
  %conv64.i = and i32 %sub135.i, 65535
  %cmp66.not.i = icmp ult i32 %conv64.i, %conv65.i
  br i1 %cmp66.not.i, label %for.inc132.i.for.inc138.i_crit_edge, label %for.inc132.i.for.body68.i_crit_edge

for.inc132.i.for.body68.i_crit_edge:              ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body68.i

for.inc132.i.for.inc138.i_crit_edge:              ; preds = %for.inc132.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc138.i

for.inc138.i:                                     ; preds = %for.inc132.i.for.inc138.i_crit_edge, %for.body.i.for.inc138.i_crit_edge
  %dec139.i = add i8 %nadc.065.i, -1
  %cmp55.not.i = icmp eq i8 %dec139.i, 0
  %indvars.iv.next71.i = add nsw i32 %indvars.iv70.i, -1
  br i1 %cmp55.not.i, label %for.inc138.i.do.end143.i_crit_edge, label %for.inc138.i.for.body.i_crit_edge

for.inc138.i.for.body.i_crit_edge:                ; preds = %for.inc138.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc138.i.do.end143.i_crit_edge:               ; preds = %for.inc138.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end143.i

do.end143.i:                                      ; preds = %for.inc138.i.do.end143.i_crit_edge, %if.end32.i.do.end143.i_crit_edge
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.94) #7
  br label %aic32x4_setup_clocks.exit

aic32x4_setup_clocks.exit:                        ; preds = %do.end143.i, %if.end106.i, %do.end.i, %params_physical_width.exit.aic32x4_setup_clocks.exit_crit_edge
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i.i43 = icmp eq i32 %61, 0
  br i1 %tobool.not.i.i.i43, label %for.inc.i.i.i50, label %aic32x4_setup_clocks.exit.if.then.i.i.i47_crit_edge

aic32x4_setup_clocks.exit.if.then.i.i.i47_crit_edge: ; preds = %aic32x4_setup_clocks.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i47

if.then.i.i.i47:                                  ; preds = %for.inc.i.i.i50.if.then.i.i.i47_crit_edge, %aic32x4_setup_clocks.exit.if.then.i.i.i47_crit_edge
  %i.09.lcssa.i.i.i44 = phi i32 [ 0, %aic32x4_setup_clocks.exit.if.then.i.i.i47_crit_edge ], [ 32, %for.inc.i.i.i50.if.then.i.i.i47_crit_edge ]
  %.lcssa.i.i.i45 = phi i32 [ %61, %aic32x4_setup_clocks.exit.if.then.i.i.i47_crit_edge ], [ %64, %for.inc.i.i.i50.if.then.i.i.i47_crit_edge ]
  %62 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i45, i1 true) #4, !range !506
  %add.i.i.i46 = or i32 %62, %i.09.lcssa.i.i.i44
  br label %params_physical_width.exit53

for.inc.i.i.i50:                                  ; preds = %aic32x4_setup_clocks.exit
  %arrayidx.1.i.i.i48 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %arrayidx.1.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.1.i.i.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.1.i.i.i49 = icmp eq i32 %64, 0
  br i1 %tobool.not.1.i.i.i49, label %for.inc.i.i.i50.params_physical_width.exit53_crit_edge, label %for.inc.i.i.i50.if.then.i.i.i47_crit_edge

for.inc.i.i.i50.if.then.i.i.i47_crit_edge:        ; preds = %for.inc.i.i.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i47

for.inc.i.i.i50.params_physical_width.exit53_crit_edge: ; preds = %for.inc.i.i.i50
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_physical_width.exit53

params_physical_width.exit53:                     ; preds = %for.inc.i.i.i50.params_physical_width.exit53_crit_edge, %if.then.i.i.i47
  %retval.0.i.i.i51 = phi i32 [ %add.i.i.i46, %if.then.i.i.i47 ], [ 0, %for.inc.i.i.i50.params_physical_width.exit53_crit_edge ]
  %call1.i52 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i51) #4
  %65 = add i32 %call1.i52, -16
  %66 = tail call i32 @llvm.fshl.i32(i32 %65, i32 %65, i32 30)
  %switch.tableidx = add i32 %66, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %67 = icmp ult i32 %switch.tableidx, 4
  br i1 %67, label %switch.lookup, label %params_physical_width.exit53.sw.epilog_crit_edge

params_physical_width.exit53.sw.epilog_crit_edge: ; preds = %params_physical_width.exit53
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %params_physical_width.exit53
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.aic32x4_hw_params, i32 0, i32 %switch.tableidx
  %68 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %68)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %params_physical_width.exit53.sw.epilog_crit_edge
  %iface1_reg.0 = phi i32 [ 0, %params_physical_width.exit53.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 48, i32 noundef %iface1_reg.0) #4
  %69 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp = icmp eq i32 %70, 1
  br i1 %cmp, label %sw.epilog.if.end26_crit_edge, label %if.else

sw.epilog.if.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %swapdacs = getelementptr inbounds %struct.aic32x4_priv, ptr %5, i32 0, i32 3
  %71 = ptrtoint ptr %swapdacs to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %swapdacs, align 4, !range !505
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not = icmp eq i8 %72, 0
  %. = select i1 %tobool.not, i32 20, i32 40
  br label %if.end26

if.end26:                                         ; preds = %if.else, %sw.epilog.if.end26_crit_edge
  %dacsetup_reg.0 = phi i32 [ 24, %sw.epilog.if.end26_crit_edge ], [ %., %if.else ]
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 63, i32 noundef 60, i32 noundef %dacsetup_reg.0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_component_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @devm_clk_bulk_get(ptr noundef %1, i32 noundef 4, ptr noundef nonnull @aic32x4_component_probe.clocks) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %setup = getelementptr inbounds %struct.aic32x4_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %setup, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @aic32x4_setup_gpios(ptr noundef %component)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_component_probe.clocks, i32 0, i32 0, i32 1), align 4
  %7 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_component_probe.clocks, i32 0, i32 1, i32 1), align 4
  %call5 = tail call i32 @clk_set_parent(ptr noundef %6, ptr noundef %7) #4
  %8 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_component_probe.clocks, i32 0, i32 2, i32 1), align 4
  %9 = load ptr, ptr getelementptr inbounds ([4 x %struct.clk_bulk_data], ptr @aic32x4_component_probe.clocks, i32 0, i32 3, i32 1), align 4
  %call6 = tail call i32 @clk_set_parent(ptr noundef %8, ptr noundef %9) #4
  %power_cfg = getelementptr inbounds %struct.aic32x4_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_cfg, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 179, i32 noundef 104) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %12 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %power_cfg, align 4
  %and12 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end16_crit_edge, label %if.then14

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 129, i32 noundef 8) #4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end10.if.end16_crit_edge
  %14 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %power_cfg, align 4
  %and18 = lshr i32 %15, 2
  %and18.lobit = and i32 %and18, 1
  %call20 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 130, i32 noundef %and18.lobit) #4
  %call21 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #4
  %16 = ptrtoint ptr %power_cfg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %power_cfg, align 4
  %and23 = lshr i32 %17, 3
  %18 = and i32 %and23, 1
  %19 = or i32 %18, %call21
  %20 = and i32 %and23, 2
  %21 = or i32 %19, %20
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 138, i32 noundef %21) #4
  %micpga_routing = getelementptr inbounds %struct.aic32x4_priv, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %micpga_routing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %micpga_routing, align 4
  %and34 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %. = select i1 %tobool35.not, i32 64, i32 16
  %call38 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 182, i32 noundef %.) #4
  %24 = ptrtoint ptr %micpga_routing to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %micpga_routing, align 4
  %and41 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %.sink84 = select i1 %tobool42.not, i32 64, i32 16
  %call46 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 185, i32 noundef %.sink84) #4
  %call48 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 81) #4
  %or50 = or i32 %call48, 192
  %call51 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 81, i32 noundef %or50) #4
  %call52 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 81, i32 noundef %call48) #4
  %call53 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 251, i32 noundef 5) #4
  tail call void @msleep(i32 noundef 40) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_bias_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb3 ], [ 104, %entry.sw.epilog.sink.split_crit_edge ]
  %.str.217.sink = phi ptr [ @.str.217, %sw.bb3 ], [ @.str.214, %entry.sw.epilog.sink.split_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 179, i32 noundef 120, i32 noundef %.sink) #4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.217.sink, ptr noundef nonnull @.str.215) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic32x4_reset_adc(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event)
  %cond = icmp eq i32 %event, 8
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 81) #4
  %or2 = or i32 %call1, 192
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 81, i32 noundef %or2) #4
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 81, i32 noundef %call1) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 286)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !158, !160, !162, !164, !166, !168, !169, !170, !171, !173, !175, !177, !178, !179, !180, !182, !184, !186, !187, !188, !189, !191, !193, !195, !197, !198, !199, !200, !202, !203, !204, !206, !208, !210, !212, !213, !214, !215, !217, !218, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !284, !286, !288, !290, !292, !294, !295, !297, !299, !301, !303, !305, !306, !308, !310, !312, !314, !316, !318, !320, !322, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !480, !481, !482, !484, !485, !486, !488, !490, !492, !494}
!llvm.module.flags = !{!496, !497, !498, !499, !500, !501, !502, !503}
!llvm.ident = !{!504}

!0 = !{ptr @aic32x4_regmap_config, !1, !"aic32x4_regmap_config", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 588, i32 28}
!2 = !{ptr @__ksymtab_aic32x4_regmap_config, !3, !"__ksymtab_aic32x4_regmap_config", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 593, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1355, i32 24}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1359, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @aic32x4_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @aic32x4_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1372, i32 25}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1379, i32 3}
!18 = !{ptr @aic32x4_probe._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @aic32x4_probe._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1408, i32 3}
!22 = !{ptr @aic32x4_probe._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @aic32x4_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @__ksymtab_aic32x4_probe, !25, !"__ksymtab_aic32x4_probe", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1419, i32 1}
!26 = !{ptr @__ksymtab_aic32x4_remove, !27, !"__ksymtab_aic32x4_remove", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1427, i32 1}
!28 = !{ptr @__UNIQUE_ID_description294, !29, !"__UNIQUE_ID_description294", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1429, i32 1}
!30 = !{ptr @__UNIQUE_ID_author295, !31, !"__UNIQUE_ID_author295", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1430, i32 1}
!32 = !{ptr @__UNIQUE_ID_file296, !33, !"__UNIQUE_ID_file296", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1431, i32 1}
!34 = !{ptr @__UNIQUE_ID_license297, !33, !"__UNIQUE_ID_license297", i1 false, i1 false}
!35 = !{ptr @aic32x4_regmap_pages, !36, !"aic32x4_regmap_pages", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 577, i32 38}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1217, i32 37}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1224, i32 45}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1226, i32 37}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1251, i32 57}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1252, i32 48}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1253, i32 56}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1254, i32 56}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1259, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @aic32x4_setup_regulators._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @aic32x4_setup_regulators._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1268, i32 4}
!58 = !{ptr @aic32x4_setup_regulators._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @aic32x4_setup_regulators._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1272, i32 4}
!62 = !{ptr @aic32x4_setup_regulators._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @aic32x4_setup_regulators._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1284, i32 3}
!66 = !{ptr @aic32x4_setup_regulators._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @aic32x4_setup_regulators._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1291, i32 4}
!70 = !{ptr @aic32x4_setup_regulators._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @aic32x4_setup_regulators._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1299, i32 4}
!74 = !{ptr @aic32x4_setup_regulators._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @aic32x4_setup_regulators._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1307, i32 4}
!78 = !{ptr @aic32x4_setup_regulators._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @aic32x4_setup_regulators._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @soc_component_dev_aic32x4_tas2505, !81, !"soc_component_dev_aic32x4_tas2505", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1190, i32 46}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1085, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1087, i32 2}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1089, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1091, i32 2}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1093, i32 2}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1095, i32 2}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1098, i32 2}
!96 = !{ptr @aic32x4_tas2505_snd_controls, !97, !"aic32x4_tas2505_snd_controls", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1084, i32 38}
!98 = !{ptr @tlv_pcm, !99, !"tlv_pcm", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 248, i32 8}
!100 = !{ptr @l_ptm_enum, !101, !"l_ptm_enum", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 267, i32 8}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 264, i32 2}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 264, i32 8}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 264, i32 14}
!108 = !{ptr @ptm_text, !109, !"ptm_text", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 263, i32 27}
!110 = !{ptr @tlv_tas_driver_gain, !111, !"tlv_tas_driver_gain", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 254, i32 8}
!112 = !{ptr @tlv_amp_vol, !113, !"tlv_amp_vol", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 255, i32 8}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1106, i32 2}
!116 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1107, i32 2}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1110, i32 2}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1112, i32 2}
!123 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1114, i32 2}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1115, i32 2}
!127 = !{ptr @aic32x4_tas2505_dapm_widgets, !128, !"aic32x4_tas2505_dapm_widgets", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1105, i32 41}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1102, i32 2}
!131 = !{ptr @hp_output_mixer_controls, !132, !"hp_output_mixer_controls", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1101, i32 38}
!133 = !{ptr @aic32x4_tas2505_dapm_routes, !134, !"aic32x4_tas2505_dapm_routes", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1118, i32 40}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1148, i32 11}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1149, i32 11}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1150, i32 11}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1151, i32 11}
!143 = !{ptr @aic32x4_tas2505_component_probe.clocks, !144, !"clocks", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1147, i32 30}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 225, i32 2}
!147 = !{ptr @aic32x4_mfp1, !148, !"aic32x4_mfp1", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 224, i32 38}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 229, i32 2}
!151 = !{ptr @aic32x4_mfp2, !152, !"aic32x4_mfp2", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 228, i32 38}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 125, i32 3}
!155 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @aic32x4_set_mfp2_gpio._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @aic32x4_set_mfp2_gpio._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 233, i32 2}
!160 = !{ptr @aic32x4_mfp3, !161, !"aic32x4_mfp3", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 232, i32 38}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 237, i32 2}
!164 = !{ptr @aic32x4_mfp4, !165, !"aic32x4_mfp4", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 236, i32 38}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 166, i32 3}
!168 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @aic32x4_set_mfp4_gpio._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @aic32x4_set_mfp4_gpio._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 241, i32 2}
!173 = !{ptr @aic32x4_mfp5, !174, !"aic32x4_mfp5", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 240, i32 38}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 206, i32 3}
!177 = !{ptr @.str.79, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @aic32x4_set_mfp5_gpio._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @aic32x4_set_mfp5_gpio._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 882, i32 11}
!182 = !{ptr @aic32x4_set_bias_level.clocks, !183, !"clocks", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 881, i32 30}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 895, i32 4}
!186 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @aic32x4_set_bias_level._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @aic32x4_set_bias_level._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1130, i32 10}
!191 = !{ptr @aic32x4_tas2505_dai, !192, !"aic32x4_tas2505_dai", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1129, i32 34}
!193 = !{ptr @aic32x4_ops, !194, !"aic32x4_ops", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 919, i32 37}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 626, i32 3}
!197 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @aic32x4_set_dai_fmt._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @aic32x4_set_dai_fmt._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 653, i32 3}
!202 = !{ptr @aic32x4_set_dai_fmt._entry.86, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @aic32x4_set_dai_fmt._entry_ptr.88, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 719, i32 11}
!206 = !{ptr @.str.90, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 721, i32 11}
!208 = !{ptr @aic32x4_setup_clocks.clocks, !209, !"clocks", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 717, i32 30}
!210 = !{ptr @.str.91, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 757, i32 3}
!212 = !{ptr @.str.92, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @aic32x4_setup_clocks._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @aic32x4_setup_clocks._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 813, i32 2}
!217 = !{ptr @aic32x4_setup_clocks._entry.93, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @aic32x4_setup_clocks._entry_ptr.95, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @soc_component_dev_aic32x4, !220, !"soc_component_dev_aic32x4", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 1068, i32 46}
!221 = !{ptr @.str.97, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 273, i32 2}
!223 = !{ptr @.str.98, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 274, i32 2}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 278, i32 2}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 283, i32 2}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 285, i32 2}
!231 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 286, i32 2}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 289, i32 2}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 290, i32 2}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 292, i32 2}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 294, i32 2}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 299, i32 2}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 300, i32 2}
!245 = !{ptr @.str.121, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 301, i32 2}
!247 = !{ptr @.str.123, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 303, i32 2}
!249 = !{ptr @.str.125, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 305, i32 2}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 307, i32 2}
!253 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 309, i32 2}
!255 = !{ptr @.str.131, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 311, i32 2}
!257 = !{ptr @.str.133, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 313, i32 2}
!259 = !{ptr @.str.135, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 315, i32 2}
!261 = !{ptr @.str.137, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 317, i32 2}
!263 = !{ptr @aic32x4_snd_controls, !264, !"aic32x4_snd_controls", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 270, i32 38}
!265 = !{ptr @r_ptm_enum, !266, !"r_ptm_enum", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 268, i32 8}
!267 = !{ptr @tlv_driver_gain, !268, !"tlv_driver_gain", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 250, i32 8}
!269 = !{ptr @lo_cm_enum, !270, !"lo_cm_enum", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 261, i32 8}
!271 = !{ptr @.str.139, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 258, i32 2}
!273 = !{ptr @.str.140, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 258, i32 15}
!275 = !{ptr @lo_cm_text, !276, !"lo_cm_text", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 257, i32 27}
!277 = !{ptr @tlv_adc_vol, !278, !"tlv_adc_vol", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 252, i32 8}
!279 = !{ptr @tlv_step_0_5, !280, !"tlv_step_0_5", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 246, i32 8}
!281 = !{ptr @.str.141, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 407, i32 2}
!283 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 408, i32 2}
!286 = !{ptr @.str.144, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 411, i32 2}
!288 = !{ptr @.str.145, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 413, i32 2}
!290 = !{ptr @.str.146, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 416, i32 2}
!292 = !{ptr @.str.147, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 418, i32 2}
!294 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 419, i32 2}
!297 = !{ptr @.str.150, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 422, i32 2}
!299 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 423, i32 2}
!301 = !{ptr @.str.152, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 426, i32 2}
!303 = !{ptr @.str.153, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 428, i32 2}
!305 = !{ptr @.str.154, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 429, i32 2}
!308 = !{ptr @.str.156, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 431, i32 2}
!310 = !{ptr @.str.157, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 433, i32 2}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 435, i32 2}
!314 = !{ptr @.str.159, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 437, i32 2}
!316 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 439, i32 2}
!318 = !{ptr @.str.161, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 441, i32 2}
!320 = !{ptr @.str.162, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 444, i32 2}
!322 = !{ptr @.str.163, !321, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.164, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 445, i32 2}
!325 = !{ptr @.str.165, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 447, i32 2}
!327 = !{ptr @.str.166, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 449, i32 2}
!329 = !{ptr @.str.167, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 451, i32 2}
!331 = !{ptr @.str.168, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 453, i32 2}
!333 = !{ptr @.str.169, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 455, i32 2}
!335 = !{ptr @.str.170, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 457, i32 2}
!337 = !{ptr @.str.171, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 460, i32 2}
!339 = !{ptr @.str.172, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 463, i32 2}
!341 = !{ptr @.str.173, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 465, i32 2}
!343 = !{ptr @.str.174, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 466, i32 2}
!345 = !{ptr @.str.175, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 467, i32 2}
!347 = !{ptr @.str.176, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 468, i32 2}
!349 = !{ptr @.str.177, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 469, i32 2}
!351 = !{ptr @.str.178, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 470, i32 2}
!353 = !{ptr @.str.179, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 471, i32 2}
!355 = !{ptr @.str.180, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 472, i32 2}
!357 = !{ptr @.str.181, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 473, i32 2}
!359 = !{ptr @.str.182, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 474, i32 2}
!361 = !{ptr @.str.183, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 475, i32 2}
!363 = !{ptr @.str.184, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 476, i32 2}
!365 = !{ptr @aic32x4_dapm_widgets, !366, !"aic32x4_dapm_widgets", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 406, i32 41}
!367 = !{ptr @.str.186, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 322, i32 2}
!369 = !{ptr @.str.188, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 323, i32 2}
!371 = !{ptr @hpl_output_mixer_controls, !372, !"hpl_output_mixer_controls", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 321, i32 38}
!373 = !{ptr @lol_output_mixer_controls, !374, !"lol_output_mixer_controls", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 331, i32 38}
!375 = !{ptr @.str.191, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 327, i32 2}
!377 = !{ptr @.str.193, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 328, i32 2}
!379 = !{ptr @hpr_output_mixer_controls, !380, !"hpr_output_mixer_controls", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 326, i32 38}
!381 = !{ptr @lor_output_mixer_controls, !382, !"lor_output_mixer_controls", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 335, i32 38}
!383 = !{ptr @.str.196, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 385, i32 2}
!385 = !{ptr @in1r_to_rmixer_controls, !386, !"in1r_to_rmixer_controls", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 384, i32 38}
!387 = !{ptr @in1r_rpga_p_enum, !388, !"in1r_rpga_p_enum", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 376, i32 8}
!389 = !{ptr @.str.197, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 340, i32 2}
!391 = !{ptr @.str.198, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 340, i32 9}
!393 = !{ptr @.str.199, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 340, i32 20}
!395 = !{ptr @.str.200, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 340, i32 31}
!397 = !{ptr @resistor_text, !398, !"resistor_text", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 339, i32 27}
!399 = !{ptr @.str.201, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 388, i32 2}
!401 = !{ptr @in2r_to_rmixer_controls, !402, !"in2r_to_rmixer_controls", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 387, i32 38}
!403 = !{ptr @in2r_rpga_p_enum, !404, !"in2r_rpga_p_enum", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 377, i32 8}
!405 = !{ptr @.str.202, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 391, i32 2}
!407 = !{ptr @in3r_to_rmixer_controls, !408, !"in3r_to_rmixer_controls", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 390, i32 38}
!409 = !{ptr @in3r_rpga_p_enum, !410, !"in3r_rpga_p_enum", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 378, i32 8}
!411 = !{ptr @.str.203, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 394, i32 2}
!413 = !{ptr @in2l_to_rmixer_controls, !414, !"in2l_to_rmixer_controls", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 393, i32 38}
!415 = !{ptr @in2l_rpga_p_enum, !416, !"in2l_rpga_p_enum", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 379, i32 8}
!417 = !{ptr @.str.204, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 397, i32 2}
!419 = !{ptr @cmr_to_rmixer_controls, !420, !"cmr_to_rmixer_controls", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 396, i32 38}
!421 = !{ptr @cmr_rpga_n_enum, !422, !"cmr_rpga_n_enum", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 380, i32 8}
!423 = !{ptr @.str.205, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 400, i32 2}
!425 = !{ptr @in1l_to_rmixer_controls, !426, !"in1l_to_rmixer_controls", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 399, i32 38}
!427 = !{ptr @in1l_rpga_n_enum, !428, !"in1l_rpga_n_enum", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 381, i32 8}
!429 = !{ptr @.str.206, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 403, i32 2}
!431 = !{ptr @in3l_to_rmixer_controls, !432, !"in3l_to_rmixer_controls", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 402, i32 38}
!433 = !{ptr @in3l_rpga_n_enum, !434, !"in3l_rpga_n_enum", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 382, i32 8}
!435 = !{ptr @.str.207, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 354, i32 2}
!437 = !{ptr @in1l_to_lmixer_controls, !438, !"in1l_to_lmixer_controls", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 353, i32 38}
!439 = !{ptr @in1l_lpga_p_enum, !440, !"in1l_lpga_p_enum", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 344, i32 8}
!441 = !{ptr @.str.208, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 357, i32 2}
!443 = !{ptr @in2l_to_lmixer_controls, !444, !"in2l_to_lmixer_controls", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 356, i32 38}
!445 = !{ptr @in2l_lpga_p_enum, !446, !"in2l_lpga_p_enum", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 345, i32 8}
!447 = !{ptr @.str.209, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 360, i32 2}
!449 = !{ptr @in3l_to_lmixer_controls, !450, !"in3l_to_lmixer_controls", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 359, i32 38}
!451 = !{ptr @in3l_lpga_p_enum, !452, !"in3l_lpga_p_enum", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 346, i32 8}
!453 = !{ptr @.str.210, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 363, i32 2}
!455 = !{ptr @in1r_to_lmixer_controls, !456, !"in1r_to_lmixer_controls", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 362, i32 38}
!457 = !{ptr @in1r_lpga_p_enum, !458, !"in1r_lpga_p_enum", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 347, i32 8}
!459 = !{ptr @.str.211, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 366, i32 2}
!461 = !{ptr @cml_to_lmixer_controls, !462, !"cml_to_lmixer_controls", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 365, i32 38}
!463 = !{ptr @cml_lpga_n_enum, !464, !"cml_lpga_n_enum", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 349, i32 8}
!465 = !{ptr @.str.212, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 369, i32 2}
!467 = !{ptr @in2r_to_lmixer_controls, !468, !"in2r_to_lmixer_controls", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 368, i32 38}
!469 = !{ptr @in2r_lpga_n_enum, !470, !"in2r_lpga_n_enum", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 350, i32 8}
!471 = !{ptr @.str.213, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 372, i32 2}
!473 = !{ptr @in3r_to_lmixer_controls, !474, !"in3r_to_lmixer_controls", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 371, i32 38}
!475 = !{ptr @in3r_lpga_n_enum, !476, !"in3r_lpga_n_enum", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 351, i32 8}
!477 = !{ptr @.str.214, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 88, i32 3}
!479 = !{ptr @.str.215, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @mic_bias_event._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @mic_bias_event._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.217, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 93, i32 3}
!484 = !{ptr @mic_bias_event._entry.216, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @mic_bias_event._entry_ptr.218, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @aic32x4_dapm_routes, !487, !"aic32x4_dapm_routes", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 479, i32 40}
!488 = !{ptr @aic32x4_component_probe.clocks, !489, !"clocks", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 997, i32 30}
!490 = !{ptr @.str.219, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 928, i32 10}
!492 = !{ptr @.str.220, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 936, i32 19}
!494 = !{ptr @aic32x4_dai, !495, !"aic32x4_dai", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/tlv320aic32x4.c", i32 927, i32 34}
!496 = !{i32 1, !"wchar_size", i32 2}
!497 = !{i32 1, !"min_enum_size", i32 4}
!498 = !{i32 8, !"branch-target-enforcement", i32 0}
!499 = !{i32 8, !"sign-return-address", i32 0}
!500 = !{i32 8, !"sign-return-address-all", i32 0}
!501 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!502 = !{i32 7, !"uwtable", i32 1}
!503 = !{i32 7, !"frame-pointer", i32 2}
!504 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!505 = !{i8 0, i8 2}
!506 = !{i32 0, i32 33}
