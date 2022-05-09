; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/arizona-jack.c_pt.bc'
source_filename = "../sound/soc/codecs/arizona-jack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+arizona_jack_codec_dev_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_jack_codec_dev_probe\09\09\09\09"
module asm "\09.long\09__crc_arizona_jack_codec_dev_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_jack_codec_dev_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_jack_codec_dev_probe\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_jack_codec_dev_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_jack_codec_dev_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_jack_codec_dev_remove\09\09\09\09"
module asm "\09.long\09__crc_arizona_jack_codec_dev_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_jack_codec_dev_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_jack_codec_dev_remove\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_jack_codec_dev_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+arizona_jack_set_jack\22, \22a\22\09"
module asm "\09.weak\09__crc_arizona_jack_set_jack\09\09\09\09"
module asm "\09.long\09__crc_arizona_jack_set_jack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_arizona_jack_set_jack:\09\09\09\09\09"
module asm "\09.asciz \09\22arizona_jack_set_jack\22\09\09\09\09\09"
module asm "__kstrtabns_arizona_jack_set_jack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arizona_micd_config = type { i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arizona_micd_range = type { i32, i32 }
%struct.anon.107 = type { i32, i32, i32 }
%struct.anon.108 = type { i32, i32 }
%struct.arizona_priv = type { [4 x %struct.wm_adsp], ptr, i32, i32, [10 x %struct.arizona_dai_priv], i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i8, %struct.mutex, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, ptr, ptr, i16, i32, ptr, i32, i32, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, [3 x i32], i32, i32 }
%struct.wm_adsp = type { %struct.cs_dsp, ptr, ptr, ptr, i32, i32, %struct.work_struct, i8, i8, %struct.list_head, %struct.list_head, i8 }
%struct.cs_dsp = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.list_head, ptr, i32, i32, i32, ptr, i32, i32, i8, i8, %struct.list_head, %struct.mutex, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.arizona_dai_priv = type { i32, %struct.snd_pcm_hw_constraint_list }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.arizona = type { ptr, ptr, i32, i32, i32, [2 x %struct.regulator_bulk_data], ptr, i8, %struct.arizona_pdata, i8, i32, ptr, ptr, ptr, i8, i32, %struct.mutex, i32, [2 x ptr], i8, ptr, [3 x i32], [3 x i32], i16, i8, %struct.mutex, %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.arizona_pdata = type { ptr, %struct.arizona_micsupp_pdata, %struct.arizona_ldo1_pdata, i32, i32, i32, [5 x i32], [3 x i32], i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr, i32, [4 x i32], [3 x %struct.arizona_micbias], [4 x i32], [6 x i32], [12 x i32], [2 x i32], [2 x i32], i32, i32, i32 }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micbias = type { i32, i8 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"getting MICVDD\0A\00", [16 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&info->hpdet_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&info->hpdet_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&info->micd_detect_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&info->micd_detect_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&info->micd_timeout_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&info->micd_timeout_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@micd_default_modes = internal constant { [2 x %struct.arizona_micd_config], [40 x i8] } { [2 x %struct.arizona_micd_config] [%struct.arizona_micd_config { i32 8192, i32 1, i8 0 }, %struct.arizona_micd_config { i32 0, i32 2, i8 1 }], [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MICD polarity\00", [18 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 1332, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request GPIO%d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arizona_jack_codec_dev_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/codecs/arizona-jack.c\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe._entry_ptr = internal global ptr @arizona_jack_codec_dev_probe._entry, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wlf,micd-pol\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"getting microphone polarity GPIO\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPDET\00", [26 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 1364, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_jack_codec_dev_probe._entry_ptr.25 = internal global ptr @arizona_jack_codec_dev_probe._entry.24, section ".printk_index", align 4
@__kstrtab_arizona_jack_codec_dev_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_jack_codec_dev_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_jack_codec_dev_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe to i32), ptr @__kstrtab_arizona_jack_codec_dev_probe, ptr @__kstrtabns_arizona_jack_codec_dev_probe }, section "___ksymtab_gpl+arizona_jack_codec_dev_probe", align 4
@__kstrtab_arizona_jack_codec_dev_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_jack_codec_dev_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_jack_codec_dev_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_jack_codec_dev_remove to i32), ptr @__kstrtab_arizona_jack_codec_dev_remove, ptr @__kstrtabns_arizona_jack_codec_dev_remove }, section "___ksymtab_gpl+arizona_jack_codec_dev_remove", align 4
@__kstrtab_arizona_jack_set_jack = external dso_local constant [0 x i8], align 1
@__kstrtabns_arizona_jack_set_jack = external dso_local constant [0 x i8], align 1
@__ksymtab_arizona_jack_set_jack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @arizona_jack_set_jack to i32), ptr @__kstrtab_arizona_jack_set_jack, ptr @__kstrtabns_arizona_jack_set_jack }, section "___ksymtab_gpl+arizona_jack_set_jack", align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wlf,hpdet-channel\00", [46 x i8] zeroinitializer }, align 32
@arizona_extcon_device_get_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.18, i32 1214, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Wrong wlf,hpdet-channel DT value %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arizona_extcon_device_get_pdata\00", [32 x i8] zeroinitializer }, align 32
@arizona_extcon_device_get_pdata._entry_ptr = internal global ptr @arizona_extcon_device_get_pdata._entry, section ".printk_index", align 4
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlf,micd-detect-debounce\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wlf,micd-bias-start-time\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wlf,micd-rate\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wlf,micd-dbtime\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wlf,micd-timeout-ms\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wlf,micd-force-micbias\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wlf,micd-software-compare\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wlf,jd-invert\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wlf,gpsw\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,use-jd2\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wlf,use-jd2-nopull\00", [45 x i8] zeroinitializer }, align 32
@arizona_extcon_device_get_pdata._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.28, ptr @.str.18, i32 1251, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read micd configs: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@arizona_extcon_device_get_pdata._entry_ptr.42 = internal global ptr @arizona_extcon_device_get_pdata._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wlf,micd-configs\00", [47 x i8] zeroinitializer }, align 32
@arizona_start_hpdet_acc_id.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.45, ptr @.str.18, ptr @.str.46, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_arizona\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arizona_start_hpdet_acc_id\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Starting identification via HPDET\0A\00", [61 x i8] zeroinitializer }, align 32
@arizona_start_hpdet_acc_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.18, i32 684, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to set HPDET mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arizona_start_hpdet_acc_id._entry_ptr = internal global ptr @arizona_start_hpdet_acc_id._entry, section ".printk_index", align 4
@arizona_start_hpdet_acc_id._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.18, i32 693, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't start HPDETL measurement: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_start_hpdet_acc_id._entry_ptr.50 = internal global ptr @arizona_start_hpdet_acc_id._entry.48, section ".printk_index", align 4
@arizona_extcon_hp_clamp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.18, i32 127, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set TST_CAP_SEL: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arizona_extcon_hp_clamp\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@arizona_extcon_hp_clamp._entry_ptr = internal global ptr @arizona_extcon_hp_clamp._entry, section ".printk_index", align 4
@arizona_extcon_hp_clamp._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.18, i32 147, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to disable headphone outputs: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@arizona_extcon_hp_clamp._entry_ptr.56 = internal global ptr @arizona_extcon_hp_clamp._entry.54, section ".printk_index", align 4
@arizona_extcon_hp_clamp._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.52, ptr @.str.18, i32 154, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to do clamp: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@arizona_extcon_hp_clamp._entry_ptr.59 = internal global ptr @arizona_extcon_hp_clamp._entry.57, section ".printk_index", align 4
@arizona_extcon_hp_clamp._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.52, ptr @.str.18, i32 159, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_extcon_hp_clamp._entry_ptr.61 = internal global ptr @arizona_extcon_hp_clamp._entry.60, section ".printk_index", align 4
@arizona_extcon_hp_clamp._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.18, i32 169, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to restore headphone outputs: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@arizona_extcon_hp_clamp._entry_ptr.64 = internal global ptr @arizona_extcon_hp_clamp._entry.62, section ".printk_index", align 4
@arizona_hpdet_do_id.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.65, ptr @.str.18, ptr @.str.66, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arizona_hpdet_do_id\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Measuring mic\0A\00", [17 x i8] zeroinitializer }, align 32
@arizona_hpdet_do_id.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.65, ptr @.str.18, ptr @.str.67, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HPDET measured %d %d\0A\00", [42 x i8] zeroinitializer }, align 32
@arizona_hpdet_do_id.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.65, ptr @.str.18, ptr @.str.68, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Retrying high impedance\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_hpdet_do_id.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.65, ptr @.str.18, ptr @.str.69, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Detected mic\0A\00", [18 x i8] zeroinitializer }, align 32
@arizona_hpdet_do_id.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.65, ptr @.str.18, ptr @.str.70, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Detected headphone\0A\00", [44 x i8] zeroinitializer }, align 32
@arizona_micd_detect.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.71, ptr @.str.18, ptr @.str.72, i8 0, i8 -23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arizona_micd_detect\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Ignoring MICDET for removed cable\0A\00", [61 x i8] zeroinitializer }, align 32
@arizona_micdet_reading._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.18, i32 809, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Detected open circuit\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arizona_micdet_reading\00", [41 x i8] zeroinitializer }, align 32
@arizona_micdet_reading._entry_ptr = internal global ptr @arizona_micdet_reading._entry, section ".printk_index", align 4
@arizona_micdet_reading._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.18, i32 828, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to bypass MICVDD: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_micdet_reading._entry_ptr.77 = internal global ptr @arizona_micdet_reading._entry.75, section ".printk_index", align 4
@arizona_micdet_reading.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.74, ptr @.str.18, ptr @.str.78, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Detected HP/line\0A\00", [46 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@arizona_micdet_reading.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.74, ptr @.str.18, ptr @.str.79, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone detected\0A\00", [44 x i8] zeroinitializer }, align 32
@arizona_micd_adc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.18, i32 739, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read MICDET_ADCVAL: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arizona_micd_adc_read\00", [42 x i8] zeroinitializer }, align 32
@arizona_micd_adc_read._entry_ptr = internal global ptr @arizona_micd_adc_read._entry, section ".printk_index", align 4
@arizona_micd_adc_read.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.81, ptr @.str.18, ptr @.str.82, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MICDET_ADCVAL: %x\0A\00", [45 x i8] zeroinitializer }, align 32
@arizona_micd_levels = internal constant { [65 x i32], [92 x i8] } { [65 x i32] [i32 3, i32 6, i32 8, i32 11, i32 13, i32 16, i32 18, i32 21, i32 23, i32 26, i32 28, i32 31, i32 34, i32 36, i32 39, i32 41, i32 44, i32 46, i32 49, i32 52, i32 54, i32 57, i32 60, i32 62, i32 65, i32 67, i32 70, i32 73, i32 75, i32 78, i32 81, i32 83, i32 89, i32 94, i32 100, i32 105, i32 111, i32 116, i32 122, i32 127, i32 139, i32 150, i32 161, i32 173, i32 186, i32 196, i32 209, i32 220, i32 245, i32 270, i32 295, i32 321, i32 348, i32 375, i32 402, i32 430, i32 489, i32 550, i32 614, i32 681, i32 752, i32 903, i32 1071, i32 1257, i32 30000], [92 x i8] zeroinitializer }, align 32
@arizona_micd_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.18, i32 772, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read MICDET: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arizona_micd_read\00", [46 x i8] zeroinitializer }, align 32
@arizona_micd_read._entry_ptr = internal global ptr @arizona_micd_read._entry, section ".printk_index", align 4
@arizona_micd_read.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.84, ptr @.str.18, ptr @.str.85, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MICDET: %x\0A\00", [20 x i8] zeroinitializer }, align 32
@arizona_micd_read._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.84, ptr @.str.18, i32 779, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Microphone detection state invalid\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_micd_read._entry_ptr.88 = internal global ptr @arizona_micd_read._entry.86, section ".printk_index", align 4
@arizona_micd_read._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.84, ptr @.str.18, i32 785, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get valid MICDET value\0A\00", [62 x i8] zeroinitializer }, align 32
@arizona_micd_read._entry_ptr.91 = internal global ptr @arizona_micd_read._entry.89, section ".printk_index", align 4
@arizona_identify_headphone.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.92, ptr @.str.18, ptr @.str.93, i8 0, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arizona_identify_headphone\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Starting HPDET\0A\00", [16 x i8] zeroinitializer }, align 32
@arizona_identify_headphone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.92, ptr @.str.18, i32 635, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_identify_headphone._entry_ptr = internal global ptr @arizona_identify_headphone._entry, section ".printk_index", align 4
@arizona_identify_headphone._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.92, ptr @.str.18, i32 642, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_identify_headphone._entry_ptr.95 = internal global ptr @arizona_identify_headphone._entry.94, section ".printk_index", align 4
@arizona_stop_mic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.18, i32 298, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to disable micd: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arizona_stop_mic\00", [47 x i8] zeroinitializer }, align 32
@arizona_stop_mic._entry_ptr = internal global ptr @arizona_stop_mic._entry, section ".printk_index", align 4
@arizona_stop_mic._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.18, i32 302, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to disable %s: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arizona_stop_mic._entry_ptr.100 = internal global ptr @arizona_stop_mic._entry.98, section ".printk_index", align 4
@arizona_stop_mic._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.97, ptr @.str.18, i32 318, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_stop_mic._entry_ptr.102 = internal global ptr @arizona_stop_mic._entry.101, section ".printk_index", align 4
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS3\00", [23 x i8] zeroinitializer }, align 32
@arizona_start_mic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.18, i32 246, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to regulate MICVDD: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arizona_start_mic\00", [46 x i8] zeroinitializer }, align 32
@arizona_start_mic._entry_ptr = internal global ptr @arizona_start_mic._entry, section ".printk_index", align 4
@arizona_start_mic._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.18, i32 251, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable MICVDD: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_start_mic._entry_ptr.110 = internal global ptr @arizona_start_mic._entry.108, section ".printk_index", align 4
@arizona_start_mic._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.18, i32 278, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to enable micd: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arizona_start_mic._entry_ptr.113 = internal global ptr @arizona_start_mic._entry.111, section ".printk_index", align 4
@arizona_extcon_pulse_micbias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.18, i32 220, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable %s: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arizona_extcon_pulse_micbias\00", [35 x i8] zeroinitializer }, align 32
@arizona_extcon_pulse_micbias._entry_ptr = internal global ptr @arizona_extcon_pulse_micbias._entry, section ".printk_index", align 4
@arizona_extcon_pulse_micbias._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.115, ptr @.str.18, i32 227, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_extcon_pulse_micbias._entry_ptr.117 = internal global ptr @arizona_extcon_pulse_micbias._entry.116, section ".printk_index", align 4
@arizona_extcon_set_mode.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.118, ptr @.str.18, ptr @.str.119, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arizona_extcon_set_mode\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set jack polarity to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@arizona_button_reading.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.120, ptr @.str.18, ptr @.str.121, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arizona_button_reading\00", [41 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mic button detected\0A\00", [43 x i8] zeroinitializer }, align 32
@arizona_button_reading._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.18, i32 907, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Button out of range\0A\00", [43 x i8] zeroinitializer }, align 32
@arizona_button_reading._entry_ptr = internal global ptr @arizona_button_reading._entry, section ".printk_index", align 4
@arizona_button_reading._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.120, ptr @.str.18, i32 910, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Button with no mic: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@arizona_button_reading._entry_ptr.125 = internal global ptr @arizona_button_reading._entry.123, section ".printk_index", align 4
@arizona_button_reading.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.120, ptr @.str.18, ptr @.str.126, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mic button released\0A\00", [43 x i8] zeroinitializer }, align 32
@arizona_micd_timeout_work.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.127, ptr @.str.18, ptr @.str.128, i8 0, i8 -77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"arizona_micd_timeout_work\00", [38 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MICD timed out, reporting HP\0A\00", [34 x i8] zeroinitializer }, align 32
@micd_default_ranges = internal constant { [6 x %struct.arizona_micd_range], [48 x i8] } { [6 x %struct.arizona_micd_range] [%struct.arizona_micd_range { i32 11, i32 256 }, %struct.arizona_micd_range { i32 28, i32 257 }, %struct.arizona_micd_range { i32 54, i32 258 }, %struct.arizona_micd_range { i32 100, i32 259 }, %struct.arizona_micd_range { i32 186, i32 260 }, %struct.arizona_micd_range { i32 430, i32 261 }], [48 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.18, i32 1430, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Too many MICD ranges: %d > %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arizona_jack_enable_jack_detect\00", [32 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr = internal global ptr @arizona_jack_enable_jack_detect._entry, section ".printk_index", align 4
@arizona_jack_enable_jack_detect._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.130, ptr @.str.18, i32 1438, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MICD ranges must be sorted\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.133 = internal global ptr @arizona_jack_enable_jack_detect._entry.131, section ".printk_index", align 4
@arizona_jack_enable_jack_detect._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.130, ptr @.str.18, i32 1456, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported MICD level %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.136 = internal global ptr @arizona_jack_enable_jack_detect._entry.134, section ".printk_index", align 4
@arizona_jack_enable_jack_detect.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.130, ptr @.str.18, ptr @.str.137, i8 1, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d ohms for MICD threshold %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"JACKDET rise\00", [19 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.130, ptr @.str.18, i32 1531, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get JACKDET rise IRQ: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.141 = internal global ptr @arizona_jack_enable_jack_detect._entry.139, section ".printk_index", align 4
@arizona_jack_enable_jack_detect._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.130, ptr @.str.18, i32 1537, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set JD rise IRQ wake: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.144 = internal global ptr @arizona_jack_enable_jack_detect._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"JACKDET fall\00", [19 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.130, ptr @.str.18, i32 1544, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get JD fall IRQ: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.148 = internal global ptr @arizona_jack_enable_jack_detect._entry.146, section ".printk_index", align 4
@arizona_jack_enable_jack_detect._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.130, ptr @.str.18, i32 1550, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set JD fall IRQ wake: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.151 = internal global ptr @arizona_jack_enable_jack_detect._entry.149, section ".printk_index", align 4
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICDET\00", [25 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.130, ptr @.str.18, i32 1557, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get MICDET IRQ: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.155 = internal global ptr @arizona_jack_enable_jack_detect._entry.153, section ".printk_index", align 4
@arizona_jack_enable_jack_detect._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.130, ptr @.str.18, i32 1564, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get HPDET IRQ: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.158 = internal global ptr @arizona_jack_enable_jack_detect._entry.156, section ".printk_index", align 4
@arizona_jack_enable_jack_detect._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.130, ptr @.str.18, i32 1576, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set MICVDD to bypass: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@arizona_jack_enable_jack_detect._entry_ptr.161 = internal global ptr @arizona_jack_enable_jack_detect._entry.159, section ".printk_index", align 4
@arizona_jackdet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str.18, i32 1044, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read jackdet status: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arizona_jackdet\00", [16 x i8] zeroinitializer }, align 32
@arizona_jackdet._entry_ptr = internal global ptr @arizona_jackdet._entry, section ".printk_index", align 4
@arizona_jackdet.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.163, ptr @.str.18, ptr @.str.164, i8 1, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Suppressing duplicate JACKDET\0A\00", [33 x i8] zeroinitializer }, align 32
@arizona_jackdet.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.163, ptr @.str.18, ptr @.str.165, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Detected jack\0A\00", [17 x i8] zeroinitializer }, align 32
@arizona_jackdet.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.163, ptr @.str.18, ptr @.str.166, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Detected jack removal\0A\00", [41 x i8] zeroinitializer }, align 32
@arizona_hpdet_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.18, i32 993, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read HPDET state: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arizona_hpdet_wait\00", [45 x i8] zeroinitializer }, align 32
@arizona_hpdet_wait._entry_ptr = internal global ptr @arizona_hpdet_wait._entry, section ".printk_index", align 4
@arizona_hpdet_wait._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.18, i32 1011, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HPDET did not appear to complete\0A\00", [62 x i8] zeroinitializer }, align 32
@arizona_hpdet_wait._entry_ptr.171 = internal global ptr @arizona_hpdet_wait._entry.169, section ".printk_index", align 4
@arizona_hpdet_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.18, i32 541, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Spurious HPDET IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arizona_hpdet_irq\00", [46 x i8] zeroinitializer }, align 32
@arizona_hpdet_irq._entry_ptr = internal global ptr @arizona_hpdet_irq._entry, section ".printk_index", align 4
@arizona_hpdet_irq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.173, ptr @.str.18, ptr @.str.174, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.174 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ignoring HPDET for removed cable\0A\00", [62 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.176, ptr @.str.18, i32 357, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read HPDET status: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arizona_hpdet_read\00", [45 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry_ptr = internal global ptr @arizona_hpdet_read._entry, section ".printk_index", align 4
@arizona_hpdet_read._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.18, i32 364, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HPDET did not complete: %x\0A\00", [36 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry_ptr.179 = internal global ptr @arizona_hpdet_read._entry.177, section ".printk_index", align 4
@arizona_hpdet_read._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.18, i32 373, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry_ptr.181 = internal global ptr @arizona_hpdet_read._entry.180, section ".printk_index", align 4
@arizona_hpdet_read._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.176, ptr @.str.18, i32 379, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read HP value: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry_ptr.184 = internal global ptr @arizona_hpdet_read._entry.182, section ".printk_index", align 4
@arizona_hpdet_b_ranges = internal constant { [3 x %struct.anon.107], [60 x i8] } { [3 x %struct.anon.107] [%struct.anon.107 { i32 100, i32 5528, i32 362464 }, %struct.anon.107 { i32 169, i32 11084, i32 6186851 }, %struct.anon.107 { i32 169, i32 11065, i32 65460395 }], [60 x i8] zeroinitializer }, align 32
@arizona_hpdet_read.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.176, ptr @.str.18, ptr @.str.185, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Moving to HPDET range %d\0A\00", [38 x i8] zeroinitializer }, align 32
@arizona_hpdet_read.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.176, ptr @.str.18, ptr @.str.186, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Measurement out of range\0A\00", [38 x i8] zeroinitializer }, align 32
@arizona_hpdet_read.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.176, ptr @.str.18, ptr @.str.187, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.187 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HPDET read %d in range %d\0A\00", [37 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.18, i32 417, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry_ptr.189 = internal global ptr @arizona_hpdet_read._entry.188, section ".printk_index", align 4
@arizona_hpdet_c_ranges = internal constant { [4 x %struct.anon.108], [32 x i8] } { [4 x %struct.anon.108] [%struct.anon.108 { i32 0, i32 30 }, %struct.anon.108 { i32 8, i32 100 }, %struct.anon.108 { i32 100, i32 1000 }, %struct.anon.108 { i32 1000, i32 10000 }], [32 x i8] zeroinitializer }, align 32
@arizona_hpdet_read.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.176, ptr @.str.18, ptr @.str.190, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.190 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Moving to HPDET range %d-%d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_hpdet_read.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.176, ptr @.str.18, ptr @.str.191, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reporting range boundary %d\0A\00", [35 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.176, ptr @.str.18, i32 453, ptr @.str.53, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown HPDET IP revision %d\0A\00", [34 x i8] zeroinitializer }, align 32
@arizona_hpdet_read._entry_ptr.194 = internal global ptr @arizona_hpdet_read._entry.192, section ".printk_index", align 4
@arizona_hpdet_read.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.176, ptr @.str.18, ptr @.str.195, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HP impedance %d ohms\0A\00", [42 x i8] zeroinitializer }, align 32
@arizona_jack_disable_jack_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.18, i32 1630, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to disable micd on remove: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arizona_jack_disable_jack_detect\00", [63 x i8] zeroinitializer }, align 32
@arizona_jack_disable_jack_detect._entry_ptr = internal global ptr @arizona_jack_disable_jack_detect._entry, section ".printk_index", align 4
@switch.table.arizona_stop_mic = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105], [20 x i8] zeroinitializer }, align 32
@switch.table.arizona_extcon_pulse_micbias = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.105], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.199 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 64]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1265, i32 41 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1267, i32 61 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1269, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1271, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1272, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1273, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [19 x i8] c"micd_default_modes\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 70, i32 41 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1329, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1331, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1349, i32 9 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1353, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1361, i32 10 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1363, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1207, i32 41 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1214, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1218, i32 41 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1221, i32 41 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1224, i32 41 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1227, i32 41 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1230, i32 41 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1234, i32 7 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1237, i32 7 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1240, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1242, i32 41 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1245, i32 11 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1247, i32 7 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1251, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1159, i32 28 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 669, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 684, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 693, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 127, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 147, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 154, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 159, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 169, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 478, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 495, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 503, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 515, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 519, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 934, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 809, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 828, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 841, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 872, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 739, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 743, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c"arizona_micd_levels\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 87, i32 18 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 772, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 776, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 779, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 785, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 619, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 635, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 642, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 298, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 302, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 318, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 200, i32 10 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 202, i32 10 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 204, i32 10 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 246, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 251, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 278, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 220, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 227, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 193, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 896, i32 4 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 907, i32 5 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 910, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 913, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 718, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [20 x i8] c"micd_default_ranges\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 75, i32 40 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1429, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1438, i32 5 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1455, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1460, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1529, i32 7 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1531, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1537, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1542, i32 7 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1544, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1550, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1555, i32 7 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1557, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1564, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1576, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1044, i32 3 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1052, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1071, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1092, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 993, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1011, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 541, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 549, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 357, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 364, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 373, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 379, i32 4 }
@___asan_gen_.730 = private unnamed_addr constant [23 x i8] c"arizona_hpdet_b_ranges\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 331, i32 3 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 392, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 404, i32 4 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 408, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 417, i32 4 }
@___asan_gen_.745 = private unnamed_addr constant [23 x i8] c"arizona_hpdet_c_ranges\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 342, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 434, i32 4 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 446, i32 4 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 453, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 457, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.770 = private constant [35 x i8] c"../sound/soc/codecs/arizona-jack.c\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1630, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant [30 x i8] c"switch.table.arizona_stop_mic\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [42 x i8] c"switch.table.arizona_extcon_pulse_micbias\00", align 1
@llvm.compiler.used = appending global [245 x ptr] [ptr @__ksymtab_arizona_jack_codec_dev_probe, ptr @__ksymtab_arizona_jack_codec_dev_remove, ptr @__ksymtab_arizona_jack_set_jack, ptr @arizona_button_reading._entry, ptr @arizona_button_reading._entry.123, ptr @arizona_button_reading._entry_ptr, ptr @arizona_button_reading._entry_ptr.125, ptr @arizona_extcon_device_get_pdata._entry, ptr @arizona_extcon_device_get_pdata._entry.40, ptr @arizona_extcon_device_get_pdata._entry_ptr, ptr @arizona_extcon_device_get_pdata._entry_ptr.42, ptr @arizona_extcon_hp_clamp._entry, ptr @arizona_extcon_hp_clamp._entry.54, ptr @arizona_extcon_hp_clamp._entry.57, ptr @arizona_extcon_hp_clamp._entry.60, ptr @arizona_extcon_hp_clamp._entry.62, ptr @arizona_extcon_hp_clamp._entry_ptr, ptr @arizona_extcon_hp_clamp._entry_ptr.56, ptr @arizona_extcon_hp_clamp._entry_ptr.59, ptr @arizona_extcon_hp_clamp._entry_ptr.61, ptr @arizona_extcon_hp_clamp._entry_ptr.64, ptr @arizona_extcon_pulse_micbias._entry, ptr @arizona_extcon_pulse_micbias._entry.116, ptr @arizona_extcon_pulse_micbias._entry_ptr, ptr @arizona_extcon_pulse_micbias._entry_ptr.117, ptr @arizona_hpdet_irq._entry, ptr @arizona_hpdet_irq._entry_ptr, ptr @arizona_hpdet_read._entry, ptr @arizona_hpdet_read._entry.177, ptr @arizona_hpdet_read._entry.180, ptr @arizona_hpdet_read._entry.182, ptr @arizona_hpdet_read._entry.188, ptr @arizona_hpdet_read._entry.192, ptr @arizona_hpdet_read._entry_ptr, ptr @arizona_hpdet_read._entry_ptr.179, ptr @arizona_hpdet_read._entry_ptr.181, ptr @arizona_hpdet_read._entry_ptr.184, ptr @arizona_hpdet_read._entry_ptr.189, ptr @arizona_hpdet_read._entry_ptr.194, ptr @arizona_hpdet_wait._entry, ptr @arizona_hpdet_wait._entry.169, ptr @arizona_hpdet_wait._entry_ptr, ptr @arizona_hpdet_wait._entry_ptr.171, ptr @arizona_identify_headphone._entry, ptr @arizona_identify_headphone._entry.94, ptr @arizona_identify_headphone._entry_ptr, ptr @arizona_identify_headphone._entry_ptr.95, ptr @arizona_jack_codec_dev_probe._entry, ptr @arizona_jack_codec_dev_probe._entry.24, ptr @arizona_jack_codec_dev_probe._entry_ptr, ptr @arizona_jack_codec_dev_probe._entry_ptr.25, ptr @arizona_jack_disable_jack_detect._entry, ptr @arizona_jack_disable_jack_detect._entry_ptr, ptr @arizona_jack_enable_jack_detect._entry, ptr @arizona_jack_enable_jack_detect._entry.131, ptr @arizona_jack_enable_jack_detect._entry.134, ptr @arizona_jack_enable_jack_detect._entry.139, ptr @arizona_jack_enable_jack_detect._entry.142, ptr @arizona_jack_enable_jack_detect._entry.146, ptr @arizona_jack_enable_jack_detect._entry.149, ptr @arizona_jack_enable_jack_detect._entry.153, ptr @arizona_jack_enable_jack_detect._entry.156, ptr @arizona_jack_enable_jack_detect._entry.159, ptr @arizona_jack_enable_jack_detect._entry_ptr, ptr @arizona_jack_enable_jack_detect._entry_ptr.133, ptr @arizona_jack_enable_jack_detect._entry_ptr.136, ptr @arizona_jack_enable_jack_detect._entry_ptr.141, ptr @arizona_jack_enable_jack_detect._entry_ptr.144, ptr @arizona_jack_enable_jack_detect._entry_ptr.148, ptr @arizona_jack_enable_jack_detect._entry_ptr.151, ptr @arizona_jack_enable_jack_detect._entry_ptr.155, ptr @arizona_jack_enable_jack_detect._entry_ptr.158, ptr @arizona_jack_enable_jack_detect._entry_ptr.161, ptr @arizona_jackdet._entry, ptr @arizona_jackdet._entry_ptr, ptr @arizona_micd_adc_read._entry, ptr @arizona_micd_adc_read._entry_ptr, ptr @arizona_micd_read._entry, ptr @arizona_micd_read._entry.86, ptr @arizona_micd_read._entry.89, ptr @arizona_micd_read._entry_ptr, ptr @arizona_micd_read._entry_ptr.88, ptr @arizona_micd_read._entry_ptr.91, ptr @arizona_micdet_reading._entry, ptr @arizona_micdet_reading._entry.75, ptr @arizona_micdet_reading._entry_ptr, ptr @arizona_micdet_reading._entry_ptr.77, ptr @arizona_start_hpdet_acc_id._entry, ptr @arizona_start_hpdet_acc_id._entry.48, ptr @arizona_start_hpdet_acc_id._entry_ptr, ptr @arizona_start_hpdet_acc_id._entry_ptr.50, ptr @arizona_start_mic._entry, ptr @arizona_start_mic._entry.108, ptr @arizona_start_mic._entry.111, ptr @arizona_start_mic._entry_ptr, ptr @arizona_start_mic._entry_ptr.110, ptr @arizona_start_mic._entry_ptr.113, ptr @arizona_stop_mic._entry, ptr @arizona_stop_mic._entry.101, ptr @arizona_stop_mic._entry.98, ptr @arizona_stop_mic._entry_ptr, ptr @arizona_stop_mic._entry_ptr.100, ptr @arizona_stop_mic._entry_ptr.102, ptr @.str, ptr @.str.1, ptr @arizona_jack_codec_dev_probe.__key, ptr @.str.2, ptr @arizona_jack_codec_dev_probe.__key.3, ptr @.str.4, ptr @arizona_jack_codec_dev_probe.__key.5, ptr @.str.6, ptr @arizona_jack_codec_dev_probe.__key.7, ptr @.str.8, ptr @arizona_jack_codec_dev_probe.__key.9, ptr @.str.10, ptr @arizona_jack_codec_dev_probe.__key.11, ptr @.str.12, ptr @arizona_jack_codec_dev_probe.__key.13, ptr @.str.14, ptr @micd_default_modes, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @arizona_micd_levels, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @micd_default_ranges, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.183, ptr @arizona_hpdet_b_ranges, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @arizona_hpdet_c_ranges, ptr @.str.190, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @switch.table.arizona_stop_mic, ptr @switch.table.arizona_extcon_pulse_micbias], section "llvm.metadata"
@0 = internal global [192 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micd_default_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_codec_dev_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_device_get_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_device_get_pdata._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_start_hpdet_acc_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_start_hpdet_acc_id._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_hp_clamp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_hp_clamp._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_hp_clamp._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_hp_clamp._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_hp_clamp._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micdet_reading._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micdet_reading._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micd_adc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micd_levels to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micd_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micd_read._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_micd_read._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_identify_headphone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_identify_headphone._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_stop_mic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_stop_mic._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_stop_mic._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_start_mic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_start_mic._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_start_mic._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_pulse_micbias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_extcon_pulse_micbias._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_button_reading._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_button_reading._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @micd_default_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_enable_jack_detect._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jackdet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_wait._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_read._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_read._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_read._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_b_ranges to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_read._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_c_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_hpdet_read._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arizona_jack_disable_jack_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arizona_stop_mic to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.arizona_extcon_pulse_micbias to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_jack_codec_dev_probe(ptr noundef %info, ptr noundef %dev) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %dev3 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %val.i, align 4
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %3, ptr noundef nonnull @.str.26, ptr noundef nonnull %val.i, i32 noundef 1) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %.off.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then.sw.epilog.i_crit_edge, label %do.end.i

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %8) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end.i, %if.then.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 1, %do.end.i ], [ %8, %if.then.sw.epilog.i_crit_edge ]
  %11 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink.i, ptr %11, align 4
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3, align 4
  %micd_detect_debounce.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 16
  %call.i1.i = call i32 @device_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.29, ptr noundef %micd_detect_debounce.i, i32 noundef 1) #6
  %15 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev3, align 4
  %micd_bias_start_time.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 18
  %call.i2.i = call i32 @device_property_read_u32_array(ptr noundef %16, ptr noundef nonnull @.str.30, ptr noundef %micd_bias_start_time.i, i32 noundef 1) #6
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  %micd_rate.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 19
  %call.i3.i = call i32 @device_property_read_u32_array(ptr noundef %18, ptr noundef nonnull @.str.31, ptr noundef %micd_rate.i, i32 noundef 1) #6
  %19 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev3, align 4
  %micd_dbtime.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 20
  %call.i4.i = call i32 @device_property_read_u32_array(ptr noundef %20, ptr noundef nonnull @.str.32, ptr noundef %micd_dbtime.i, i32 noundef 1) #6
  %21 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev3, align 4
  %micd_timeout.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 21
  %call.i5.i = call i32 @device_property_read_u32_array(ptr noundef %22, ptr noundef nonnull @.str.33, ptr noundef %micd_timeout.i, i32 noundef 1) #6
  %23 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev3, align 4
  %call.i6.i = call zeroext i1 @device_property_present(ptr noundef %24, ptr noundef nonnull @.str.34) #6
  %micd_force_micbias.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 22
  %frombool.i = zext i1 %call.i6.i to i8
  %25 = ptrtoint ptr %micd_force_micbias.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool.i, ptr %micd_force_micbias.i, align 4
  %26 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev3, align 4
  %call.i7.i = call zeroext i1 @device_property_present(ptr noundef %27, ptr noundef nonnull @.str.35) #6
  %micd_software_compare.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 15
  %frombool19.i = zext i1 %call.i7.i to i8
  %28 = ptrtoint ptr %micd_software_compare.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool19.i, ptr %micd_software_compare.i, align 4
  %29 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev3, align 4
  %call.i8.i = call zeroext i1 @device_property_present(ptr noundef %30, ptr noundef nonnull @.str.36) #6
  %jd_invert.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 10
  %frombool22.i = zext i1 %call.i8.i to i8
  %31 = ptrtoint ptr %jd_invert.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool22.i, ptr %jd_invert.i, align 2
  %32 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev3, align 4
  %gpsw.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 36
  %call.i9.i = call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @.str.37, ptr noundef %gpsw.i, i32 noundef 1) #6
  %34 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev3, align 4
  %call.i10.i = call zeroext i1 @device_property_present(ptr noundef %35, ptr noundef nonnull @.str.38) #6
  %jd_gpio5.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 8
  %frombool27.i = zext i1 %call.i10.i to i8
  %36 = ptrtoint ptr %jd_gpio5.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool27.i, ptr %jd_gpio5.i, align 4
  %37 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev3, align 4
  %call.i11.i = call zeroext i1 @device_property_present(ptr noundef %38, ptr noundef nonnull @.str.39) #6
  %jd_gpio5_nopull.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 9
  %frombool30.i = zext i1 %call.i11.i to i8
  %39 = ptrtoint ptr %jd_gpio5_nopull.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool30.i, ptr %jd_gpio5_nopull.i, align 1
  %40 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev3, align 4
  %call.i.i.i = call i32 @device_property_read_u32_array(ptr noundef %41, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %sw.epilog.i.arizona_extcon_device_get_pdata.exit_crit_edge, label %if.end.i.i

sw.epilog.i.arizona_extcon_device_get_pdata.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_extcon_device_get_pdata.exit

if.end.i.i:                                       ; preds = %sw.epilog.i
  %42 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i.i, i32 4) #6
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %if.end.i.i.do.end34.i_crit_edge, label %if.end7.i.i.i.i, !prof !393

if.end.i.i.do.end34.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %44 = extractvalue { i32, i1 } %42, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %44, i32 noundef 3520) #10
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.do.end34.i_crit_edge, label %if.end4.i.i

if.end7.i.i.i.i.do.end34.i_crit_edge:             ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34.i

if.end4.i.i:                                      ; preds = %if.end7.i.i.i.i
  %45 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev3, align 4
  %call6.i.i = call i32 @device_property_read_u32_array(ptr noundef %46, ptr noundef nonnull @.str.43, ptr noundef nonnull %call8.i.i.i.i, i32 noundef %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.end4.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge, label %if.end9.i.i

if.end4.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_extcon_get_micd_configs.exit.thread19.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %div70.i.i = udiv i32 %call.i.i.i, 3
  %47 = mul nuw i32 %div70.i.i, 12
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %47, i32 noundef 3520) #6
  %tobool11.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool11.not.i.i, label %if.end9.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge, label %for.cond.preheader.i.i

if.end9.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_extcon_get_micd_configs.exit.thread19.i

for.cond.preheader.i.i:                           ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %48 = icmp ult i32 %call.i.i.i, 3
  br i1 %48, label %for.cond.preheader.i.i.arizona_extcon_get_micd_configs.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.arizona_extcon_get_micd_configs.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_extcon_get_micd_configs.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %j.073.i.i = phi i32 [ %inc20.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %i.072.i.i = phi i32 [ %inc24.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %inc.i.i = add nuw i32 %j.073.i.i, 1
  %arrayidx.i.i = getelementptr i32, ptr %call8.i.i.i.i, i32 %j.073.i.i
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool15.not.i.i = icmp eq i32 %50, 0
  %cond.i.i = select i1 %tobool15.not.i.i, i32 0, i32 8192
  %arrayidx16.i.i = getelementptr %struct.arizona_micd_config, ptr %call5.i.i.i.i, i32 %i.072.i.i
  %51 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond.i.i, ptr %arrayidx16.i.i, align 4
  %inc17.i.i = add nuw i32 %j.073.i.i, 2
  %arrayidx18.i.i = getelementptr i32, ptr %call8.i.i.i.i, i32 %inc.i.i
  %52 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx18.i.i, align 4
  %bias.i.i = getelementptr %struct.arizona_micd_config, ptr %call5.i.i.i.i, i32 %i.072.i.i, i32 1
  %54 = ptrtoint ptr %bias.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %bias.i.i, align 4
  %inc20.i.i = add nuw i32 %j.073.i.i, 3
  %arrayidx21.i.i = getelementptr i32, ptr %call8.i.i.i.i, i32 %inc17.i.i
  %55 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool22.i.i = icmp ne i32 %56, 0
  %gpio.i.i = getelementptr %struct.arizona_micd_config, ptr %call5.i.i.i.i, i32 %i.072.i.i, i32 2
  %frombool.i.i = zext i1 %tobool22.i.i to i8
  %57 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool.i.i, ptr %gpio.i.i, align 4
  %inc24.i.i = add nuw nsw i32 %i.072.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc24.i.i, %div70.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.arizona_extcon_get_micd_configs.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.arizona_extcon_get_micd_configs.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_extcon_get_micd_configs.exit.i

arizona_extcon_get_micd_configs.exit.thread19.i:  ; preds = %if.end9.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge, %if.end4.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge
  %ret.0.i.ph.i = phi i32 [ -12, %if.end9.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge ], [ %call6.i.i, %if.end4.i.i.arizona_extcon_get_micd_configs.exit.thread19.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #6
  br label %do.end34.i

arizona_extcon_get_micd_configs.exit.i:           ; preds = %for.body.i.i.arizona_extcon_get_micd_configs.exit.i_crit_edge, %for.cond.preheader.i.i.arizona_extcon_get_micd_configs.exit.i_crit_edge
  %micd_configs25.i.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 25
  %58 = ptrtoint ptr %micd_configs25.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call5.i.i.i.i, ptr %micd_configs25.i.i, align 4
  %num_micd_configs.i.i = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 26
  %59 = ptrtoint ptr %num_micd_configs.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div70.i.i, ptr %num_micd_configs.i.i, align 4
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #6
  br label %arizona_extcon_device_get_pdata.exit

do.end34.i:                                       ; preds = %arizona_extcon_get_micd_configs.exit.thread19.i, %if.end7.i.i.i.i.do.end34.i_crit_edge, %if.end.i.i.do.end34.i_crit_edge
  %retval.0.i14.i = phi i32 [ %ret.0.i.ph.i, %arizona_extcon_get_micd_configs.exit.thread19.i ], [ -12, %if.end7.i.i.i.i.do.end34.i_crit_edge ], [ -12, %if.end.i.i.do.end34.i_crit_edge ]
  %60 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.41, i32 noundef %retval.0.i14.i) #9
  br label %arizona_extcon_device_get_pdata.exit

arizona_extcon_device_get_pdata.exit:             ; preds = %do.end34.i, %arizona_extcon_get_micd_configs.exit.i, %sw.epilog.i.arizona_extcon_device_get_pdata.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end

if.end:                                           ; preds = %arizona_extcon_device_get_pdata.exit, %entry.if.end_crit_edge
  %call5 = call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str) #6
  %micvdd = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 19
  %62 = ptrtoint ptr %micvdd to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call5, ptr %micvdd, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev3, align 4
  %65 = ptrtoint ptr %call5 to i32
  %call12 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %64, i32 noundef %65, ptr noundef nonnull @.str.1) #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 14
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @arizona_jack_codec_dev_probe.__key) #6
  %last_jackdet = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 21
  %66 = ptrtoint ptr %last_jackdet to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -10, ptr %last_jackdet, align 4
  %hpdet_work = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 15
  call void @__init_work(ptr noundef %hpdet_work, i32 noundef 0) #6
  %67 = ptrtoint ptr %hpdet_work to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %hpdet_work, align 4
  %lockdep_map = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 15, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @arizona_jack_codec_dev_probe.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry22 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 15, i32 0, i32 1
  %68 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 15, i32 0, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry22, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 15, i32 0, i32 2
  %70 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @arizona_hpdet_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 15, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @arizona_jack_codec_dev_probe.__key.5) #6
  %micd_detect_work = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 16
  call void @__init_work(ptr noundef %micd_detect_work, i32 noundef 0) #6
  %71 = ptrtoint ptr %micd_detect_work to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -64, ptr %micd_detect_work, align 4
  %lockdep_map43 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 16, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map43, ptr noundef nonnull @.str.8, ptr noundef nonnull @arizona_jack_codec_dev_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry46 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 16, i32 0, i32 1
  %72 = ptrtoint ptr %entry46 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %entry46, ptr %entry46, align 4
  %prev.i252 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 16, i32 0, i32 1, i32 1
  %73 = ptrtoint ptr %prev.i252 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %entry46, ptr %prev.i252, align 4
  %func49 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 16, i32 0, i32 2
  %74 = ptrtoint ptr %func49 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @arizona_micd_detect, ptr %func49, align 4
  %timer54 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 16, i32 1
  call void @init_timer_key(ptr noundef %timer54, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @arizona_jack_codec_dev_probe.__key.9) #6
  %micd_timeout_work = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 17
  call void @__init_work(ptr noundef %micd_timeout_work, i32 noundef 0) #6
  %75 = ptrtoint ptr %micd_timeout_work to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %micd_timeout_work, align 4
  %lockdep_map69 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 17, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map69, ptr noundef nonnull @.str.12, ptr noundef nonnull @arizona_jack_codec_dev_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry72 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 17, i32 0, i32 1
  %76 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i253 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 17, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i253 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry72, ptr %prev.i253, align 4
  %func75 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 17, i32 0, i32 2
  %78 = ptrtoint ptr %func75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @arizona_micd_timeout_work, ptr %func75, align 4
  %timer80 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 17, i32 1
  call void @init_timer_key(ptr noundef %timer80, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.14, ptr noundef nonnull @arizona_jack_codec_dev_probe.__key.13) #6
  %type = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 2
  %79 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values)
  switch i32 %80, label %do.body.sw.epilog97_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.body.sw.bb86_crit_edge
    i32 4, label %do.body.sw.bb86_crit_edge255
    i32 5, label %do.body.sw.bb93_crit_edge
    i32 6, label %do.body.sw.bb93_crit_edge256
  ]

do.body.sw.bb93_crit_edge256:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb93

do.body.sw.bb93_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb93

do.body.sw.bb86_crit_edge255:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

do.body.sw.bb86_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb86

do.body.sw.epilog97_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog97

sw.bb:                                            ; preds = %do.body
  %rev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 3
  %82 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cond = icmp eq i32 %83, 0
  br i1 %cond, label %sw.bb85, label %sw.default

sw.bb85:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %micd_reva = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 28
  %84 = ptrtoint ptr %micd_reva to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %micd_reva, align 4
  br label %sw.epilog97

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %micd_clamp = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 29
  %85 = ptrtoint ptr %micd_clamp to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %micd_clamp, align 1
  %hpdet_ip_version = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 38
  %86 = ptrtoint ptr %hpdet_ip_version to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %hpdet_ip_version, align 4
  br label %sw.epilog97

sw.bb86:                                          ; preds = %do.body.sw.bb86_crit_edge, %do.body.sw.bb86_crit_edge255
  %rev87 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 3
  %87 = ptrtoint ptr %rev87 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rev87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %88)
  %switch = icmp ult i32 %88, 3
  br i1 %switch, label %sw.bb86.sw.epilog97_crit_edge, label %sw.default89

sw.bb86.sw.epilog97_crit_edge:                    ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog97

sw.default89:                                     ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #8
  %micd_clamp90 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 29
  %89 = ptrtoint ptr %micd_clamp90 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %micd_clamp90, align 1
  %hpdet_ip_version91 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 38
  %90 = ptrtoint ptr %hpdet_ip_version91 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %hpdet_ip_version91, align 4
  br label %sw.epilog97

sw.bb93:                                          ; preds = %do.body.sw.bb93_crit_edge, %do.body.sw.bb93_crit_edge256
  %micd_clamp94 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 29
  %91 = ptrtoint ptr %micd_clamp94 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %micd_clamp94, align 1
  %hpdet_ip_version95 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 38
  %92 = ptrtoint ptr %hpdet_ip_version95 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %hpdet_ip_version95, align 4
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %sw.bb93, %sw.default89, %sw.bb86.sw.epilog97_crit_edge, %sw.default, %sw.bb85, %do.body.sw.epilog97_crit_edge
  %micd_timeout = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 21
  %93 = ptrtoint ptr %micd_timeout to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %micd_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool98.not = icmp eq i32 %94, 0
  br i1 %tobool98.not, label %if.then99, label %sw.epilog97.if.end101_crit_edge

sw.epilog97.if.end101_crit_edge:                  ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then99:                                        ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %micd_timeout to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 2000, ptr %micd_timeout, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then99, %sw.epilog97.if.end101_crit_edge
  %num_micd_configs = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 26
  %96 = ptrtoint ptr %num_micd_configs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_micd_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool102.not = icmp eq i32 %97, 0
  br i1 %tobool102.not, label %if.else, label %if.then103

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %micd_configs = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 25
  %98 = ptrtoint ptr %micd_configs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %micd_configs, align 4
  %micd_modes = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %100 = ptrtoint ptr %micd_modes to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %micd_modes, align 4
  %101 = ptrtoint ptr %num_micd_configs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %num_micd_configs, align 4
  br label %if.end107

if.else:                                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %micd_modes105 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %103 = ptrtoint ptr %micd_modes105 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @micd_default_modes, ptr %micd_modes105, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then103
  %.sink = phi i32 [ 2, %if.else ], [ %102, %if.then103 ]
  %104 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 24
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %.sink, ptr %104, align 4
  %gpsw = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 36
  %106 = ptrtoint ptr %gpsw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %gpsw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.not = icmp eq i32 %107, 0
  br i1 %cmp.not, label %if.end107.if.end113_crit_edge, label %if.then109

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end113

if.then109:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 3096, i32 noundef 3, i32 noundef %107, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %if.end107.if.end113_crit_edge
  %micd_pol_gpio = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 17
  %110 = ptrtoint ptr %micd_pol_gpio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %micd_pol_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp114 = icmp sgt i32 %111, 0
  %micd_modes116 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %112 = ptrtoint ptr %micd_modes116 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %micd_modes116, align 4
  %gpio = getelementptr inbounds %struct.arizona_micd_config, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %gpio, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool117.not = icmp eq i8 %115, 0
  br i1 %cmp114, label %if.then115, label %if.else134

if.then115:                                       ; preds = %if.end113
  %. = select i1 %tobool117.not, i32 0, i32 2
  %call122 = call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %111, i32 noundef %., ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123.not = icmp eq i32 %call122, 0
  br i1 %cmp123.not, label %if.end130, label %do.end127

do.end127:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev3, align 4
  %118 = ptrtoint ptr %micd_pol_gpio to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %micd_pol_gpio, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.16, i32 noundef %119, i32 noundef %call122) #9
  br label %cleanup

if.end130:                                        ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %micd_pol_gpio to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %micd_pol_gpio, align 4
  %call132 = call ptr @gpio_to_desc(i32 noundef %121) #6
  %micd_pol_gpio133 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 20
  %122 = ptrtoint ptr %micd_pol_gpio133 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call132, ptr %micd_pol_gpio133, align 4
  br label %if.end153

if.else134:                                       ; preds = %if.end113
  %.251 = select i1 %tobool117.not, i32 3, i32 7
  %123 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev3, align 4
  %call143 = call ptr @gpiod_get_optional(ptr noundef %124, ptr noundef nonnull @.str.21, i32 noundef %.251) #6
  %micd_pol_gpio144 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 20
  %125 = ptrtoint ptr %micd_pol_gpio144 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call143, ptr %micd_pol_gpio144, align 4
  %cmp.i254 = icmp ugt ptr %call143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then147, label %if.else134.if.end153_crit_edge

if.else134.if.end153_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

if.then147:                                       ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %call143 to i32
  %127 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev3, align 4
  %call151 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %128, i32 noundef %126, ptr noundef nonnull @.str.22) #6
  br label %cleanup

if.end153:                                        ; preds = %if.else134.if.end153_crit_edge, %if.end130
  %hpdet_id_gpio = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 13
  %129 = ptrtoint ptr %hpdet_id_gpio to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %hpdet_id_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %cmp155 = icmp sgt i32 %130, 0
  br i1 %cmp155, label %if.then156, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then156:                                       ; preds = %if.end153
  %call159 = call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %130, i32 noundef 0, ptr noundef nonnull @.str.23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160.not = icmp eq i32 %call159, 0
  br i1 %cmp160.not, label %if.then156.cleanup_crit_edge, label %do.end164

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end164:                                        ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #8
  %131 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev3, align 4
  %133 = ptrtoint ptr %hpdet_id_gpio to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %hpdet_id_gpio, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.16, i32 noundef %134, i32 noundef %call159) #9
  %micd_pol_gpio168 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 20
  %135 = ptrtoint ptr %micd_pol_gpio168 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %micd_pol_gpio168, align 4
  call void @gpiod_put(ptr noundef %136) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end164, %if.then156.cleanup_crit_edge, %if.end153.cleanup_crit_edge, %if.then147, %do.end127, %if.then8
  %retval.0 = phi i32 [ %call12, %if.then8 ], [ %call122, %do.end127 ], [ %call159, %do.end164 ], [ %126, %if.then147 ], [ 0, %if.then156.cleanup_crit_edge ], [ 0, %if.end153.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arizona_hpdet_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1572
  %lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @arizona_start_hpdet_acc_id(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arizona_micd_detect(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1672
  %arizona1 = getelementptr i8, ptr %work, i32 -488
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %micd_timeout_work = getelementptr i8, ptr %work, i32 100
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %micd_timeout_work) #6
  %lock = getelementptr i8, ptr %work, i32 -192
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %jack = getelementptr i8, ptr %work, i32 200
  %2 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jack, align 4
  %status = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_micd_detect.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_micd_detect, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !395

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_micd_detect.__UNIQUE_ID_ddebug317, ptr noundef %7, ptr noundef nonnull @.str.72) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %detecting = getelementptr i8, ptr %work, i32 246
  %8 = ptrtoint ptr %detecting to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %detecting, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @arizona_micdet_reading(ptr noundef %add.ptr)
  br label %if.end14

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @arizona_button_reading(ptr noundef %add.ptr)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then11
  %dev15 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 22
  %12 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then7, %do.body
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arizona_micd_timeout_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -292
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_micd_timeout_work.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_micd_timeout_work, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !395

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arizona = getelementptr i8, ptr %work, i32 -588
  %0 = ptrtoint ptr %arizona to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona, align 4
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_micd_timeout_work.__UNIQUE_ID_ddebug310, ptr noundef %3, ptr noundef nonnull @.str.128) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -1772
  %detecting = getelementptr i8, ptr %work, i32 146
  %4 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %detecting, align 2
  tail call fastcc void @arizona_identify_headphone(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_jack_codec_dev_remove(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %micd_pol_gpio = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 20
  %0 = ptrtoint ptr %micd_pol_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %micd_pol_gpio, align 4
  tail call void @gpiod_put(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arizona_jack_set_jack(ptr nocapture noundef readonly %component, ptr noundef %jack, ptr nocapture readnone %data) #0 align 64 {
entry:
  %change.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %jack, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call fastcc i32 @arizona_jack_enable_jack_detect(ptr noundef %3, ptr noundef nonnull %jack)
  br label %cleanup

if.else:                                          ; preds = %entry
  %arizona1.i = getelementptr inbounds %struct.arizona_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %arizona1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arizona1.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %change.i) #6
  %6 = ptrtoint ptr %change.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %change.i, align 1, !annotation !396
  %jack.i = getelementptr inbounds %struct.arizona_priv, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %jack.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.arizona_jack_disable_jack_detect.exit_crit_edge, label %if.end.i

if.else.arizona_jack_disable_jack_detect.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_jack_disable_jack_detect.exit

if.end.i:                                         ; preds = %if.else
  %micd_clamp.i = getelementptr inbounds %struct.arizona_priv, ptr %3, i32 0, i32 29
  %9 = ptrtoint ptr %micd_clamp.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %micd_clamp.i, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not.i = icmp eq i8 %10, 0
  %..i = select i1 %tobool2.not.i, i32 7, i32 50
  %.1.i = select i1 %tobool2.not.i, i32 6, i32 51
  %call.i = tail call i32 @arizona_set_irq_wake(ptr noundef %5, i32 noundef %..i, i32 noundef 0) #6
  %call5.i = tail call i32 @arizona_set_irq_wake(ptr noundef %5, i32 noundef %.1.i, i32 noundef 0) #6
  tail call void @arizona_free_irq(ptr noundef %5, i32 noundef 23, ptr noundef %3) #6
  tail call void @arizona_free_irq(ptr noundef %5, i32 noundef 22, ptr noundef %3) #6
  tail call void @arizona_free_irq(ptr noundef %5, i32 noundef %..i, ptr noundef %3) #6
  tail call void @arizona_free_irq(ptr noundef %5, i32 noundef %.1.i, ptr noundef %3) #6
  %hpdet_work.i = getelementptr inbounds %struct.arizona_priv, ptr %3, i32 0, i32 15
  %call6.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hpdet_work.i) #6
  %micd_detect_work.i = getelementptr inbounds %struct.arizona_priv, ptr %3, i32 0, i32 16
  %call7.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %micd_detect_work.i) #6
  %micd_timeout_work.i = getelementptr inbounds %struct.arizona_priv, ptr %3, i32 0, i32 17
  %call8.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %micd_timeout_work.i) #6
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 675, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %change.i, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else11.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i5 = getelementptr inbounds %struct.arizona, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.196, i32 noundef %call.i.i) #9
  br label %if.end18.i

if.else11.i:                                      ; preds = %if.end.i
  %15 = ptrtoint ptr %change.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %change.i, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i, label %if.else11.i.if.end18.i_crit_edge, label %if.then13.i

if.else11.i.if.end18.i_crit_edge:                 ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  %micvdd.i = getelementptr inbounds %struct.arizona_priv, ptr %3, i32 0, i32 19
  %17 = ptrtoint ptr %micvdd.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %micvdd.i, align 4
  %call14.i = call i32 @regulator_disable(ptr noundef %18) #6
  %dev15.i = getelementptr inbounds %struct.arizona, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev15.i, align 4
  %call.i2.i = call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.else11.i.if.end18.i_crit_edge, %do.end.i
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  %call.i3.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 674, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 723, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call23.i = call i32 @arizona_clk32k_disable(ptr noundef %5) #6
  %25 = ptrtoint ptr %jack.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %jack.i, align 4
  br label %arizona_jack_disable_jack_detect.exit

arizona_jack_disable_jack_detect.exit:            ; preds = %if.end18.i, %if.else.arizona_jack_disable_jack_detect.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %change.i) #6
  br label %cleanup

cleanup:                                          ; preds = %arizona_jack_disable_jack_detect.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %arizona_jack_disable_jack_detect.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_jack_enable_jack_detect(ptr noundef %info, ptr noundef %jack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %micd_bias_start_time = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 18
  %2 = ptrtoint ptr %micd_bias_start_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %micd_bias_start_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %shl = shl i32 %3, 12
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 675, i32 noundef 61440, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %micd_rate = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 19
  %6 = ptrtoint ptr %micd_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %micd_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %shl12 = shl i32 %7, 8
  %call.i354 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 675, i32 noundef 3840, i32 noundef %shl12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %micd_dbtime = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 20
  %10 = ptrtoint ptr %micd_dbtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %micd_dbtime, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %11, label %if.end14.do.end_crit_edge [
    i32 4, label %if.end14.do.end.sink.split_crit_edge
    i32 2, label %sw.bb18
  ]

if.end14.do.end.sink.split_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

if.end14.do.end_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb18:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %sw.bb18, %if.end14.do.end.sink.split_crit_edge
  %.sink397 = phi i32 [ 0, %sw.bb18 ], [ 2, %if.end14.do.end.sink.split_crit_edge ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i355 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 675, i32 noundef 2, i32 noundef %.sink397, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end14.do.end_crit_edge
  %num_micd_ranges = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 24
  %15 = ptrtoint ptr %num_micd_ranges to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_micd_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not = icmp eq i32 %16, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %micd_ranges = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 23
  %17 = ptrtoint ptr %micd_ranges to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %micd_ranges, align 4
  %micd_ranges24 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 26
  %19 = ptrtoint ptr %micd_ranges24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %micd_ranges24, align 4
  %20 = ptrtoint ptr %num_micd_ranges to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_micd_ranges, align 4
  br label %if.end29

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %micd_ranges27 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 26
  %22 = ptrtoint ptr %micd_ranges27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @micd_default_ranges, ptr %micd_ranges27, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  %.sink = phi i32 [ 6, %if.else ], [ %21, %if.then23 ]
  %23 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 27
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink, ptr %23, align 4
  %25 = ptrtoint ptr %num_micd_ranges to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_micd_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %26)
  %cmp = icmp sgt i32 %26, 6
  br i1 %cmp, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.129, i32 noundef %26, i32 noundef 6) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp40 = icmp sgt i32 %30, 1
  br i1 %cmp40, label %for.body.lr.ph, label %if.end38.if.end55_crit_edge

if.end38.if.end55_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

for.body.lr.ph:                                   ; preds = %if.end38
  %micd_ranges44 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 26
  %31 = ptrtoint ptr %micd_ranges44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %micd_ranges44, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0378, 1
  %exitcond.not = icmp eq i32 %inc, %30
  br i1 %exitcond.not, label %for.cond.if.end55_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.if.end55_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0378 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %sub = add nsw i32 %i.0378, -1
  %arrayidx = getelementptr %struct.arizona_micd_range, ptr %32, i32 %sub
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %arrayidx46 = getelementptr %struct.arizona_micd_range, ptr %32, i32 %i.0378
  %35 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp48 = icmp sgt i32 %34, %36
  br i1 %cmp48, label %do.end52, label %for.cond

do.end52:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev53 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.132) #9
  br label %cleanup

if.end55:                                         ; preds = %for.cond.if.end55_crit_edge, %if.end38.if.end55_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i357 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 676, i32 noundef 255, i32 noundef 129, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %41 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp60380 = icmp sgt i32 %42, 0
  br i1 %cmp60380, label %for.cond62.preheader.lr.ph, label %if.end55.for.body110.preheader_crit_edge

if.end55.for.body110.preheader_crit_edge:         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body110.preheader

for.cond62.preheader.lr.ph:                       ; preds = %if.end55
  %micd_ranges66 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 26
  %dev91 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %micd_button_mask = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 25
  %jack96 = getelementptr inbounds %struct.snd_soc_jack, ptr %jack, i32 0, i32 1
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %do.end95.for.cond62.preheader_crit_edge, %for.cond62.preheader.lr.ph
  %i.1381 = phi i32 [ 0, %for.cond62.preheader.lr.ph ], [ %inc106, %do.end95.for.cond62.preheader_crit_edge ]
  %43 = ptrtoint ptr %micd_ranges66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %micd_ranges66, align 4
  %arrayidx67 = getelementptr %struct.arizona_micd_range, ptr %44, i32 %i.1381
  %45 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx67, align 4
  br label %for.body64

for.cond108.preheader:                            ; preds = %do.end95
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.1381)
  %cmp109383 = icmp ult i32 %i.1381, 7
  br i1 %cmp109383, label %for.cond108.preheader.for.body110.preheader_crit_edge, label %for.cond108.preheader.for.end113_crit_edge

for.cond108.preheader.for.end113_crit_edge:       ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end113

for.cond108.preheader.for.body110.preheader_crit_edge: ; preds = %for.cond108.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body110.preheader

for.body110.preheader:                            ; preds = %for.cond108.preheader.for.body110.preheader_crit_edge, %if.end55.for.body110.preheader_crit_edge
  %i.2384.ph = phi i32 [ 0, %if.end55.for.body110.preheader_crit_edge ], [ %inc106, %for.cond108.preheader.for.body110.preheader_crit_edge ]
  br label %for.body110

for.body64:                                       ; preds = %for.inc72.for.body64_crit_edge, %for.cond62.preheader
  %j.0379 = phi i32 [ 0, %for.cond62.preheader ], [ %inc73, %for.inc72.for.body64_crit_edge ]
  %arrayidx65 = getelementptr [65 x i32], ptr @arizona_micd_levels, i32 0, i32 %j.0379
  %47 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp69.not = icmp slt i32 %48, %46
  br i1 %cmp69.not, label %for.inc72, label %do.body85

for.inc72:                                        ; preds = %for.body64
  %inc73 = add nuw nsw i32 %j.0379, 1
  %exitcond387.not = icmp eq i32 %inc73, 64
  br i1 %exitcond387.not, label %do.end79, label %for.inc72.for.body64_crit_edge

for.inc72.for.body64_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body64

do.end79:                                         ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev91, align 4
  %51 = ptrtoint ptr %micd_ranges66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %micd_ranges66, align 4
  %arrayidx82 = getelementptr %struct.arizona_micd_range, ptr %52, i32 %i.1381
  %53 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx82, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.135, i32 noundef %54) #9
  br label %cleanup

do.body85:                                        ; preds = %for.body64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_jack_enable_jack_detect.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_jack_enable_jack_detect, %if.then90)) #6
          to label %do.end95 [label %if.then90], !srcloc !395

if.then90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev91, align 4
  %57 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_jack_enable_jack_detect.__UNIQUE_ID_ddebug322, ptr noundef %56, ptr noundef nonnull @.str.137, i32 noundef %58, i32 noundef %i.1381) #6
  br label %do.end95

do.end95:                                         ; preds = %if.then90, %do.body85
  %59 = and i32 %i.1381, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  %shl.i = shl i32 %j.0379, 8
  %level.addr.0.i = select i1 %tobool.not.i, i32 %shl.i, i32 %j.0379
  %mask.0.i = select i1 %tobool.not.i, i32 16128, i32 63
  %div.neg.i389 = lshr i32 %i.1381, 1
  %sub.i = sub nsw i32 681, %div.neg.i389
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %sub.i, i32 noundef %mask.0.i, i32 noundef %level.addr.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %shr = lshr i32 16384, %i.1381
  %62 = ptrtoint ptr %micd_button_mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %micd_button_mask, align 4
  %or = or i32 %63, %shr
  store i32 %or, ptr %micd_button_mask, align 4
  %64 = ptrtoint ptr %jack96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %jack96, align 4
  %66 = ptrtoint ptr %micd_ranges66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %micd_ranges66, align 4
  %key = getelementptr %struct.arizona_micd_range, ptr %67, i32 %i.1381, i32 1
  %68 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %key, align 4
  %call100 = tail call i32 @snd_jack_set_key(ptr noundef %65, i32 noundef %shr, i32 noundef %69) #6
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %shl102 = shl nuw i32 1, %i.1381
  %call.i358 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 676, i32 noundef %shl102, i32 noundef %shl102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc106 = add nuw nsw i32 %i.1381, 1
  %72 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %23, align 4
  %cmp60 = icmp slt i32 %inc106, %73
  br i1 %cmp60, label %do.end95.for.cond62.preheader_crit_edge, label %for.cond108.preheader

do.end95.for.cond62.preheader_crit_edge:          ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond62.preheader

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %for.body110.preheader
  %i.2384 = phi i32 [ %inc112, %for.body110.for.body110_crit_edge ], [ %i.2384.ph, %for.body110.preheader ]
  %74 = and i32 %i.2384, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i359 = icmp eq i32 %74, 0
  %level.addr.0.i360 = select i1 %tobool.not.i359, i32 16128, i32 63
  %div.neg.i362 = sdiv i32 %i.2384, -2
  %sub.i363 = add nsw i32 %div.neg.i362, 681
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call.i.i364 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef %sub.i363, i32 noundef %level.addr.0.i360, i32 noundef %level.addr.0.i360, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc112 = add nuw i32 %i.2384, 1
  %exitcond388.not = icmp eq i32 %inc112, 8
  br i1 %exitcond388.not, label %for.body110.for.end113_crit_edge, label %for.body110.for.body110_crit_edge

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body110

for.body110.for.end113_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end113

for.end113:                                       ; preds = %for.body110.for.end113_crit_edge, %for.cond108.preheader.for.end113_crit_edge
  %micd_clamp = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 29
  %77 = ptrtoint ptr %micd_clamp to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %micd_clamp, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool114.not = icmp eq i8 %78, 0
  br i1 %tobool114.not, label %for.end113.if.end142_crit_edge, label %if.then115

for.end113.if.end142_crit_edge:                   ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then115:                                       ; preds = %for.end113
  %jd_gpio5 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 8
  %79 = ptrtoint ptr %jd_gpio5 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %jd_gpio5, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool117.not = icmp eq i8 %80, 0
  br i1 %tobool117.not, label %if.else130, label %if.then118

if.then118:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %jd_gpio5_nopull = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 9
  %81 = ptrtoint ptr %jd_gpio5_nopull to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %jd_gpio5_nopull, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool120.not = icmp eq i8 %82, 0
  %spec.select = select i1 %tobool120.not, i32 49409, i32 33025
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %call124 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 3076, i32 noundef %spec.select) #6
  %jd_invert = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 10
  %85 = ptrtoint ptr %jd_invert to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %jd_invert, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool126.not = icmp eq i8 %86, 0
  %spec.select353 = select i1 %tobool126.not, i32 9, i32 11
  br label %if.end137

if.else130:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #8
  %jd_invert132 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 10
  %87 = ptrtoint ptr %jd_invert132 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %jd_invert132, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool133.not = icmp eq i8 %88, 0
  %. = select i1 %tobool133.not, i32 4, i32 5
  br label %if.end137

if.end137:                                        ; preds = %if.else130, %if.then118
  %clamp_mode.0 = phi i32 [ %., %if.else130 ], [ %spec.select353, %if.then118 ]
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %call.i365 = tail call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 674, i32 noundef 15, i32 noundef %clamp_mode.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %call.i366 = tail call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 3414, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end142

if.end142:                                        ; preds = %if.end137, %for.end113.if.end142_crit_edge
  tail call fastcc void @arizona_extcon_set_mode(ptr noundef %info, i32 noundef 0)
  %jack143 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 18
  %93 = ptrtoint ptr %jack143 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %jack, ptr %jack143, align 4
  %dev144 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %94 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev144, align 4
  %call.i367 = tail call i32 @__pm_runtime_resume(ptr noundef %95, i32 noundef 4) #6
  %96 = ptrtoint ptr %micd_clamp to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %micd_clamp, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool147.not = icmp eq i8 %97, 0
  %.351 = select i1 %tobool147.not, i32 6, i32 51
  %.352 = select i1 %tobool147.not, i32 7, i32 50
  %call151 = tail call i32 @arizona_request_irq(ptr noundef %1, i32 noundef %.352, ptr noundef nonnull @.str.138, ptr noundef nonnull @arizona_jackdet, ptr noundef %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152.not = icmp eq i32 %call151, 0
  br i1 %cmp152.not, label %if.end158, label %do.end156

do.end156:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.140, i32 noundef %call151) #9
  br label %err_pm

if.end158:                                        ; preds = %if.end142
  %call159 = tail call i32 @arizona_set_irq_wake(ptr noundef %1, i32 noundef %.352, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp160.not = icmp eq i32 %call159, 0
  br i1 %cmp160.not, label %if.end166, label %do.end164

do.end164:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.143, i32 noundef %call159) #9
  br label %err_rise

if.end166:                                        ; preds = %if.end158
  %call167 = tail call i32 @arizona_request_irq(ptr noundef %1, i32 noundef %.351, ptr noundef nonnull @.str.145, ptr noundef nonnull @arizona_jackdet, ptr noundef %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168.not = icmp eq i32 %call167, 0
  br i1 %cmp168.not, label %if.end174, label %do.end172

do.end172:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.147, i32 noundef %call167) #9
  br label %err_rise_wake

if.end174:                                        ; preds = %if.end166
  %call175 = tail call i32 @arizona_set_irq_wake(ptr noundef %1, i32 noundef %.351, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176.not = icmp eq i32 %call175, 0
  br i1 %cmp176.not, label %if.end182, label %do.end180

do.end180:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.150, i32 noundef %call175) #9
  br label %err_fall

if.end182:                                        ; preds = %if.end174
  %call183 = tail call i32 @arizona_request_irq(ptr noundef %1, i32 noundef 22, ptr noundef nonnull @.str.152, ptr noundef nonnull @arizona_micdet, ptr noundef %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %cmp184.not = icmp eq i32 %call183, 0
  br i1 %cmp184.not, label %if.end190, label %do.end188

do.end188:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.154, i32 noundef %call183) #9
  br label %err_fall_wake

if.end190:                                        ; preds = %if.end182
  %call191 = tail call i32 @arizona_request_irq(ptr noundef %1, i32 noundef 23, ptr noundef nonnull @.str.23, ptr noundef nonnull @arizona_hpdet_irq, ptr noundef %info) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %cmp192.not = icmp eq i32 %call191, 0
  br i1 %cmp192.not, label %if.end198, label %do.end196

do.end196:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.157, i32 noundef %call191) #9
  tail call void @arizona_free_irq(ptr noundef %1, i32 noundef 22, ptr noundef %info) #6
  br label %err_fall_wake

if.end198:                                        ; preds = %if.end190
  %call199 = tail call i32 @arizona_clk32k_enable(ptr noundef %1) #6
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %call.i368 = tail call i32 @regmap_update_bits_base(ptr noundef %111, i32 noundef 3414, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call.i369 = tail call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef 723, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %micvdd = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 19
  %114 = ptrtoint ptr %micvdd to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %micvdd, align 4
  %call204 = tail call i32 @regulator_allow_bypass(ptr noundef %115, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %cmp205.not = icmp eq i32 %call204, 0
  br i1 %cmp205.not, label %if.end198.if.end211_crit_edge, label %do.end209

if.end198.if.end211_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end211

do.end209:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.160, i32 noundef %call204) #9
  br label %if.end211

if.end211:                                        ; preds = %do.end209, %if.end198.if.end211_crit_edge
  %118 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev144, align 4
  %call.i370 = tail call i32 @__pm_runtime_idle(ptr noundef %119, i32 noundef 5) #6
  br label %cleanup

err_fall_wake:                                    ; preds = %do.end196, %do.end188
  %ret.0 = phi i32 [ %call183, %do.end188 ], [ %call191, %do.end196 ]
  %call214 = tail call i32 @arizona_set_irq_wake(ptr noundef %1, i32 noundef %.351, i32 noundef 0) #6
  br label %err_fall

err_fall:                                         ; preds = %err_fall_wake, %do.end180
  %ret.1 = phi i32 [ %call175, %do.end180 ], [ %ret.0, %err_fall_wake ]
  tail call void @arizona_free_irq(ptr noundef %1, i32 noundef %.351, ptr noundef %info) #6
  br label %err_rise_wake

err_rise_wake:                                    ; preds = %err_fall, %do.end172
  %ret.2 = phi i32 [ %call167, %do.end172 ], [ %ret.1, %err_fall ]
  %call215 = tail call i32 @arizona_set_irq_wake(ptr noundef %1, i32 noundef %.352, i32 noundef 0) #6
  br label %err_rise

err_rise:                                         ; preds = %err_rise_wake, %do.end164
  %ret.3 = phi i32 [ %call159, %do.end164 ], [ %ret.2, %err_rise_wake ]
  tail call void @arizona_free_irq(ptr noundef %1, i32 noundef %.352, ptr noundef %info) #6
  br label %err_pm

err_pm:                                           ; preds = %err_rise, %do.end156
  %ret.4 = phi i32 [ %call151, %do.end156 ], [ %ret.3, %err_rise ]
  %120 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev144, align 4
  %call.i371 = tail call i32 @__pm_runtime_idle(ptr noundef %121, i32 noundef 5) #6
  %122 = ptrtoint ptr %jack143 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %jack143, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_pm, %if.end211, %do.end79, %do.end52, %do.end35
  %retval.0 = phi i32 [ -22, %do.end35 ], [ -22, %do.end52 ], [ -22, %do.end79 ], [ %ret.4, %err_pm ], [ 0, %if.end211 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_start_hpdet_acc_id(ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  %hp_reading = alloca i32, align 4
  %mic = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hp_reading) #6
  %2 = ptrtoint ptr %hp_reading to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %hp_reading, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mic) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_start_hpdet_acc_id.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_start_hpdet_acc_id, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !395

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_start_hpdet_acc_id.__UNIQUE_ID_ddebug309, ptr noundef %4, ptr noundef nonnull @.str.46) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #6
  %hpdet_active = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 30
  %7 = ptrtoint ptr %hpdet_active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %hpdet_active, align 2
  tail call fastcc void @arizona_extcon_hp_clamp(ptr noundef %info, i1 noundef zeroext true)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %micd_modes = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %10 = ptrtoint ptr %micd_modes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %micd_modes, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %hpdet_channel = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 14
  %14 = ptrtoint ptr %hpdet_channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hpdet_channel, align 4
  %or = or i32 %15, %13
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 659, i32 noundef 8199, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %cmp.not = icmp eq i32 %call.i47, 0
  br i1 %cmp.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.47, i32 noundef %call.i47) #9
  br label %err

if.end12:                                         ; preds = %do.end
  %hpdet_acc_id_line = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 12
  %18 = ptrtoint ptr %hpdet_acc_id_line to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hpdet_acc_id_line, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not = icmp eq i8 %19, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 667, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool18.not = icmp eq i32 %call.i48, 0
  br i1 %tobool18.not, label %if.then15.cleanup_crit_edge, label %do.end22

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.49, i32 noundef %call.i48) #9
  br label %err

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call fastcc i32 @arizona_hpdet_do_id(ptr noundef %info, ptr noundef nonnull %hp_reading, ptr noundef nonnull %mic)
  br label %cleanup

err:                                              ; preds = %do.end22, %do.end10
  %jack = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 18
  %24 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %25, i32 noundef 1, i32 noundef 5) #6
  %26 = ptrtoint ptr %hpdet_active to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %hpdet_active, align 2
  br label %cleanup

cleanup:                                          ; preds = %err, %if.else, %if.then15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mic) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hp_reading) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_extcon_hp_clamp(ptr nocapture noundef readonly %info, i1 noundef zeroext %clamp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %clamp to i8
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %type = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %3, label %sw.default [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge94
    i32 2, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge95
  ]

entry.sw.bb2_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge94:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge95
  %. = select i1 %clamp, i32 1, i32 6
  %.87 = select i1 %clamp, i32 1, i32 3
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 1188, i32 noundef 3, i32 noundef %.87, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %sw.bb2.sw.epilog_crit_edge, label %do.end

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.51, i32 noundef %call.i) #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %clamp, i32 16384, i32 0
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end, %sw.bb2.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge94
  %tobool23.not = phi i1 [ false, %sw.bb2.sw.epilog_crit_edge ], [ false, %do.end ], [ true, %entry.sw.epilog_crit_edge ], [ true, %entry.sw.epilog_crit_edge94 ], [ false, %sw.default ]
  %mask.0 = phi i32 [ 7, %sw.bb2.sw.epilog_crit_edge ], [ 7, %do.end ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge94 ], [ 16384, %sw.default ]
  %val.1 = phi i32 [ %., %sw.bb2.sw.epilog_crit_edge ], [ %., %do.end ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge94 ], [ %spec.select, %sw.default ]
  %dapm = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dapm, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #6
  %hpdet_clamp = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %hpdet_clamp to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %hpdet_clamp, align 4
  br i1 %clamp, label %if.then12, label %sw.epilog.if.end22_crit_edge

sw.epilog.if.end22_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then12:                                        ; preds = %sw.epilog
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 1024, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool15.not = icmp eq i32 %call.i88, 0
  br i1 %tobool15.not, label %if.then12.if.end22_crit_edge, label %do.end19

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.55, i32 noundef %call.i88) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.then12.if.end22_crit_edge, %sw.epilog.if.end22_crit_edge
  br i1 %tobool23.not, label %if.end22.if.end43_crit_edge, label %if.then24

if.end22.if.end43_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then24:                                        ; preds = %if.end22
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i89 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 549, i32 noundef %mask.0, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool27.not = icmp eq i32 %call.i89, 0
  br i1 %tobool27.not, label %if.then24.if.end33_crit_edge, label %do.end31

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %dev32 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.58, i32 noundef %call.i89) #9
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %if.then24.if.end33_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 550, i32 noundef %mask.0, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %tobool36.not = icmp eq i32 %call.i90, 0
  br i1 %tobool36.not, label %if.end33.if.end43_crit_edge, label %do.end40

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %dev41 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.58, i32 noundef %call.i90) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %if.end33.if.end43_crit_edge, %if.end22.if.end43_crit_edge
  br i1 %clamp, label %if.end43.if.end55_crit_edge, label %if.then45

if.end43.if.end55_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then45:                                        ; preds = %if.end43
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %hp_ena = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %hp_ena to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hp_ena, align 4
  %call.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 1024, i32 noundef 3, i32 noundef %29, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool48.not = icmp eq i32 %call.i91, 0
  br i1 %tobool48.not, label %if.then45.if.end55_crit_edge, label %do.end52

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  %dev53 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.63, i32 noundef %call.i91) #9
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.then45.if.end55_crit_edge, %if.end43.if.end55_crit_edge
  %32 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dapm, align 4
  %card.i92 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %card.i92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i92, align 4
  %dapm_mutex.i93 = getelementptr inbounds %struct.snd_soc_card, ptr %35, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i93) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_hpdet_do_id(ptr nocapture noundef %info, ptr nocapture noundef %reading, ptr nocapture noundef writeonly %mic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %hpdet_id_gpio = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %hpdet_id_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpdet_id_gpio, align 4
  %hpdet_acc_id = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 11
  %4 = ptrtoint ptr %hpdet_acc_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hpdet_acc_id, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %reading to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reading, align 4
  %hpdet_res = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 36
  %num_hpdet_res = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 35
  %8 = ptrtoint ptr %num_hpdet_res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_hpdet_res, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %num_hpdet_res, align 4
  %arrayidx = getelementptr %struct.arizona_priv, ptr %info, i32 0, i32 36, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end.do.body16_crit_edge, label %land.lhs.true

if.end.do.body16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %num_hpdet_res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_hpdet_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %do.body, label %land.lhs.true.do.body16_crit_edge

land.lhs.true.do.body16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_do_id, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !395

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_do_id.__UNIQUE_ID_ddebug302, ptr noundef %14, ptr noundef nonnull @.str.66) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %micd_modes = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %17 = ptrtoint ptr %micd_modes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %micd_modes, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %or = or i32 %20, 2
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 659, i32 noundef 8199, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call.i151 = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i151, i32 noundef 1) #6
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i152 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 667, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

do.body16:                                        ; preds = %land.lhs.true.do.body16_crit_edge, %if.end.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_do_id, %if.then28)) #6
          to label %do.end36 [label %if.then28], !srcloc !395

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev29 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev29, align 4
  %25 = ptrtoint ptr %hpdet_res to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hpdet_res, align 4
  %arrayidx33 = getelementptr %struct.arizona_priv, ptr %info, i32 0, i32 36, i32 1
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_do_id.__UNIQUE_ID_ddebug303, ptr noundef %24, ptr noundef nonnull @.str.67, i32 noundef %26, i32 noundef %28) #6
  br label %do.end36

do.end36:                                         ; preds = %if.then28, %do.body16
  %29 = ptrtoint ptr %hpdet_res to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hpdet_res, align 4
  %31 = ptrtoint ptr %reading to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %reading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %30)
  %cmp39 = icmp sgt i32 %30, 9999
  br i1 %cmp39, label %land.lhs.true40, label %do.end36.if.end64_crit_edge

do.end36.if.end64_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

land.lhs.true40:                                  ; preds = %do.end36
  %hpdet_retried = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 32
  %32 = ptrtoint ptr %hpdet_retried to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hpdet_retried, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool41.not = icmp eq i8 %33, 0
  br i1 %tobool41.not, label %do.body43, label %land.lhs.true40.if.end64_crit_edge

land.lhs.true40.if.end64_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.body43:                                        ; preds = %land.lhs.true40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_do_id, %if.then55)) #6
          to label %do.end59 [label %if.then55], !srcloc !395

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %dev56 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_do_id.__UNIQUE_ID_ddebug304, ptr noundef %35, ptr noundef nonnull @.str.68) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body43
  %36 = ptrtoint ptr %num_hpdet_res to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %num_hpdet_res, align 4
  %37 = ptrtoint ptr %hpdet_retried to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %hpdet_retried, align 4
  tail call fastcc void @arizona_start_hpdet_acc_id(ptr noundef %info)
  %dev62 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev62, align 4
  %call.i153 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #6
  br label %cleanup

if.end64:                                         ; preds = %land.lhs.true40.if.end64_crit_edge, %do.end36.if.end64_crit_edge
  br i1 %tobool3.not, label %if.end64.do.body70_crit_edge, label %lor.lhs.false

if.end64.do.body70_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body70

lor.lhs.false:                                    ; preds = %if.end64
  %arrayidx67 = getelementptr %struct.arizona_priv, ptr %info, i32 0, i32 36, i32 1
  %40 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %41)
  %cmp68 = icmp ugt i32 %41, 50
  br i1 %cmp68, label %lor.lhs.false.do.body70_crit_edge, label %do.body87

lor.lhs.false.do.body70_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body70

do.body70:                                        ; preds = %lor.lhs.false.do.body70_crit_edge, %if.end64.do.body70_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_do_id, %if.then82)) #6
          to label %do.end86 [label %if.then82], !srcloc !395

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #8
  %dev83 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_do_id.__UNIQUE_ID_ddebug305, ptr noundef %43, ptr noundef nonnull @.str.69) #6
  br label %do.end86

do.end86:                                         ; preds = %if.then82, %do.body70
  %44 = ptrtoint ptr %mic to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %mic, align 1
  %detecting = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 34
  %45 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %detecting, align 2
  br label %if.end104

do.body87:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_do_id, %if.then99)) #6
          to label %if.end104 [label %if.then99], !srcloc !395

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  %dev100 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_do_id.__UNIQUE_ID_ddebug306, ptr noundef %47, ptr noundef nonnull @.str.70) #6
  br label %if.end104

if.end104:                                        ; preds = %if.then99, %do.body87, %do.end86
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %micd_modes106 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %50 = ptrtoint ptr %micd_modes106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %micd_modes106, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  %call.i154 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 659, i32 noundef 8192, i32 noundef %53, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end104, %do.end59, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %if.end104 ], [ -11, %do.end59 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_micdet_reading(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %detecting = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 34
  %2 = ptrtoint ptr %detecting to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %detecting, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %micd_software_compare = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %micd_software_compare to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %micd_software_compare, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @arizona_micd_adc_read(ptr noundef %priv)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call3 = tail call fastcc i32 @arizona_micd_read(ptr noundef %priv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and = and i32 %ret.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.73) #9
  %mic = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 33
  %8 = ptrtoint ptr %mic to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mic, align 1
  %9 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %detecting, align 2
  tail call fastcc void @arizona_identify_headphone(ptr noundef %priv)
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %and10 = and i32 %ret.0, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end23, label %if.then12

if.then12:                                        ; preds = %if.end9
  %mic13 = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 33
  %10 = ptrtoint ptr %mic13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mic13, align 1
  %11 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %detecting, align 2
  tail call fastcc void @arizona_identify_headphone(ptr noundef %priv)
  %jack = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 18
  %12 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %13, i32 noundef 2, i32 noundef 2) #6
  %micvdd = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 19
  %14 = ptrtoint ptr %micvdd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %micvdd, align 4
  %call15 = tail call i32 @regulator_allow_bypass(ptr noundef %15, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then12.cleanup_crit_edge, label %do.end20

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.76, i32 noundef %call15) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end9
  %and24 = and i32 %ret.0, 1016
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body61, label %if.then26

if.then26:                                        ; preds = %if.end23
  %jack_flips = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 37
  %18 = ptrtoint ptr %jack_flips to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %jack_flips, align 4
  %micd_num_modes = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 24
  %20 = ptrtoint ptr %micd_num_modes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %micd_num_modes, align 4
  %mul = mul i32 %21, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul)
  %cmp27.not = icmp slt i32 %19, %mul
  br i1 %cmp27.not, label %if.else40, label %do.body29

do.body29:                                        ; preds = %if.then26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_micdet_reading.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_micdet_reading, %if.then34)) #6
          to label %do.end38 [label %if.then34], !srcloc !395

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_micdet_reading.__UNIQUE_ID_ddebug313, ptr noundef %23, ptr noundef nonnull @.str.78) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body29
  %24 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %detecting, align 2
  tail call fastcc void @arizona_identify_headphone(ptr noundef %priv)
  br label %cleanup

if.else40:                                        ; preds = %if.then26
  %micd_mode = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 22
  %25 = ptrtoint ptr %micd_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %micd_mode, align 4
  %inc = add i32 %26, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %21)
  %cmp43 = icmp eq i32 %inc, %21
  %spec.store.select = select i1 %cmp43, i32 0, i32 %inc
  %27 = ptrtoint ptr %micd_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select, ptr %micd_mode, align 4
  tail call fastcc void @arizona_extcon_set_mode(ptr noundef %priv, i32 noundef %spec.store.select)
  %28 = ptrtoint ptr %jack_flips to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %jack_flips, align 4
  %inc49 = add i32 %29, 1
  store i32 %inc49, ptr %jack_flips, align 4
  %micd_software_compare51 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 15
  %30 = ptrtoint ptr %micd_software_compare51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %micd_software_compare51, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool52.not = icmp eq i8 %31, 0
  br i1 %tobool52.not, label %if.else40.if.end55_crit_edge, label %if.then53

if.else40.if.end55_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then53:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 675, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.else40.if.end55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %34 = load ptr, ptr @system_power_efficient_wq, align 4
  %micd_timeout_work = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 17
  %micd_timeout = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 21
  %35 = ptrtoint ptr %micd_timeout to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %micd_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %36) #6
  %call.i5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %micd_timeout_work, i32 noundef %call2.i) #6
  br label %cleanup

do.body61:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_micdet_reading.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_micdet_reading, %if.then73)) #6
          to label %do.end77 [label %if.then73], !srcloc !395

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %dev74 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_micdet_reading.__UNIQUE_ID_ddebug314, ptr noundef %38, ptr noundef nonnull @.str.79) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %do.body61
  %39 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %detecting, align 2
  tail call fastcc void @arizona_identify_headphone(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %if.end55, %do.end38, %do.end20, %if.then12.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_button_reading(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %call = tail call fastcc i32 @arizona_micd_read(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 1020
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body31, label %if.then2

if.then2:                                         ; preds = %if.end
  %mic = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 33
  %2 = ptrtoint ptr %mic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mic, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %do.end27, label %do.body

do.body:                                          ; preds = %if.then2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_button_reading.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_button_reading, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !395

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_button_reading.__UNIQUE_ID_ddebug315, ptr noundef %5, ptr noundef nonnull @.str.121) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %and11 = lshr i32 %call, 2
  %6 = and i32 %and11, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %do.end.do.end21_crit_edge, label %land.lhs.true

do.end.do.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

land.lhs.true:                                    ; preds = %do.end
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !397
  %num_micd_ranges = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 27
  %8 = ptrtoint ptr %num_micd_ranges to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_micd_ranges, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp13 = icmp slt i32 %7, %9
  br i1 %cmp13, label %if.then14, label %land.lhs.true.do.end21_crit_edge

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end21

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %jack = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 18
  %10 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jack, align 4
  %shr18 = lshr i32 16384, %7
  %micd_button_mask = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 25
  %12 = ptrtoint ptr %micd_button_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %micd_button_mask, align 4
  tail call void @snd_soc_jack_report(ptr noundef %11, i32 noundef %shr18, i32 noundef %13) #6
  br label %cleanup

do.end21:                                         ; preds = %land.lhs.true.do.end21_crit_edge, %do.end.do.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.122) #9
  br label %cleanup

do.end27:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.124, i32 noundef %call) #9
  br label %cleanup

do.body31:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_button_reading.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_button_reading, %if.then43)) #6
          to label %do.end47 [label %if.then43], !srcloc !395

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %dev44 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_button_reading.__UNIQUE_ID_ddebug316, ptr noundef %19, ptr noundef nonnull @.str.126) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %jack48 = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 18
  %20 = ptrtoint ptr %jack48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jack48, align 4
  %micd_button_mask49 = getelementptr inbounds %struct.arizona_priv, ptr %priv, i32 0, i32 25
  %22 = ptrtoint ptr %micd_button_mask49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %micd_button_mask49, align 4
  tail call void @snd_soc_jack_report(ptr noundef %21, i32 noundef 0, i32 noundef %23) #6
  tail call fastcc void @arizona_extcon_pulse_micbias(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %do.end27, %do.end21, %if.then14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_micd_adc_read(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !396
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 675, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 683, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body4, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.80, i32 noundef %call3) #9
  br label %cleanup

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_micd_adc_read.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_micd_adc_read, %if.then9)) #6
          to label %do.end13 [label %if.then9], !srcloc !395

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_micd_adc_read.__UNIQUE_ID_ddebug311, ptr noundef %10, ptr noundef nonnull @.str.82, i32 noundef %12) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %and)
  %cmp = icmp ult i32 %and, 65
  br i1 %cmp, label %if.end15, label %if.else21.thread

if.else21.thread:                                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1024, ptr %val, align 4
  br label %if.end27

if.end15:                                         ; preds = %do.end13
  %16 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %and, label %if.then20 [
    i32 0, label %if.then17
    i32 64, label %if.then23
  ]

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %val, align 4
  br label %if.end27

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %val, align 4
  br label %if.end27

if.then23:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1025, ptr %val, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then20, %if.then17, %if.else21.thread
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %21, %if.end27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_micd_read(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  %dev10 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry
  %i.048 = phi i32 [ 0, %entry ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body, label %land.rhs.if.end30_crit_edge

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

for.body:                                         ; preds = %land.rhs
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef 677, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.body3, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.83, i32 noundef %call) #9
  br label %cleanup

do.body3:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_micd_read.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_micd_read, %if.then9)) #6
          to label %do.end13 [label %if.then9], !srcloc !395

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_micd_read.__UNIQUE_ID_ddebug312, ptr noundef %10, ptr noundef nonnull @.str.85, i32 noundef %12) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body3
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and14 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end19, label %for.inc

do.end19:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.87) #9
  br label %cleanup

for.inc:                                          ; preds = %do.end13
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %land.lhs.true, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.lhs.true:                                    ; preds = %for.inc
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and23 = and i32 %18, 2044
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.end28, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end28:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.90) #9
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %land.rhs.if.end30_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end28, %do.end19, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end19 ], [ %22, %if.end30 ], [ -22, %do.end28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_identify_headphone(ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %hpdet_done = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 31
  %2 = ptrtoint ptr %hpdet_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpdet_done, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_identify_headphone.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_identify_headphone, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !395

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_identify_headphone.__UNIQUE_ID_ddebug308, ptr noundef %5, ptr noundef nonnull @.str.93) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %dev7 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #6
  %hpdet_active = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 30
  %8 = ptrtoint ptr %hpdet_active to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %hpdet_active, align 2
  tail call fastcc void @arizona_stop_mic(ptr noundef %info)
  tail call fastcc void @arizona_extcon_hp_clamp(ptr noundef %info, i1 noundef zeroext true)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %hpdet_channel = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 14
  %11 = ptrtoint ptr %hpdet_channel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hpdet_channel, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 659, i32 noundef 7, i32 noundef %12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.not = icmp eq i32 %call.i51, 0
  br i1 %cmp.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.47, i32 noundef %call.i51) #9
  br label %err

if.end15:                                         ; preds = %do.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 667, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool18.not = icmp eq i32 %call.i52, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %do.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.49, i32 noundef %call.i52) #9
  br label %err

err:                                              ; preds = %do.end22, %do.end13
  tail call fastcc void @arizona_extcon_hp_clamp(ptr noundef %info, i1 noundef zeroext false)
  %19 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev7, align 4
  %call.i53 = tail call i32 @__pm_runtime_suspend(ptr noundef %20, i32 noundef 13) #6
  %jack = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 18
  %21 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %22, i32 noundef 1, i32 noundef 5) #6
  %mic = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 33
  %23 = ptrtoint ptr %mic to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mic, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool27.not = icmp eq i8 %24, 0
  br i1 %tobool27.not, label %err.if.end29_crit_edge, label %if.then28

err.if.end29_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @arizona_start_mic(ptr noundef %info)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %err.if.end29_crit_edge
  %25 = ptrtoint ptr %hpdet_active to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %hpdet_active, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_allow_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_extcon_set_mode(ptr nocapture noundef %info, i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %micd_num_modes = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 24
  %2 = ptrtoint ptr %micd_num_modes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %micd_num_modes, align 4
  %rem = srem i32 %mode, %3
  %micd_pol_gpio = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 20
  %4 = ptrtoint ptr %micd_pol_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %micd_pol_gpio, align 4
  %micd_modes = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %6 = ptrtoint ptr %micd_modes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %micd_modes, align 4
  %gpio = getelementptr %struct.arizona_micd_config, ptr %7, i32 %rem, i32 2
  %8 = ptrtoint ptr %gpio to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %gpio, align 4, !range !394
  %10 = zext i8 %9 to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %5, i32 noundef %10) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %micd_modes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %micd_modes, align 4
  %bias = getelementptr %struct.arizona_micd_config, ptr %14, i32 %rem, i32 1
  %15 = ptrtoint ptr %bias to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bias, align 4
  %shl = shl i32 %16, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 675, i32 noundef 48, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %micd_modes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %micd_modes, align 4
  %arrayidx6 = getelementptr %struct.arizona_micd_config, ptr %20, i32 %rem
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 659, i32 noundef 8192, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %micd_mode = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 22
  %23 = ptrtoint ptr %micd_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %rem, ptr %micd_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_extcon_set_mode.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_extcon_set_mode, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !395

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_extcon_set_mode.__UNIQUE_ID_ddebug295, ptr noundef %25, ptr noundef nonnull @.str.119, i32 noundef %rem) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_stop_mic(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %change = alloca i8, align 1
  %reva = alloca [3 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %micd_modes.i = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %2 = ptrtoint ptr %micd_modes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %micd_modes.i, align 4
  %bias.i = getelementptr inbounds %struct.arizona_micd_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bias.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bias.i, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.arizona_extcon_get_micbias.exit_crit_edge

entry.arizona_extcon_get_micbias.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_extcon_get_micbias.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.arizona_stop_mic, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %arizona_extcon_get_micbias.exit

arizona_extcon_get_micbias.exit:                  ; preds = %switch.lookup, %entry.arizona_extcon_get_micbias.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str, %entry.arizona_extcon_get_micbias.exit_crit_edge ]
  %dapm2 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %dapm2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dapm2, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 -176
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %change) #6
  %10 = ptrtoint ptr %change to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %change, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 675, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %change, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %arizona_extcon_get_micbias.exit.if.end_crit_edge

arizona_extcon_get_micbias.exit.if.end_crit_edge: ; preds = %arizona_extcon_get_micbias.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %arizona_extcon_get_micbias.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.96, i32 noundef %call.i) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %arizona_extcon_get_micbias.exit.if.end_crit_edge
  %call5 = call i32 @snd_soc_component_disable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %do.end9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.99, ptr noundef nonnull %retval.0.i, i32 noundef %call5) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %if.end.if.end11_crit_edge
  %call12 = call i32 @snd_soc_dapm_sync(ptr noundef %9) #6
  %micd_reva = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 28
  %17 = ptrtoint ptr %micd_reva to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %micd_reva, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %reva) #6
  %19 = getelementptr inbounds i8, ptr %reva, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 28)
  %21 = ptrtoint ptr %reva to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %reva, align 4
  %22 = getelementptr inbounds %struct.reg_sequence, ptr %reva, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %22, align 4
  %24 = getelementptr inbounds [3 x %struct.reg_sequence], ptr %reva, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 660, ptr %24, align 4
  %26 = getelementptr inbounds [3 x %struct.reg_sequence], ptr %reva, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %26, align 4
  %28 = getelementptr inbounds [3 x %struct.reg_sequence], ptr %reva, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 128, ptr %28, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call16 = call i32 @regmap_multi_reg_write(ptr noundef %31, ptr noundef nonnull %reva, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %reva) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %micvdd = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 19
  %32 = ptrtoint ptr %micvdd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %micvdd, align 4
  %call18 = call i32 @regulator_allow_bypass(ptr noundef %33, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.if.end25_crit_edge, label %do.end23

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.76, i32 noundef %call18) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end23, %if.end17.if.end25_crit_edge
  %36 = ptrtoint ptr %change to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %change, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool26.not = icmp eq i8 %37, 0
  br i1 %tobool26.not, label %if.end25.if.end33_crit_edge, label %if.then27

if.end25.if.end33_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %micvdd to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %micvdd, align 4
  %call29 = call i32 @regulator_disable(ptr noundef %39) #6
  %dev30 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev30, align 4
  %call.i52 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 12, i32 22
  %42 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store volatile i64 %call.i52, ptr %last_busy.i, align 8
  %43 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev30, align 4
  %call.i53 = call i32 @__pm_runtime_suspend(ptr noundef %44, i32 noundef 13) #6
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.end25.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %change) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_start_mic(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %change = alloca i8, align 1
  %reva = alloca [3 x %struct.reg_sequence], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %change) #6
  %2 = ptrtoint ptr %change to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %change, align 1, !annotation !396
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %detecting = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 34
  %5 = ptrtoint ptr %detecting to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %detecting, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %micvdd = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 19
  %7 = ptrtoint ptr %micvdd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %micvdd, align 4
  %call2 = tail call i32 @regulator_allow_bypass(ptr noundef %8, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end6_crit_edge, label %do.end

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.106, i32 noundef %call2) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %micvdd7 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 19
  %11 = ptrtoint ptr %micvdd7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %micvdd7, align 4
  %call8 = tail call i32 @regulator_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.if.end15_crit_edge, label %do.end13

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.109, i32 noundef %call8) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.end6.if.end15_crit_edge
  %micd_reva = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 28
  %15 = ptrtoint ptr %micd_reva to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %micd_reva, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool16.not = icmp eq i8 %16, 0
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %reva) #6
  %17 = getelementptr inbounds i8, ptr %reva, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 28)
  %19 = ptrtoint ptr %reva to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 128, ptr %reva, align 4
  %20 = getelementptr inbounds %struct.reg_sequence, ptr %reva, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %20, align 4
  %22 = getelementptr inbounds [3 x %struct.reg_sequence], ptr %reva, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 660, ptr %22, align 4
  %24 = getelementptr inbounds [3 x %struct.reg_sequence], ptr %reva, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 128, ptr %24, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call18 = call i32 @regmap_multi_reg_write(ptr noundef %27, ptr noundef nonnull %reva, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %reva) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %28 = ptrtoint ptr %detecting to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %detecting, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool21.not = icmp eq i8 %29, 0
  br i1 %tobool21.not, label %if.end19.if.else_crit_edge, label %land.lhs.true

if.end19.if.else_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end19
  %micd_software_compare = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 15
  %30 = ptrtoint ptr %micd_software_compare to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %micd_software_compare, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool22.not = icmp eq i8 %31, 0
  br i1 %tobool22.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end19.if.else_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else, %land.lhs.true.if.end24_crit_edge
  %mode.0 = phi i32 [ 0, %if.else ], [ 7, %land.lhs.true.if.end24_crit_edge ]
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i63 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 659, i32 noundef 7, i32 noundef %mode.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call fastcc void @arizona_extcon_pulse_micbias(ptr noundef %info)
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i64 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 675, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %change, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp = icmp slt i32 %call.i64, 0
  br i1 %cmp, label %do.end32, label %if.else34

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.112, i32 noundef %call.i64) #9
  br label %if.end42

if.else34:                                        ; preds = %if.end24
  %38 = ptrtoint ptr %change to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %change, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool35.not = icmp eq i8 %39, 0
  br i1 %tobool35.not, label %if.then36, label %if.else34.if.end42_crit_edge

if.else34.if.end42_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then36:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %micvdd7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %micvdd7, align 4
  %call38 = call i32 @regulator_disable(ptr noundef %41) #6
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  %call.i65 = call i32 @__pm_runtime_suspend(ptr noundef %43, i32 noundef 13) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.else34.if.end42_crit_edge, %do.end32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %change) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arizona_extcon_pulse_micbias(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %micd_modes.i = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 23
  %2 = ptrtoint ptr %micd_modes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %micd_modes.i, align 4
  %bias.i = getelementptr inbounds %struct.arizona_micd_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bias.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bias.i, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 3
  br i1 %6, label %switch.lookup, label %entry.arizona_extcon_get_micbias.exit_crit_edge

entry.arizona_extcon_get_micbias.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_extcon_get_micbias.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.arizona_extcon_pulse_micbias, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %arizona_extcon_get_micbias.exit

arizona_extcon_get_micbias.exit:                  ; preds = %switch.lookup, %entry.arizona_extcon_get_micbias.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str, %entry.arizona_extcon_get_micbias.exit_crit_edge ]
  %dapm2 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %dapm2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dapm2, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 -176
  %call4 = tail call i32 @snd_soc_component_force_enable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %arizona_extcon_get_micbias.exit.if.end_crit_edge, label %do.end

arizona_extcon_get_micbias.exit.if.end_crit_edge: ; preds = %arizona_extcon_get_micbias.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %arizona_extcon_get_micbias.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.114, ptr noundef nonnull %retval.0.i, i32 noundef %call4) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %arizona_extcon_get_micbias.exit.if.end_crit_edge
  %call5 = tail call i32 @snd_soc_dapm_sync(ptr noundef %9) #6
  %micd_force_micbias = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 22
  %12 = ptrtoint ptr %micd_force_micbias to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %micd_force_micbias, align 4, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then7:                                         ; preds = %if.end
  %call8 = tail call i32 @snd_soc_component_disable_pin(ptr noundef %add.ptr.i, ptr noundef nonnull %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end15_crit_edge, label %do.end13

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %dev14 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.99, ptr noundef nonnull %retval.0.i, i32 noundef %call8) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.then7.if.end15_crit_edge
  %call16 = tail call i32 @snd_soc_dapm_sync(ptr noundef %9) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arizona_request_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_jackdet(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !396
  %hpdet_work = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 15
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hpdet_work) #6
  %micd_timeout_work = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 17
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %micd_timeout_work) #6
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #6
  %lock = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %micd_clamp = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 29
  %5 = ptrtoint ptr %micd_clamp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %micd_clamp, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %jd_invert = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 10
  %7 = ptrtoint ptr %jd_invert to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %jd_invert, align 2, !range !394
  %9 = xor i8 %8, 1
  %10 = zext i8 %9 to i32
  br label %if.end8

if.end8:                                          ; preds = %if.else, %entry.if.end8_crit_edge
  %mask.0 = phi i32 [ 8, %entry.if.end8_crit_edge ], [ 1, %if.else ]
  %present.0 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ %10, %if.else ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call9 = call i32 @regmap_read(ptr noundef %12, i32 noundef 3413, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.162, i32 noundef %call9) #9
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, %mask.0
  store i32 %and, ptr %val, align 4
  %last_jackdet = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 21
  %17 = ptrtoint ptr %last_jackdet to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %last_jackdet, align 4
  %conv = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp = icmp eq i32 %and, %conv
  br i1 %cmp, label %do.body19, label %if.end44

do.body19:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_jackdet.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_jackdet, %if.then25)) #6
          to label %do.end29 [label %if.then25], !srcloc !395

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_jackdet.__UNIQUE_ID_ddebug318, ptr noundef %20, ptr noundef nonnull @.str.164) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body19
  br i1 %call, label %if.then31, label %do.end29.if.end35_crit_edge

do.end29.if.end35_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then31:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %21 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i184 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %hpdet_work, i32 noundef 50) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then31, %do.end29.if.end35_crit_edge
  br i1 %call2, label %if.then37, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %22 = load ptr, ptr @system_power_efficient_wq, align 4
  %micd_timeout39 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 21
  %23 = ptrtoint ptr %micd_timeout39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %micd_timeout39, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %24) #6
  %call.i185 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %micd_timeout_work, i32 noundef %call2.i) #6
  br label %out

if.end44:                                         ; preds = %if.end16
  %conv45 = trunc i32 %and to i16
  %25 = ptrtoint ptr %last_jackdet to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv45, ptr %last_jackdet, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %present.0)
  %cmp49 = icmp eq i32 %and, %present.0
  br i1 %cmp49, label %do.body52, label %do.body88

do.body52:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_jackdet.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_jackdet, %if.then64)) #6
          to label %do.end68 [label %if.then64], !srcloc !395

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_jackdet.__UNIQUE_ID_ddebug319, ptr noundef %27, ptr noundef nonnull @.str.165) #6
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body52
  %jack = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 18
  %28 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %29, i32 noundef 8, i32 noundef 8) #6
  %detecting = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 34
  %30 = ptrtoint ptr %detecting to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %detecting, align 2
  %mic = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 33
  %31 = ptrtoint ptr %mic to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %mic, align 1
  %jack_flips = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 37
  %32 = ptrtoint ptr %jack_flips to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %jack_flips, align 4
  %hpdet_acc_id = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 11
  %33 = ptrtoint ptr %hpdet_acc_id to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hpdet_acc_id, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool70.not = icmp eq i8 %34, 0
  br i1 %tobool70.not, label %if.then71, label %if.else72

if.then71:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @arizona_start_mic(ptr noundef %data)
  br label %if.end76

if.else72:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %35 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i186 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %hpdet_work, i32 noundef 50) #6
  br label %if.end76

if.end76:                                         ; preds = %if.else72, %if.then71
  %36 = ptrtoint ptr %micd_clamp to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %micd_clamp, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool78.not = icmp eq i8 %37, 0
  br i1 %tobool78.not, label %lor.lhs.false, label %if.end76.if.then83_crit_edge

if.end76.if.then83_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

lor.lhs.false:                                    ; preds = %if.end76
  %jd_invert81 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 10
  %38 = ptrtoint ptr %jd_invert81 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %jd_invert81, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool82.not = icmp eq i8 %39, 0
  br i1 %tobool82.not, label %lor.lhs.false.if.then83_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false.if.then83_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false.if.then83_crit_edge, %if.end76.if.then83_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i187 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 3414, i32 noundef 9, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %out

do.body88:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_jackdet.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_jackdet, %if.then100)) #6
          to label %do.end104 [label %if.then100], !srcloc !395

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_jackdet.__UNIQUE_ID_ddebug320, ptr noundef %43, ptr noundef nonnull @.str.166) #6
  br label %do.end104

do.end104:                                        ; preds = %if.then100, %do.body88
  call fastcc void @arizona_stop_mic(ptr noundef %data)
  %num_hpdet_res = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 35
  %mic107 = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 33
  %44 = ptrtoint ptr %mic107 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %mic107, align 1
  %hpdet_done = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 31
  %45 = ptrtoint ptr %hpdet_done to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %hpdet_done, align 1
  %hpdet_retried = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 32
  %46 = ptrtoint ptr %hpdet_retried to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %hpdet_retried, align 4
  %jack108 = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 18
  %47 = call ptr @memset(ptr %num_hpdet_res, i32 0, i32 16)
  %48 = ptrtoint ptr %jack108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %jack108, align 4
  %micd_button_mask = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 25
  %50 = ptrtoint ptr %micd_button_mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %micd_button_mask, align 4
  %or = or i32 %51, 15
  call void @snd_soc_jack_report(ptr noundef %49, i32 noundef 0, i32 noundef %or) #6
  %52 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arizona1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %val.i, align 4, !annotation !396
  %hpdet_ip_version.i = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 38
  br label %for.body.i

for.body.i:                                       ; preds = %sw.epilog.i.for.body.i_crit_edge, %do.end104
  %i.02.i = phi i32 [ 0, %do.end104 ], [ %inc.i, %sw.epilog.i.for.body.i_crit_edge ]
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %53, align 4
  %call.i188 = call i32 @regmap_read(ptr noundef %56, i32 noundef 668, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i, label %if.end.i189, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.arizona, ptr %53, i32 0, i32 1
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.167, i32 noundef %call.i188) #9
  br label %arizona_hpdet_wait.exit

if.end.i189:                                      ; preds = %for.body.i
  %59 = ptrtoint ptr %hpdet_ip_version.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hpdet_ip_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cond.i = icmp eq i32 %60, 0
  %61 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i, align 4
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end.i189
  %and.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %sw.bb.i.arizona_hpdet_wait.exit_crit_edge

sw.bb.i.arizona_hpdet_wait.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_hpdet_wait.exit

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i189
  %and5.i = and i32 %62, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %sw.default.i.sw.epilog.i_crit_edge, label %sw.default.i.arizona_hpdet_wait.exit_crit_edge

sw.default.i.arizona_hpdet_wait.exit_crit_edge:   ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %arizona_hpdet_wait.exit

sw.default.i.sw.epilog.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  call void @msleep(i32 noundef 20) #6
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %do.end11.i, label %sw.epilog.i.for.body.i_crit_edge

sw.epilog.i.for.body.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end11.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev12.i = getelementptr inbounds %struct.arizona, ptr %53, i32 0, i32 1
  %63 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev12.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.170) #9
  br label %arizona_hpdet_wait.exit

arizona_hpdet_wait.exit:                          ; preds = %do.end11.i, %sw.default.i.arizona_hpdet_wait.exit_crit_edge, %sw.bb.i.arizona_hpdet_wait.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i190 = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 3414, i32 noundef 9, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %out

out:                                              ; preds = %arizona_hpdet_wait.exit, %if.then83, %lor.lhs.false.out_crit_edge, %if.then37, %if.end35.out_crit_edge
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call114 = call i32 @regmap_write(ptr noundef %68, i32 noundef 3408, i32 noundef 204) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 4
  %call.i191 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 12, i32 22
  %71 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store volatile i64 %call.i191, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %out ]
  %72 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev, align 4
  %call.i192 = call i32 @__pm_runtime_suspend(ptr noundef %73, i32 noundef 13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arizona_set_irq_wake(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_micdet(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %micd_detect_debounce = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 16
  %2 = ptrtoint ptr %micd_detect_debounce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %micd_detect_debounce, align 4
  %micd_detect_work = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 16
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %micd_detect_work) #6
  %micd_timeout_work = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 17
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %micd_timeout_work) #6
  %lock = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %detecting = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 34
  %4 = ptrtoint ptr %detecting to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %detecting, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not19 = icmp eq i32 %3, 0
  %tobool4.not = select i1 %tobool.not, i1 true, i1 %tobool4.not19
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %6 = load ptr, ptr @system_power_efficient_wq, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #6
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %micd_detect_work, i32 noundef %call2.i) #6
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @arizona_micd_detect(ptr noundef %micd_detect_work)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arizona_hpdet_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %reading = alloca i32, align 4
  %mic = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  %hpdet_id_gpio = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 8, i32 13
  %2 = ptrtoint ptr %hpdet_id_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpdet_id_gpio, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reading) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mic) #6
  %4 = ptrtoint ptr %mic to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %mic, align 1
  %lock = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %hpdet_active = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 30
  %5 = ptrtoint ptr %hpdet_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hpdet_active, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.172) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %jack = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 18
  %9 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %jack, align 4
  %status = getelementptr inbounds %struct.snd_soc_jack, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body5, label %if.end14

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_irq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_irq, %if.then9)) #6
          to label %done [label %if.then9], !srcloc !395

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_irq.__UNIQUE_ID_ddebug307, ptr noundef %14, ptr noundef nonnull @.str.174) #6
  br label %done

if.end14:                                         ; preds = %if.end
  %call15 = tail call fastcc i32 @arizona_hpdet_read(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call15)
  %cmp = icmp eq i32 %call15, -11
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.else

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.else.done_crit_edge, label %if.end20

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end20:                                         ; preds = %if.else
  %15 = ptrtoint ptr %reading to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call15, ptr %reading, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 667, i32 noundef 1537, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call22 = call fastcc i32 @arizona_hpdet_do_id(ptr noundef %data, ptr noundef nonnull %reading, ptr noundef nonnull %mic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call22)
  %cmp23 = icmp eq i32 %call22, -11
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.else25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp26 = icmp slt i32 %call22, 0
  br i1 %cmp26, label %if.else25.done_crit_edge, label %if.end29

if.else25.done_crit_edge:                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end29:                                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %reading to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reading, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4999, i32 %19)
  %cmp30 = icmp sgt i32 %19, 4999
  %. = select i1 %cmp30, i32 4, i32 1
  %20 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %21, i32 noundef %., i32 noundef 5) #6
  br label %done

done:                                             ; preds = %if.end29, %if.else25.done_crit_edge, %if.else.done_crit_edge, %if.then9, %do.body5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 667, i32 noundef 1537, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call fastcc void @arizona_extcon_hp_clamp(ptr noundef %data, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool37.not = icmp eq i32 %3, 0
  br i1 %tobool37.not, label %done.if.end39_crit_edge, label %if.then38

done.if.end39_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then38:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  %call.i91 = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i91, i32 noundef 0) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %done.if.end39_crit_edge
  br i1 %tobool3.not, label %if.end39.if.end45_crit_edge, label %land.lhs.true

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

land.lhs.true:                                    ; preds = %if.end39
  %24 = ptrtoint ptr %mic to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mic, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool41.not = icmp eq i8 %25, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %land.lhs.true.if.then44_crit_edge

land.lhs.true.if.then44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

lor.lhs.false:                                    ; preds = %land.lhs.true
  %mic42 = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 33
  %26 = ptrtoint ptr %mic42 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mic42, align 1, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool43.not = icmp eq i8 %27, 0
  br i1 %tobool43.not, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %land.lhs.true.if.then44_crit_edge
  tail call fastcc void @arizona_start_mic(ptr noundef %data)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %lor.lhs.false.if.end45_crit_edge, %if.end39.if.end45_crit_edge
  %28 = ptrtoint ptr %hpdet_active to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hpdet_active, align 2, !range !394
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool47.not = icmp eq i8 %29, 0
  br i1 %tobool47.not, label %if.end45.if.end52_crit_edge, label %if.then48

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %dev49 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev49, align 4
  %call.i92 = tail call i32 @__pm_runtime_suspend(ptr noundef %31, i32 noundef 13) #6
  %32 = ptrtoint ptr %hpdet_active to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %hpdet_active, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end45.if.end52_crit_edge
  br i1 %tobool3.not, label %if.end52.cleanup_crit_edge, label %if.then54

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %hpdet_done = getelementptr inbounds %struct.arizona_priv, ptr %data, i32 0, i32 31
  %33 = ptrtoint ptr %hpdet_done to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %hpdet_done, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end52.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end52.cleanup_crit_edge ], [ 1, %if.then54 ], [ 1, %if.end20.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mic) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reading) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arizona_clk32k_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arizona_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arizona_hpdet_read(ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %range = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arizona1 = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %arizona1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arizona1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !396
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %range) #6
  %3 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %range, align 4, !annotation !396
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 668, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.175, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hpdet_ip_version = getelementptr inbounds %struct.arizona_priv, ptr %info, i32 0, i32 38
  %8 = ptrtoint ptr %hpdet_ip_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hpdet_ip_version, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %9, label %do.end165 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb90
  ]

sw.bb:                                            ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.178, i32 noundef %12) #9
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %12, 127
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and9, ptr %val, align 4
  br label %do.body168

sw.bb10:                                          ; preds = %if.end
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and11 = and i32 %17, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.178, i32 noundef %17) #9
  br label %cleanup

if.end18:                                         ; preds = %sw.bb10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call20 = call i32 @regmap_read(ptr noundef %21, i32 noundef 671, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %dev26 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.183, i32 noundef %call20) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call29 = call i32 @regmap_read(ptr noundef %25, i32 noundef 667, ptr noundef nonnull %range) #6
  %26 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %range, align 4
  %and30 = lshr i32 %27, 9
  %shr = and i32 %and30, 3
  store i32 %shr, ptr %range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp = icmp ult i32 %shr, 2
  br i1 %cmp, label %land.lhs.true, label %if.end27.if.end46_crit_edge

if.end27.if.end46_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end27
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %arrayidx = getelementptr [3 x %struct.anon.107], ptr @arizona_hpdet_b_ranges, i32 0, i32 %shr
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp31 = icmp ult i32 %29, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1018, i32 %29)
  %cmp32 = icmp ugt i32 %29, 1018
  %or.cond = or i1 %cmp32, %cmp31
  br i1 %or.cond, label %if.then33, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then33:                                        ; preds = %land.lhs.true
  %inc = add nuw nsw i32 %shr, 1
  %32 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc, ptr %range, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_read, %if.then39)) #6
          to label %do.end43 [label %if.then39], !srcloc !395

if.then39:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %dev40 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev40, align 4
  %35 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %range, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_read.__UNIQUE_ID_ddebug296, ptr noundef %34, ptr noundef nonnull @.str.185, i32 noundef %36) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %if.then33
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %range, align 4
  %shl = shl i32 %40, 9
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 667, i32 noundef 1536, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end27.if.end46_crit_edge
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %arrayidx47 = getelementptr [3 x %struct.anon.107], ptr @arizona_hpdet_b_ranges, i32 0, i32 %shr
  %43 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp49 = icmp ult i32 %42, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1018, i32 %42)
  %cmp51 = icmp ugt i32 %42, 1018
  %or.cond214 = or i1 %cmp51, %cmp49
  br i1 %or.cond214, label %do.body53, label %do.body71

do.body53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_read, %if.then65)) #6
          to label %cleanup [label %if.then65], !srcloc !395

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %dev66 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev66, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_read.__UNIQUE_ID_ddebug297, ptr noundef %46, ptr noundef nonnull @.str.186) #6
  br label %cleanup

do.body71:                                        ; preds = %if.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_read, %if.then83)) #6
          to label %do.end87 [label %if.then83], !srcloc !395

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  %dev84 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %47 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev84, align 4
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %51 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %range, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_read.__UNIQUE_ID_ddebug298, ptr noundef %48, ptr noundef nonnull @.str.187, i32 noundef %50, i32 noundef %52) #6
  br label %do.end87

do.end87:                                         ; preds = %if.then83, %do.body71
  %53 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %range, align 4
  %factor_b = getelementptr [3 x %struct.anon.107], ptr @arizona_hpdet_b_ranges, i32 0, i32 %54, i32 2
  %55 = ptrtoint ptr %factor_b to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %factor_b, align 4
  %57 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %val, align 4
  %mul = mul i32 %58, 100
  %factor_a = getelementptr [3 x %struct.anon.107], ptr @arizona_hpdet_b_ranges, i32 0, i32 %54, i32 1
  %59 = ptrtoint ptr %factor_a to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %factor_a, align 4
  %sub = sub i32 %mul, %60
  %div = udiv i32 %56, %sub
  store i32 %div, ptr %val, align 4
  br label %do.body168

sw.bb90:                                          ; preds = %if.end
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  %and91 = and i32 %62, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.end96, label %if.end98

do.end96:                                         ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #8
  %dev97 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.178, i32 noundef %62) #9
  br label %cleanup

if.end98:                                         ; preds = %sw.bb90
  %and99 = lshr i32 %62, 1
  %div100213 = and i32 %and99, 16383
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %div100213, ptr %val, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call102 = call i32 @regmap_read(ptr noundef %67, i32 noundef 667, ptr noundef nonnull %range) #6
  %68 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %range, align 4
  %and103 = lshr i32 %69, 9
  %shr104 = and i32 %and103, 3
  store i32 %shr104, ptr %range, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr104)
  %cmp105.not = icmp eq i32 %shr104, 3
  br i1 %cmp105.not, label %if.end98.land.lhs.true136_crit_edge, label %land.lhs.true106

if.end98.land.lhs.true136_crit_edge:              ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true136

land.lhs.true106:                                 ; preds = %if.end98
  %70 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val, align 4
  %max = getelementptr [4 x %struct.anon.108], ptr @arizona_hpdet_c_ranges, i32 0, i32 %shr104, i32 1
  %72 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp108.not = icmp ult i32 %71, %73
  br i1 %cmp108.not, label %if.end134, label %if.then109

if.then109:                                       ; preds = %land.lhs.true106
  %inc110 = add nuw nsw i32 %shr104, 1
  %74 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc110, ptr %range, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_read, %if.then123)) #6
          to label %do.end130 [label %if.then123], !srcloc !395

if.then123:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %dev124 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev124, align 4
  %77 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %range, align 4
  %arrayidx125 = getelementptr [4 x %struct.anon.108], ptr @arizona_hpdet_c_ranges, i32 0, i32 %78
  %79 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx125, align 4
  %max127 = getelementptr [4 x %struct.anon.108], ptr @arizona_hpdet_c_ranges, i32 0, i32 %78, i32 1
  %81 = ptrtoint ptr %max127 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max127, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_read.__UNIQUE_ID_ddebug299, ptr noundef %76, ptr noundef nonnull @.str.190, i32 noundef %80, i32 noundef %82) #6
  br label %do.end130

do.end130:                                        ; preds = %if.then123, %if.then109
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %85 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %range, align 4
  %shl132 = shl i32 %86, 9
  %call.i230 = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 667, i32 noundef 1536, i32 noundef %shl132, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.end134:                                        ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr104)
  %tobool135.not = icmp eq i32 %shr104, 0
  br i1 %tobool135.not, label %if.end134.do.body168_crit_edge, label %if.end134.land.lhs.true136_crit_edge

if.end134.land.lhs.true136_crit_edge:             ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true136

if.end134.do.body168_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

land.lhs.true136:                                 ; preds = %if.end134.land.lhs.true136_crit_edge, %if.end98.land.lhs.true136_crit_edge
  %87 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val, align 4
  %arrayidx137 = getelementptr [4 x %struct.anon.108], ptr @arizona_hpdet_c_ranges, i32 0, i32 %shr104
  %89 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx137, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp139 = icmp ult i32 %88, %90
  br i1 %cmp139, label %do.body141, label %land.lhs.true136.do.body168_crit_edge

land.lhs.true136.do.body168_crit_edge:            ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

do.body141:                                       ; preds = %land.lhs.true136
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_read, %if.then153)) #6
          to label %do.end159 [label %if.then153], !srcloc !395

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #8
  %dev154 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %91 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev154, align 4
  %93 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %range, align 4
  %arrayidx155 = getelementptr [4 x %struct.anon.108], ptr @arizona_hpdet_c_ranges, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx155, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_read.__UNIQUE_ID_ddebug300, ptr noundef %92, ptr noundef nonnull @.str.191, i32 noundef %96) #6
  br label %do.end159

do.end159:                                        ; preds = %if.then153, %do.body141
  %97 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %range, align 4
  %arrayidx160 = getelementptr [4 x %struct.anon.108], ptr @arizona_hpdet_c_ranges, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx160, align 4
  %101 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %val, align 4
  br label %do.body168

do.end165:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev166 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %102 = ptrtoint ptr %dev166 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev166, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.193, i32 noundef %9) #9
  br label %cleanup

do.body168:                                       ; preds = %do.end159, %land.lhs.true136.do.body168_crit_edge, %if.end134.do.body168_crit_edge, %do.end87, %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arizona_hpdet_read, %if.then180)) #6
          to label %do.end184 [label %if.then180], !srcloc !395

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #8
  %dev181 = getelementptr inbounds %struct.arizona, ptr %1, i32 0, i32 1
  %104 = ptrtoint ptr %dev181 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev181, align 4
  %106 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arizona_hpdet_read.__UNIQUE_ID_ddebug301, ptr noundef %105, ptr noundef nonnull @.str.195, i32 noundef %107) #6
  br label %do.end184

do.end184:                                        ; preds = %if.then180, %do.body168
  %108 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end184, %do.end165, %do.end130, %do.end96, %if.then65, %do.body53, %do.end43, %do.end25, %do.end16, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end165 ], [ -11, %do.end130 ], [ %109, %do.end184 ], [ -11, %do.end96 ], [ -11, %do.end25 ], [ -11, %do.end43 ], [ -11, %do.end16 ], [ -11, %do.end6 ], [ 10000, %if.then65 ], [ 10000, %do.body53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %range) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arizona_clk32k_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 192)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !155, !156, !158, !159, !161, !163, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !201, !203, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !247, !248, !249, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !269, !271, !272, !273, !275, !276, !277, !279, !281, !282, !283, !285, !286, !287, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !305, !306, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !321, !322, !324, !325, !326, !328, !329, !330, !331, !333, !334, !336, !337, !338, !339, !341, !342, !343, !345, !346, !348, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370, !371, !372, !374, !375, !377, !379, !381, !382, !383}
!llvm.module.flags = !{!384, !385, !386, !387, !388, !389, !390, !391}
!llvm.ident = !{!392}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1265, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1267, i32 61}
!4 = !{ptr @arizona_jack_codec_dev_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1269, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @arizona_jack_codec_dev_probe.__key.3, !8, !"__key", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1271, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @arizona_jack_codec_dev_probe.__key.5, !8, !"__key", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @arizona_jack_codec_dev_probe.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1272, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @arizona_jack_codec_dev_probe.__key.9, !13, !"__key", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @arizona_jack_codec_dev_probe.__key.11, !18, !"__key", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1273, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @arizona_jack_codec_dev_probe.__key.13, !18, !"__key", i1 false, i1 false}
!21 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1329, i32 16}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1331, i32 4}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.19, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.20, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @arizona_jack_codec_dev_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @arizona_jack_codec_dev_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1349, i32 9}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1353, i32 37}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1361, i32 10}
!38 = !{ptr @arizona_jack_codec_dev_probe._entry.24, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1363, i32 4}
!40 = !{ptr @arizona_jack_codec_dev_probe._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @__ksymtab_arizona_jack_codec_dev_probe, !42, !"__ksymtab_arizona_jack_codec_dev_probe", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1372, i32 1}
!43 = !{ptr @__ksymtab_arizona_jack_codec_dev_remove, !44, !"__ksymtab_arizona_jack_codec_dev_remove", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1379, i32 1}
!45 = !{ptr @__ksymtab_arizona_jack_set_jack, !46, !"__ksymtab_arizona_jack_set_jack", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1657, i32 1}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1207, i32 41}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1214, i32 3}
!51 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @arizona_extcon_device_get_pdata._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @arizona_extcon_device_get_pdata._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1218, i32 41}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1221, i32 41}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1224, i32 41}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1227, i32 41}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1230, i32 41}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1234, i32 7}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1237, i32 7}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1240, i32 12}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1242, i32 41}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1245, i32 11}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1247, i32 7}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1251, i32 3}
!78 = !{ptr @arizona_extcon_device_get_pdata._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @arizona_extcon_device_get_pdata._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1159, i32 28}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/arizona-jack.c", i32 669, i32 2}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @arizona_start_hpdet_acc_id.__UNIQUE_ID_ddebug309, !83, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/arizona-jack.c", i32 684, i32 3}
!89 = !{ptr @arizona_start_hpdet_acc_id._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @arizona_start_hpdet_acc_id._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/arizona-jack.c", i32 693, i32 4}
!93 = !{ptr @arizona_start_hpdet_acc_id._entry.48, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @arizona_start_hpdet_acc_id._entry_ptr.50, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/arizona-jack.c", i32 127, i32 4}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @arizona_extcon_hp_clamp._entry, !96, !"_entry", i1 false, i1 false}
!100 = !{ptr @arizona_extcon_hp_clamp._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/arizona-jack.c", i32 147, i32 4}
!103 = !{ptr @arizona_extcon_hp_clamp._entry.54, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @arizona_extcon_hp_clamp._entry_ptr.56, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/arizona-jack.c", i32 154, i32 4}
!107 = !{ptr @arizona_extcon_hp_clamp._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @arizona_extcon_hp_clamp._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @arizona_extcon_hp_clamp._entry.60, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/arizona-jack.c", i32 159, i32 4}
!111 = !{ptr @arizona_extcon_hp_clamp._entry_ptr.61, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/arizona-jack.c", i32 169, i32 4}
!114 = !{ptr @arizona_extcon_hp_clamp._entry.62, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @arizona_extcon_hp_clamp._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/arizona-jack.c", i32 478, i32 3}
!118 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug302, !117, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/arizona-jack.c", i32 495, i32 2}
!122 = !{ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug303, !121, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!123 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/arizona-jack.c", i32 503, i32 3}
!125 = !{ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug304, !124, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/arizona-jack.c", i32 515, i32 3}
!128 = !{ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug305, !127, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/arizona-jack.c", i32 519, i32 3}
!131 = !{ptr @arizona_hpdet_do_id.__UNIQUE_ID_ddebug306, !130, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/arizona-jack.c", i32 934, i32 3}
!134 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @arizona_micd_detect.__UNIQUE_ID_ddebug317, !133, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/arizona-jack.c", i32 809, i32 3}
!138 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @arizona_micdet_reading._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @arizona_micdet_reading._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.76, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/arizona-jack.c", i32 828, i32 4}
!143 = !{ptr @arizona_micdet_reading._entry.75, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @arizona_micdet_reading._entry_ptr.77, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/arizona-jack.c", i32 841, i32 4}
!147 = !{ptr @arizona_micdet_reading.__UNIQUE_ID_ddebug313, !146, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/arizona-jack.c", i32 872, i32 2}
!150 = !{ptr @arizona_micdet_reading.__UNIQUE_ID_ddebug314, !149, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/arizona-jack.c", i32 739, i32 3}
!153 = !{ptr @.str.81, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @arizona_micd_adc_read._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @arizona_micd_adc_read._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.82, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/arizona-jack.c", i32 743, i32 2}
!158 = !{ptr @arizona_micd_adc_read.__UNIQUE_ID_ddebug311, !157, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!159 = !{ptr @arizona_micd_levels, !160, !"arizona_micd_levels", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/arizona-jack.c", i32 87, i32 18}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/arizona-jack.c", i32 772, i32 4}
!163 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @arizona_micd_read._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @arizona_micd_read._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/arizona-jack.c", i32 776, i32 3}
!168 = !{ptr @arizona_micd_read.__UNIQUE_ID_ddebug312, !167, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/arizona-jack.c", i32 779, i32 4}
!171 = !{ptr @arizona_micd_read._entry.86, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @arizona_micd_read._entry_ptr.88, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.90, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/arizona-jack.c", i32 785, i32 3}
!175 = !{ptr @arizona_micd_read._entry.89, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @arizona_micd_read._entry_ptr.91, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.92, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/arizona-jack.c", i32 619, i32 2}
!179 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @arizona_identify_headphone.__UNIQUE_ID_ddebug308, !178, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!181 = !{ptr @arizona_identify_headphone._entry, !182, !"_entry", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/arizona-jack.c", i32 635, i32 3}
!183 = !{ptr @arizona_identify_headphone._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @arizona_identify_headphone._entry.94, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/arizona-jack.c", i32 642, i32 3}
!186 = !{ptr @arizona_identify_headphone._entry_ptr.95, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/arizona-jack.c", i32 298, i32 3}
!189 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @arizona_stop_mic._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @arizona_stop_mic._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.99, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/arizona-jack.c", i32 302, i32 3}
!194 = !{ptr @arizona_stop_mic._entry.98, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @arizona_stop_mic._entry_ptr.100, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @arizona_stop_mic._entry.101, !197, !"_entry", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/arizona-jack.c", i32 318, i32 3}
!198 = !{ptr @arizona_stop_mic._entry_ptr.102, !197, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/arizona-jack.c", i32 200, i32 10}
!201 = !{ptr @.str.104, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/arizona-jack.c", i32 202, i32 10}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/arizona-jack.c", i32 204, i32 10}
!205 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/arizona-jack.c", i32 246, i32 4}
!207 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @arizona_start_mic._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @arizona_start_mic._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/arizona-jack.c", i32 251, i32 3}
!212 = !{ptr @arizona_start_mic._entry.108, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @arizona_start_mic._entry_ptr.110, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/arizona-jack.c", i32 278, i32 3}
!216 = !{ptr @arizona_start_mic._entry.111, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @arizona_start_mic._entry_ptr.113, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.114, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/arizona-jack.c", i32 220, i32 3}
!220 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @arizona_extcon_pulse_micbias._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @arizona_extcon_pulse_micbias._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @arizona_extcon_pulse_micbias._entry.116, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/arizona-jack.c", i32 227, i32 4}
!225 = !{ptr @arizona_extcon_pulse_micbias._entry_ptr.117, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.118, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/arizona-jack.c", i32 193, i32 2}
!228 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @arizona_extcon_set_mode.__UNIQUE_ID_ddebug295, !227, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!230 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/arizona-jack.c", i32 896, i32 4}
!232 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @arizona_button_reading.__UNIQUE_ID_ddebug315, !231, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!234 = !{ptr @.str.122, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/arizona-jack.c", i32 907, i32 5}
!236 = !{ptr @arizona_button_reading._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @arizona_button_reading._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.124, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/arizona-jack.c", i32 910, i32 4}
!240 = !{ptr @arizona_button_reading._entry.123, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @arizona_button_reading._entry_ptr.125, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.126, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/arizona-jack.c", i32 913, i32 3}
!244 = !{ptr @arizona_button_reading.__UNIQUE_ID_ddebug316, !243, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!245 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/arizona-jack.c", i32 718, i32 2}
!247 = !{ptr @.str.128, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @arizona_micd_timeout_work.__UNIQUE_ID_ddebug310, !246, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!249 = !{ptr @micd_default_modes, !250, !"micd_default_modes", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/arizona-jack.c", i32 70, i32 41}
!251 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1429, i32 3}
!253 = !{ptr @.str.130, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @arizona_jack_enable_jack_detect._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.132, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1438, i32 5}
!258 = !{ptr @arizona_jack_enable_jack_detect._entry.131, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.133, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.135, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1455, i32 4}
!262 = !{ptr @arizona_jack_enable_jack_detect._entry.134, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.136, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.137, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1460, i32 3}
!266 = !{ptr @arizona_jack_enable_jack_detect.__UNIQUE_ID_ddebug322, !265, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!267 = !{ptr @.str.138, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1529, i32 7}
!269 = !{ptr @.str.140, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1531, i32 3}
!271 = !{ptr @arizona_jack_enable_jack_detect._entry.139, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.141, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.143, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1537, i32 3}
!275 = !{ptr @arizona_jack_enable_jack_detect._entry.142, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.144, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.145, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1542, i32 7}
!279 = !{ptr @.str.147, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1544, i32 3}
!281 = !{ptr @arizona_jack_enable_jack_detect._entry.146, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.148, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.150, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1550, i32 3}
!285 = !{ptr @arizona_jack_enable_jack_detect._entry.149, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.151, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.152, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1555, i32 7}
!289 = !{ptr @.str.154, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1557, i32 3}
!291 = !{ptr @arizona_jack_enable_jack_detect._entry.153, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.155, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.157, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1564, i32 3}
!295 = !{ptr @arizona_jack_enable_jack_detect._entry.156, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.158, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.160, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1576, i32 3}
!299 = !{ptr @arizona_jack_enable_jack_detect._entry.159, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @arizona_jack_enable_jack_detect._entry_ptr.161, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @micd_default_ranges, !302, !"micd_default_ranges", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/arizona-jack.c", i32 75, i32 40}
!303 = !{ptr @.str.162, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1044, i32 3}
!305 = !{ptr @.str.163, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @arizona_jackdet._entry, !304, !"_entry", i1 false, i1 false}
!307 = !{ptr @arizona_jackdet._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.164, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1052, i32 3}
!310 = !{ptr @arizona_jackdet.__UNIQUE_ID_ddebug318, !309, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!311 = !{ptr @.str.165, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1071, i32 3}
!313 = !{ptr @arizona_jackdet.__UNIQUE_ID_ddebug319, !312, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!314 = !{ptr @.str.166, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1092, i32 3}
!316 = !{ptr @arizona_jackdet.__UNIQUE_ID_ddebug320, !315, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!317 = !{ptr @.str.167, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/arizona-jack.c", i32 993, i32 4}
!319 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @arizona_hpdet_wait._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @arizona_hpdet_wait._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.170, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1011, i32 2}
!324 = !{ptr @arizona_hpdet_wait._entry.169, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @arizona_hpdet_wait._entry_ptr.171, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.172, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/arizona-jack.c", i32 541, i32 3}
!328 = !{ptr @.str.173, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @arizona_hpdet_irq._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @arizona_hpdet_irq._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.174, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/arizona-jack.c", i32 549, i32 3}
!333 = !{ptr @arizona_hpdet_irq.__UNIQUE_ID_ddebug307, !332, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!334 = !{ptr @.str.175, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/arizona-jack.c", i32 357, i32 3}
!336 = !{ptr @.str.176, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @arizona_hpdet_read._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @arizona_hpdet_read._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.178, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/arizona-jack.c", i32 364, i32 4}
!341 = !{ptr @arizona_hpdet_read._entry.177, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @arizona_hpdet_read._entry_ptr.179, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @arizona_hpdet_read._entry.180, !344, !"_entry", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/arizona-jack.c", i32 373, i32 4}
!345 = !{ptr @arizona_hpdet_read._entry_ptr.181, !344, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.183, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/arizona-jack.c", i32 379, i32 4}
!348 = !{ptr @arizona_hpdet_read._entry.182, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @arizona_hpdet_read._entry_ptr.184, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.185, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/arizona-jack.c", i32 392, i32 4}
!352 = !{ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug296, !351, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!353 = !{ptr @.str.186, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/arizona-jack.c", i32 404, i32 4}
!355 = !{ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug297, !354, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!356 = !{ptr @.str.187, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/arizona-jack.c", i32 408, i32 3}
!358 = !{ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug298, !357, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!359 = !{ptr @arizona_hpdet_read._entry.188, !360, !"_entry", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/arizona-jack.c", i32 417, i32 4}
!361 = !{ptr @arizona_hpdet_read._entry_ptr.189, !360, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.190, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/arizona-jack.c", i32 434, i32 4}
!364 = !{ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug299, !363, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!365 = !{ptr @.str.191, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/arizona-jack.c", i32 446, i32 4}
!367 = !{ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug300, !366, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!368 = !{ptr @.str.193, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/arizona-jack.c", i32 453, i32 3}
!370 = !{ptr @arizona_hpdet_read._entry.192, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @arizona_hpdet_read._entry_ptr.194, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.195, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/arizona-jack.c", i32 457, i32 2}
!374 = !{ptr @arizona_hpdet_read.__UNIQUE_ID_ddebug301, !373, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!375 = !{ptr @arizona_hpdet_b_ranges, !376, !"arizona_hpdet_b_ranges", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/arizona-jack.c", i32 331, i32 3}
!377 = !{ptr @arizona_hpdet_c_ranges, !378, !"arizona_hpdet_c_ranges", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/arizona-jack.c", i32 342, i32 3}
!379 = !{ptr @.str.196, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/arizona-jack.c", i32 1630, i32 3}
!381 = !{ptr @.str.197, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @arizona_jack_disable_jack_detect._entry, !380, !"_entry", i1 false, i1 false}
!383 = !{ptr @arizona_jack_disable_jack_detect._entry_ptr, !380, !"_entry_ptr", i1 false, i1 false}
!384 = !{i32 1, !"wchar_size", i32 2}
!385 = !{i32 1, !"min_enum_size", i32 4}
!386 = !{i32 8, !"branch-target-enforcement", i32 0}
!387 = !{i32 8, !"sign-return-address", i32 0}
!388 = !{i32 8, !"sign-return-address-all", i32 0}
!389 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!390 = !{i32 7, !"uwtable", i32 1}
!391 = !{i32 7, !"frame-pointer", i32 2}
!392 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!393 = !{!"branch_weights", i32 1, i32 2000}
!394 = !{i8 0, i8 2}
!395 = !{i64 2148733031, i64 2148733036, i64 2148733049, i64 2148733093, i64 2148733127, i64 2148733148}
!396 = !{!"auto-init"}
!397 = !{i32 0, i32 33}
