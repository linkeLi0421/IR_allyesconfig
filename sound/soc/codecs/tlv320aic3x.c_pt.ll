; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tlv320aic3x.c_pt.bc'
source_filename = "../sound/soc/codecs/tlv320aic3x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+aic3x_regmap\22, \22a\22\09"
module asm "\09.weak\09__crc_aic3x_regmap\09\09\09\09"
module asm "\09.long\09__crc_aic3x_regmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aic3x_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22aic3x_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_aic3x_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+aic3x_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_aic3x_probe\09\09\09\09"
module asm "\09.long\09__crc_aic3x_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aic3x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22aic3x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_aic3x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+aic3x_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_aic3x_remove\09\09\09\09"
module asm "\09.long\09__crc_aic3x_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aic3x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22aic3x_remove\22\09\09\09\09\09"
module asm "__kstrtabns_aic3x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.aic3x_priv = type { ptr, ptr, [4 x %struct.regulator_bulk_data], [4 x %struct.aic3x_disable_nb], ptr, i32, i32, i32, i32, %struct.list_head, i32, i32, i32, i16, i32, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.aic3x_disable_nb = type { %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.aic3x_pdata = type { i32, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dapm_update = type { ptr, i32, i32, i32, i32, i32, i32, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.95 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.90, [128 x i8] }
%union.anon.90 = type { %union.anon.92 }
%union.anon.92 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@aic3x_reg = internal constant { [110 x %struct.reg_default], [208 x i8] } { [110 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 16 }, %struct.reg_default { i32 4, i32 4 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 1 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 128 }, %struct.reg_default { i32 16, i32 128 }, %struct.reg_default { i32 17, i32 255 }, %struct.reg_default { i32 18, i32 255 }, %struct.reg_default { i32 19, i32 120 }, %struct.reg_default { i32 20, i32 120 }, %struct.reg_default { i32 21, i32 120 }, %struct.reg_default { i32 22, i32 120 }, %struct.reg_default { i32 23, i32 120 }, %struct.reg_default { i32 24, i32 120 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 254 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 254 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 24 }, %struct.reg_default { i32 33, i32 24 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 128 }, %struct.reg_default { i32 44, i32 128 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 4 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 4 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 4 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 4 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 2 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }], [208 x i8] zeroinitializer }, align 32
@aic3x_regmap = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @aic3x_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 109, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic3x_reg, i32 110, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_aic3x_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_aic3x_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_aic3x_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aic3x_regmap to i32), ptr @__kstrtab_aic3x_regmap, ptr @__kstrtabns_aic3x_regmap }, section "___ksymtab_gpl+aic3x_regmap", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio-reset\00", [21 x i8] zeroinitializer }, align 32
@aic3x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1788, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Using deprecated property \22gpio-reset\22, please update your DT\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aic3x_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/codecs/tlv320aic3x.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aic3x_probe._entry_ptr = internal global ptr @aic3x_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ai3x-gpio-func\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ai3x-micbias-vg\00", [16 x i8] zeroinitializer }, align 32
@aic3x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1814, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unsuitable MicBias voltage found in DT\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@aic3x_probe._entry_ptr.12 = internal global ptr @aic3x_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tlv320aic3x reset\00", [46 x i8] zeroinitializer }, align 32
@aic3x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1840, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@aic3x_probe._entry_ptr.16 = internal global ptr @aic3x_probe._entry.14, section ".printk_index", align 4
@aic3007_class_d = internal constant { [6 x %struct.reg_sequence], [56 x i8] } { [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 0, i32 13, i32 0 }, %struct.reg_sequence { i32 13, i32 13, i32 0 }, %struct.reg_sequence { i32 8, i32 92, i32 0 }, %struct.reg_sequence { i32 8, i32 93, i32 0 }, %struct.reg_sequence { i32 8, i32 92, i32 0 }, %struct.reg_sequence zeroinitializer], [56 x i8] zeroinitializer }, align 32
@aic3x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1851, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to init class D: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@aic3x_probe._entry_ptr.19 = internal global ptr @aic3x_probe._entry.17, section ".printk_index", align 4
@soc_component_dev_aic3x = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @aic3x_snd_controls, i32 38, ptr @aic3x_dapm_widgets, i32 28, ptr @intercon, i32 68, ptr @aic3x_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic3x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@aic3x_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.315, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @aic3x_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.316, i64 73014445124, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.317, i64 73014445124, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@reset_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @reset_list, ptr @reset_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_aic3x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_aic3x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_aic3x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aic3x_probe to i32), ptr @__kstrtab_aic3x_probe, ptr @__kstrtabns_aic3x_probe }, section "___ksymtab+aic3x_probe", align 4
@__kstrtab_aic3x_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_aic3x_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_aic3x_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aic3x_remove to i32), ptr @__kstrtab_aic3x_remove, ptr @__kstrtabns_aic3x_remove }, section "___ksymtab+aic3x_remove", align 4
@__UNIQUE_ID_description294 = internal constant [62 x i8] c"snd_soc_tlv320aic3x.description=ASoC TLV320AIC3X codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [44 x i8] c"snd_soc_tlv320aic3x.author=Vladimir Barinov\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [62 x i8] c"snd_soc_tlv320aic3x.file=sound/soc/codecs/snd-soc-tlv320aic3x\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [32 x i8] c"snd_soc_tlv320aic3x.license=GPL\00", section ".modinfo", align 1
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IOVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DRVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ai3x-ocmv\00", [22 x i8] zeroinitializer }, align 32
@aic3x_configure_ocmv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 1724, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Too high supply voltage(s) AVDD: %d, DVDD: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aic3x_configure_ocmv\00", [43 x i8] zeroinitializer }, align 32
@aic3x_configure_ocmv._entry_ptr = internal global ptr @aic3x_configure_ocmv._entry, section ".printk_index", align 4
@aic3x_configure_ocmv._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 1736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid supply voltage(s) AVDD: %d, DVDD: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@aic3x_configure_ocmv._entry_ptr.29 = internal global ptr @aic3x_configure_ocmv._entry.27, section ".printk_index", align 4
@aic3x_snd_controls = internal constant { [38 x %struct.snd_kcontrol_new], [448 x i8] } { [38 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_lagc_level_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_ragc_level_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_lagc_attack_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_ragc_attack_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_lagc_decay_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_ragc_decay_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_adc_hpf_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_poweron_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_rampup_step_enum to i32) }], [448 x i8] zeroinitializer }, align 32
@intercon = internal constant { [68 x %struct.snd_soc_dapm_route], [880 x i8] } { [68 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.167, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.174, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.167, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.174, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.176, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.177, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.167, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.174, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.167, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.174, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.176, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.177, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.162, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.164, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.163, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.168, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.170, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.169, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.180, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.181, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.182, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.183, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.180, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.181, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.182, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.183, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.180, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.181, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.182, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.183, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.180, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.181, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.182, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.183, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr @.str.180, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr @.str.181, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr @.str.182, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr @.str.183, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.165, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.166, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.167, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.180, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.181, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.182, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.183, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.171, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.166, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.167, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.172, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.173, ptr @.str.188, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }], [880 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@dac_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 43, i32 44, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Left Line Mixer PGAR Bypass Volume\00", [61 x i8] zeroinitializer }, align 32
@output_stage_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5900, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 84, i32 84, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Left Line Mixer DACR1 Playback Volume\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 85, i32 85, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Right Line Mixer PGAL Bypass Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 88, i32 88, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Right Line Mixer DACL1 Playback Volume\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 89, i32 89, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Left HP Mixer PGAR Bypass Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 49, i32 49, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Left HP Mixer DACR1 Playback Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 50, i32 50, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Right HP Mixer PGAL Bypass Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 60, i32 60, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Right HP Mixer DACL1 Playback Volume\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 61, i32 61, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Left HPCOM Mixer PGAR Bypass Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 56, i32 56, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Left HPCOM Mixer DACR1 Playback Volume\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 57, i32 57, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Right HPCOM Mixer PGAL Bypass Volume\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 67, i32 67, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Right HPCOM Mixer DACL1 Playback Volume\00", [56 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 68, i32 68, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Line PGA Bypass Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 81, i32 91, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line DAC Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 82, i32 92, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HP PGA Bypass Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 46, i32 63, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HP DAC Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 47, i32 64, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HPCOM PGA Bypass Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 53, i32 70, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HPCOM DAC Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 54, i32 71, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 86, i32 93, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 93, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HP Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 51, i32 65, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HP Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 65, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HPCOM Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 58, i32 72, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HPCOM Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 72, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AGC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 29, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left AGC Target level\00", [42 x i8] zeroinitializer }, align 32
@aic3x_lagc_level_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 4, i8 4, i32 8, i32 7, ptr @aic3x_agc_level, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right AGC Target level\00", [41 x i8] zeroinitializer }, align 32
@aic3x_ragc_level_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 29, i8 4, i8 4, i32 8, i32 7, ptr @aic3x_agc_level, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left AGC Attack time\00", [43 x i8] zeroinitializer }, align 32
@aic3x_lagc_attack_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 2, i8 2, i32 4, i32 3, ptr @aic3x_agc_attack, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right AGC Attack time\00", [42 x i8] zeroinitializer }, align 32
@aic3x_ragc_attack_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 29, i8 2, i8 2, i32 4, i32 3, ptr @aic3x_agc_attack, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left AGC Decay time\00", [44 x i8] zeroinitializer }, align 32
@aic3x_lagc_decay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 0, i8 0, i32 4, i32 3, ptr @aic3x_agc_decay, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right AGC Decay time\00", [43 x i8] zeroinitializer }, align 32
@aic3x_ragc_decay_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 29, i8 0, i8 0, i32 4, i32 3, ptr @aic3x_agc_decay, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"De-emphasis Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12, i32 12, i32 2, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGA Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 15, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGA Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 16, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC HPF Cut-off\00", [16 x i8] zeroinitializer }, align 32
@aic3x_adc_hpf_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 6, i8 4, i32 4, i32 3, ptr @aic3x_adc_hpf, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Output Driver Power-On time\00", [36 x i8] zeroinitializer }, align 32
@aic3x_poweron_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 4, i8 4, i32 12, i32 15, ptr @aic3x_poweron_time, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Output Driver Ramp-up step\00", [37 x i8] zeroinitializer }, align 32
@aic3x_rampup_step_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 2, i8 2, i32 4, i32 3, ptr @aic3x_rampup_step, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_agc_level = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-5.5dB\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-8dB\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-10dB\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-12dB\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-14dB\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-17dB\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-20dB\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-24dB\00", [26 x i8] zeroinitializer }, align 32
@aic3x_agc_attack = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8ms\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"11ms\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16ms\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"20ms\00", [27 x i8] zeroinitializer }, align 32
@aic3x_agc_decay = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100ms\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200ms\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400ms\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"500ms\00", [26 x i8] zeroinitializer }, align 32
@aic3x_adc_hpf = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0.0045xFs\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0.0125xFs\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.025xFs\00", [23 x i8] zeroinitializer }, align 32
@aic3x_poweron_time = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.122, ptr @.str.123, ptr @.str.124], [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0us\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10us\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100us\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1ms\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10ms\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50ms\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"800ms\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2s\00", [29 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"4s\00", [29 x i8] zeroinitializer }, align 32
@aic3x_rampup_step = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.125, ptr @.str.119, ptr @.str.126, ptr @.str.127], [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0ms\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2ms\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4ms\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left DAC Mux\00", [19 x i8] zeroinitializer }, align 32
@aic3x_left_dac_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_left_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left HPCOM Mux\00", [17 x i8] zeroinitializer }, align 32
@aic3x_left_hpcom_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_left_hpcom_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Line Out\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Left HP Out\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Left HP Com\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right DAC Mux\00", [18 x i8] zeroinitializer }, align 32
@aic3x_right_dac_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_right_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right HPCOM Mux\00", [16 x i8] zeroinitializer }, align 32
@aic3x_right_hpcom_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_right_hpcom_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Line Out\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Right HP Out\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Right HP Com\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Line1L Mux\00", [16 x i8] zeroinitializer }, align 32
@aic3x_left_line1l_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_line1l_2_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Line1R Mux\00", [16 x i8] zeroinitializer }, align 32
@aic3x_left_line1r_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_line1r_2_l_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Line1L Mux\00", [47 x i8] zeroinitializer }, align 32
@aic3x_right_line1l_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_line1l_2_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Line1R Mux\00", [47 x i8] zeroinitializer }, align 32
@aic3x_right_line1r_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_line1r_2_r_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LLOUT\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RLOUT\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPLOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPROUT\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPLCOM\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPRCOM\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LINE1L\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LINE1R\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Detection\00", [22 x i8] zeroinitializer }, align 32
@aic3x_dapm_widgets = internal constant { [28 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1264 x i8] } { [28 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.128, ptr @.str.129, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_left_dac_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_left_hpcom_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 86, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 51, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 58, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.135, ptr @.str.136, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_right_dac_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_right_hpcom_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 93, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 65, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 72, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.142, ptr @.str.143, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_left_line1l_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_left_line1r_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.146, ptr @.str.147, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_right_line1l_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_right_line1r_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @mic_bias_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1264 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@aic3x_left_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 6, i8 6, i32 3, i32 3, ptr @aic3x_left_dac_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_left_dac_mux = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.162, ptr @.str.163, ptr @.str.164], [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC_L1\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC_L3\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC_L2\00", [25 x i8] zeroinitializer }, align 32
@aic3x_left_hpcom_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 4, i8 4, i32 3, i32 3, ptr @aic3x_left_hpcom_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_left_hpcom_mux = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.165, ptr @.str.166, ptr @.str.167], [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"differential of HPLOUT\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"constant VCM\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"single-ended\00", [19 x i8] zeroinitializer }, align 32
@aic3x_right_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 4, i8 4, i32 3, i32 3, ptr @aic3x_right_dac_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_right_dac_mux = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.168, ptr @.str.169, ptr @.str.170], [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC_R1\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC_R3\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DAC_R2\00", [25 x i8] zeroinitializer }, align 32
@aic3x_right_hpcom_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 3, i8 3, i32 5, i32 7, ptr @aic3x_right_hpcom_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_right_hpcom_mux = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.171, ptr @.str.166, ptr @.str.167, ptr @.str.172, ptr @.str.173], [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"differential of HPROUT\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"differential of HPLCOM\00", [41 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"external feedback\00", [46 x i8] zeroinitializer }, align 32
@aic3x_line1l_2_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 7, i8 7, i32 2, i32 1, ptr @aic3x_linein_mode_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_linein_mode_mux = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.167, ptr @.str.174], [24 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"differential\00", [19 x i8] zeroinitializer }, align 32
@aic3x_line1r_2_l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 21, i8 7, i8 7, i32 2, i32 1, ptr @aic3x_linein_mode_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_line1l_2_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 7, i8 7, i32 2, i32 1, ptr @aic3x_linein_mode_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@aic3x_line1r_2_r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22, i8 7, i8 7, i32 2, i32 1, ptr @aic3x_linein_mode_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left PGA Mixer\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Line1L Switch\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Line1R Switch\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right PGA Mixer\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Line Mixer\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGAL Bypass Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DACL1 Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGAR Bypass Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DACR1 Switch\00", [19 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Line Mixer\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left HP Mixer\00", [18 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right HP Mixer\00", [17 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left HPCOM Mixer\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right HPCOM Mixer\00", [46 x i8] zeroinitializer }, align 32
@aic3x_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.4, i32 1628, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request regulator notifier: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aic3x_component_probe\00", [42 x i8] zeroinitializer }, align 32
@aic3x_component_probe._entry_ptr = internal global ptr @aic3x_component_probe._entry, section ".printk_index", align 4
@aic3x_component_probe._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.190, ptr @.str.4, i32 1644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"GPIO functionality is not supported on tlv320aic3104\0A\00", [42 x i8] zeroinitializer }, align 32
@aic3x_component_probe._entry_ptr.193 = internal global ptr @aic3x_component_probe._entry.191, section ".printk_index", align 4
@aic3x_extra_snd_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }], [112 x i8] zeroinitializer }, align 32
@aic3x_mono_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @output_stage_tlv }, i32 ptrtoint (ptr @.compoundliteral.217 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.219 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.221 to i32) }], [48 x i8] zeroinitializer }, align 32
@aic3x_classd_amp_gain_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @classd_amp_tlv }, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Left Line Mixer Line2R Bypass Volume\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 83, i32 83, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Right Line Mixer Line2L Bypass Volume\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 87, i32 87, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Left HP Mixer Line2R Bypass Volume\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 48, i32 48, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Right HP Mixer Line2L Bypass Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 59, i32 59, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Left HPCOM Mixer Line2R Bypass Volume\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 55, i32 55, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Right HPCOM Mixer Line2L Bypass Volume\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 66, i32 66, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Line Line2 Bypass Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 80, i32 90, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HP Line2 Bypass Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 45, i32 62, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HPCOM Line2 Bypass Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 52, i32 69, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mono Line2 Bypass Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 73, i32 76, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mono PGA Bypass Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 74, i32 77, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mono DAC Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 118, i32 118, i32 75, i32 78, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mono Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 79, i32 79, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mono Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 79, i32 79, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Class-D Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@classd_amp_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 73, i32 73, i32 6, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@intercon_extra = internal constant { [27 x %struct.snd_soc_dapm_route], [324 x i8] } { [27 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.224, ptr @.str.167, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr @.str.174, ptr @.str.232, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.237, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.239, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.241, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.167, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr @.str.174, ptr @.str.233, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.245, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.239, ptr @.str.230, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.241, ptr @.str.231, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.253, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.255, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.253, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.255, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.253, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.255, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.253, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.255, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr @.str.253, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr @.str.255, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.253, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr @.str.255, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }], [324 x i8] zeroinitializer }, align 32
@intercon_mono = internal constant { [8 x %struct.snd_soc_dapm_route], [96 x i8] } { [8 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.253, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.180, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.181, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.255, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.182, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr @.str.183, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr null, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.289, ptr null, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@intercon_3007 = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.298, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr null, ptr @.str.297, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr null, ptr @.str.298, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@intercon_extra_3104 = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.307, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.309, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.307, ptr @.str.302, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.309, ptr @.str.303, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@aic3x_left_pga_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.236 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.238 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.240 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Line2L Mux\00", [16 x i8] zeroinitializer }, align 32
@aic3x_left_line2_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_line2l_2_ldac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@aic3x_right_pga_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Line2R Mux\00", [47 x i8] zeroinitializer }, align 32
@aic3x_right_line2_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @aic3x_line2r_2_rdac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"GPIO1 dmic modclk\00", [46 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMic Rate 128\00", [18 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMic Rate 64\00", [19 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMic Rate 32\00", [19 x i8] zeroinitializer }, align 32
@aic3x_left_line_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }], [64 x i8] zeroinitializer }, align 32
@aic3x_right_line_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }], [64 x i8] zeroinitializer }, align 32
@aic3x_left_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }], [64 x i8] zeroinitializer }, align 32
@aic3x_right_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }], [64 x i8] zeroinitializer }, align 32
@aic3x_left_hpcom_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }], [64 x i8] zeroinitializer }, align 32
@aic3x_right_hpcom_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC3L\00", [26 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC3R\00", [26 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LINE2L\00", [25 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LINE2R\00", [25 x i8] zeroinitializer }, align 32
@aic3x_extra_dapm_widgets = internal constant { [18 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [824 x i8] } { [18 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @aic3x_left_pga_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_left_line2_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @aic3x_right_pga_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic3x_right_line2_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 98, i8 4, i32 15, i32 10, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 0, i32 3, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 0, i32 3, i32 2, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 0, i32 3, i32 3, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @aic3x_left_line_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @aic3x_right_line_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @aic3x_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @aic3x_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @aic3x_left_hpcom_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @aic3x_right_hpcom_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [824 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.236 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Line2L Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.238 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic3L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.240 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic3R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@aic3x_line2l_2_ldac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 7, i8 7, i32 2, i32 1, ptr @aic3x_linein_mode_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Line2R Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@aic3x_line2r_2_rdac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 23, i8 7, i8 7, i32 2, i32 1, ptr @aic3x_linein_mode_mux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 84, i32 84, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 85, i32 85, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line2L Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line2R Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 83, i32 83, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 49, i32 49, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 61, i32 61, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 63, i32 63, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 64, i32 64, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 59, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 62, i32 62, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 67, i32 67, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 68, i32 68, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 70, i32 70, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 71, i32 71, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.285 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 66, i32 66, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono Out\00", [23 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono Mixer\00", [21 x i8] zeroinitializer }, align 32
@aic3x_mono_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.253, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MONO_LOUT\00", [22 x i8] zeroinitializer }, align 32
@aic3x_dapm_mono_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.287, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 79, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.288, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @aic3x_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.289, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 73, i32 73, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 74, i32 74, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 75, i32 75, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 76, i32 76, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 77, i32 77, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 78, i32 78, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Class-D Out\00", [47 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Class-D Out\00", [46 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPOP\00", [27 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPOM\00", [27 x i8] zeroinitializer }, align 32
@aic3007_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.297, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 73, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.298, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 73, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.299, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.300, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@aic3104_left_pga_mixer_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.305 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.306 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.307, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.308 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.309, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.310 to i32) }], [32 x i8] zeroinitializer }, align 32
@aic3104_right_pga_mixer_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.311 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.312 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.307, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.313 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.309, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw_aic3x, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.314 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC2L\00", [26 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC2R\00", [26 x i8] zeroinitializer }, align 32
@aic3104_extra_dapm_widgets = internal constant { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [472 x i8] } { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3104_left_pga_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3104_right_pga_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3x_left_line_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3x_right_line_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3x_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3x_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3x_left_hpcom_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @aic3x_right_hpcom_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.302, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.303, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [472 x i8] zeroinitializer }, align 32
@.compoundliteral.305 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.306 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic2L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.308 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic2R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.310 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.311 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.312 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.314 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.315 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tlv320aic3x-hifi\00", [47 x i8] zeroinitializer }, align 32
@aic3x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @aic3x_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @aic3x_set_dai_fmt, ptr null, ptr @aic3x_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic3x_mute, ptr null, ptr null, ptr @aic3x_hw_params, ptr null, ptr @aic3x_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@aic3x_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.319, ptr @.str.4, i32 1320, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tx and rx masks must be symmetric\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aic3x_set_dai_tdm_slot\00", [41 x i8] zeroinitializer }, align 32
@aic3x_set_dai_tdm_slot._entry_ptr = internal global ptr @aic3x_set_dai_tdm_slot._entry, section ".printk_index", align 4
@aic3x_set_dai_tdm_slot._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.319, ptr @.str.4, i32 1325, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tx and rx masks need to be non 0\0A\00", [62 x i8] zeroinitializer }, align 32
@aic3x_set_dai_tdm_slot._entry_ptr.322 = internal global ptr @aic3x_set_dai_tdm_slot._entry.320, section ".printk_index", align 4
@aic3x_set_dai_tdm_slot._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.319, ptr @.str.4, i32 1332, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Invalid mask, slots must be adjacent\0A\00", [58 x i8] zeroinitializer }, align 32
@aic3x_set_dai_tdm_slot._entry_ptr.325 = internal global ptr @aic3x_set_dai_tdm_slot._entry.323, section ".printk_index", align 4
@aic3x_set_dai_tdm_slot._entry.326 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.327, ptr @.str.319, ptr @.str.4, i32 1343, ptr @.str.11, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported slot width %d\0A\00", [37 x i8] zeroinitializer }, align 32
@aic3x_set_dai_tdm_slot._entry_ptr.328 = internal global ptr @aic3x_set_dai_tdm_slot._entry.326, section ".printk_index", align 4
@aic3x_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.330, ptr @.str.4, i32 1173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s(): unable to setup PLL\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aic3x_hw_params\00", [16 x i8] zeroinitializer }, align 32
@aic3x_hw_params._entry_ptr = internal global ptr @aic3x_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.331 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.332 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.333 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.334 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.335 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.336 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.337 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 772, i64 773]
@__sancov_gen_cov_switch_values.338 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.339 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 24, i64 32]
@__sancov_gen_cov_switch_values.340 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@___asan_gen_.341 = private unnamed_addr constant [10 x i8] c"aic3x_reg\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 92, i32 33 }
@___asan_gen_.344 = private unnamed_addr constant [13 x i8] c"aic3x_regmap\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 133, i32 28 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1782, i32 31 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1786, i32 32 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1788, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1795, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1800, i32 33 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1813, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1828, i32 41 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1840, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [16 x i8] c"aic3007_class_d\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1741, i32 34 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1850, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant [24 x i8] c"soc_component_dev_aic3x\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1690, i32 46 }
@___asan_gen_.407 = private unnamed_addr constant [10 x i8] c"aic3x_dai\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1485, i32 34 }
@___asan_gen_.410 = private unnamed_addr constant [11 x i8] c"reset_list\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 60, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 54, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 55, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 56, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 57, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1710, i32 38 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1722, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1734, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [19 x i8] c"aic3x_snd_controls\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 320, i32 38 }
@___asan_gen_.446 = private unnamed_addr constant [9 x i8] c"intercon\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 812, i32 40 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 322, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 303, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 330, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"output_stage_tlv\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 315, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 332, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 335, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 337, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 340, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 342, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 345, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 347, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 350, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 352, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 355, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 357, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 361, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 364, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 368, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 371, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 375, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 378, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 383, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 318, i32 14 }
@___asan_gen_.537 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 385, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 387, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 389, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 391, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 393, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 400, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 401, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant [22 x i8] c"aic3x_lagc_level_enum\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 271, i32 8 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 402, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [22 x i8] c"aic3x_ragc_level_enum\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 273, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 403, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [23 x i8] c"aic3x_lagc_attack_enum\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 278, i32 8 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 404, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [23 x i8] c"aic3x_ragc_attack_enum\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 280, i32 8 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 405, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [22 x i8] c"aic3x_lagc_decay_enum\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 285, i32 8 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 406, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [22 x i8] c"aic3x_ragc_decay_enum\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 287, i32 8 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 409, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 412, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 305, i32 8 }
@___asan_gen_.608 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 414, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 416, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [19 x i8] c"aic3x_adc_hpf_enum\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 265, i32 8 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 419, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant [24 x i8] c"aic3x_poweron_time_enum\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 293, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 420, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [23 x i8] c"aic3x_rampup_step_enum\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 297, i32 8 }
@___asan_gen_.631 = private unnamed_addr constant [16 x i8] c"aic3x_agc_level\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 268, i32 27 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 269, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 269, i32 12 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 269, i32 20 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 269, i32 29 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 270, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 270, i32 11 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 270, i32 20 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 270, i32 29 }
@___asan_gen_.658 = private unnamed_addr constant [17 x i8] c"aic3x_agc_attack\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 276, i32 27 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 277, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 277, i32 9 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 277, i32 17 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 277, i32 25 }
@___asan_gen_.673 = private unnamed_addr constant [16 x i8] c"aic3x_agc_decay\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 283, i32 27 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 284, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 284, i32 11 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 284, i32 20 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 284, i32 29 }
@___asan_gen_.688 = private unnamed_addr constant [14 x i8] c"aic3x_adc_hpf\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 263, i32 27 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 264, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 264, i32 14 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 264, i32 27 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 264, i32 40 }
@___asan_gen_.703 = private unnamed_addr constant [19 x i8] c"aic3x_poweron_time\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 290, i32 27 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 291, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 291, i32 9 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 291, i32 17 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 291, i32 26 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 291, i32 33 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 291, i32 41 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 292, i32 29 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 292, i32 38 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 292, i32 44 }
@___asan_gen_.733 = private unnamed_addr constant [18 x i8] c"aic3x_rampup_step\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 296, i32 27 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 296, i32 51 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 296, i32 65 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 296, i32 72 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 635, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 636, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [28 x i8] c"aic3x_left_dac_mux_controls\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 488, i32 38 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 638, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [30 x i8] c"aic3x_left_hpcom_mux_controls\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 496, i32 38 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 640, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 641, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 642, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 645, i32 2 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 646, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [29 x i8] c"aic3x_right_dac_mux_controls\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 492, i32 38 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 648, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [31 x i8] c"aic3x_right_hpcom_mux_controls\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 500, i32 38 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 650, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 651, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 652, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 655, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 656, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [31 x i8] c"aic3x_left_line1l_mux_controls\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 614, i32 38 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 658, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant [31 x i8] c"aic3x_left_line1r_mux_controls\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 622, i32 38 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 662, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 664, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant [32 x i8] c"aic3x_right_line1l_mux_controls\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 616, i32 38 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 666, i32 2 }
@___asan_gen_.832 = private unnamed_addr constant [32 x i8] c"aic3x_right_line1r_mux_controls\00", align 1
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 620, i32 38 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 670, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 674, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 675, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 676, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 677, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 678, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 679, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 681, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 682, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 690, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [19 x i8] c"aic3x_dapm_widgets\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 633, i32 41 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 489, i32 1 }
@___asan_gen_.871 = private unnamed_addr constant [20 x i8] c"aic3x_left_dac_enum\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 229, i32 8 }
@___asan_gen_.874 = private unnamed_addr constant [19 x i8] c"aic3x_left_dac_mux\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 227, i32 27 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 228, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 228, i32 12 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 228, i32 22 }
@___asan_gen_.886 = private unnamed_addr constant [22 x i8] c"aic3x_left_hpcom_enum\00", align 1
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 239, i32 8 }
@___asan_gen_.889 = private unnamed_addr constant [21 x i8] c"aic3x_left_hpcom_mux\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 237, i32 27 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 238, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 238, i32 28 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 238, i32 44 }
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c"aic3x_right_dac_enum\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 234, i32 8 }
@___asan_gen_.904 = private unnamed_addr constant [20 x i8] c"aic3x_right_dac_mux\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 232, i32 27 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 233, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 233, i32 12 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 233, i32 22 }
@___asan_gen_.916 = private unnamed_addr constant [23 x i8] c"aic3x_right_hpcom_enum\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 245, i32 8 }
@___asan_gen_.919 = private unnamed_addr constant [22 x i8] c"aic3x_right_hpcom_mux\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 242, i32 27 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 243, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 244, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 244, i32 28 }
@___asan_gen_.931 = private unnamed_addr constant [22 x i8] c"aic3x_line1l_2_l_enum\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 250, i32 8 }
@___asan_gen_.934 = private unnamed_addr constant [22 x i8] c"aic3x_linein_mode_mux\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 248, i32 27 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 249, i32 18 }
@___asan_gen_.940 = private unnamed_addr constant [22 x i8] c"aic3x_line1r_2_l_enum\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 254, i32 8 }
@___asan_gen_.943 = private unnamed_addr constant [22 x i8] c"aic3x_line1l_2_r_enum\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 252, i32 8 }
@___asan_gen_.946 = private unnamed_addr constant [22 x i8] c"aic3x_line1r_2_r_enum\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 256, i32 8 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 819, i32 3 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 819, i32 21 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 820, i32 21 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 830, i32 3 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 846, i32 3 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 846, i32 22 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 847, i32 22 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 848, i32 22 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 849, i32 22 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 856, i32 3 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 866, i32 3 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 876, i32 3 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 886, i32 3 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 898, i32 3 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1626, i32 4 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1644, i32 4 }
@___asan_gen_.1006 = private unnamed_addr constant [25 x i8] c"aic3x_extra_snd_controls\00", align 1
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 424, i32 38 }
@___asan_gen_.1009 = private unnamed_addr constant [20 x i8] c"aic3x_mono_controls\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 462, i32 38 }
@___asan_gen_.1012 = private unnamed_addr constant [27 x i8] c"aic3x_classd_amp_gain_ctrl\00", align 1
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 484, i32 38 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 430, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 433, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 436, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 439, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 442, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 445, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 449, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 453, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 457, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 463, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 466, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 469, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 473, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 474, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 485, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant [15 x i8] c"classd_amp_tlv\00", align 1
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 482, i32 8 }
@___asan_gen_.1077 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant [15 x i8] c"intercon_extra\00", align 1
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 913, i32 40 }
@___asan_gen_.1081 = private unnamed_addr constant [14 x i8] c"intercon_mono\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 978, i32 40 }
@___asan_gen_.1084 = private unnamed_addr constant [14 x i8] c"intercon_3007\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 990, i32 40 }
@___asan_gen_.1087 = private unnamed_addr constant [20 x i8] c"intercon_extra_3104\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 968, i32 40 }
@___asan_gen_.1090 = private unnamed_addr constant [30 x i8] c"aic3x_left_pga_mixer_controls\00", align 1
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 580, i32 38 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 699, i32 2 }
@___asan_gen_.1096 = private unnamed_addr constant [30 x i8] c"aic3x_left_line2_mux_controls\00", align 1
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 626, i32 38 }
@___asan_gen_.1099 = private unnamed_addr constant [31 x i8] c"aic3x_right_pga_mixer_controls\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 589, i32 38 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 706, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant [31 x i8] c"aic3x_right_line2_mux_controls\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 630, i32 38 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 714, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 723, i32 2 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 725, i32 2 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 727, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant [31 x i8] c"aic3x_left_line_mixer_controls\00", align 1
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 504, i32 38 }
@___asan_gen_.1123 = private unnamed_addr constant [32 x i8] c"aic3x_right_line_mixer_controls\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 515, i32 38 }
@___asan_gen_.1126 = private unnamed_addr constant [29 x i8] c"aic3x_left_hp_mixer_controls\00", align 1
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 536, i32 38 }
@___asan_gen_.1129 = private unnamed_addr constant [30 x i8] c"aic3x_right_hp_mixer_controls\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 547, i32 38 }
@___asan_gen_.1132 = private unnamed_addr constant [32 x i8] c"aic3x_left_hpcom_mixer_controls\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 558, i32 38 }
@___asan_gen_.1135 = private unnamed_addr constant [33 x i8] c"aic3x_right_hpcom_mixer_controls\00", align 1
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 569, i32 38 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 750, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 751, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 752, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 753, i32 2 }
@___asan_gen_.1150 = private unnamed_addr constant [25 x i8] c"aic3x_extra_dapm_widgets\00", align 1
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 694, i32 41 }
@___asan_gen_.1153 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant [21 x i8] c".compoundliteral.236\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 583, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant [21 x i8] c".compoundliteral.238\00", align 1
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 584, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant [21 x i8] c".compoundliteral.240\00", align 1
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 585, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.1167 = private unnamed_addr constant [25 x i8] c"aic3x_line2l_2_ldac_enum\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 258, i32 8 }
@___asan_gen_.1170 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1171 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 592, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1177 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant [25 x i8] c"aic3x_line2r_2_rdac_enum\00", align 1
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 260, i32 8 }
@___asan_gen_.1181 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1183 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 510, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 511, i32 2 }
@___asan_gen_.1192 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1195 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1198 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1201 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1202 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1203 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1204 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1205 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.1207 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1210 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1217 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.1219 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1221 = private unnamed_addr constant [21 x i8] c".compoundliteral.285\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 794, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 796, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant [26 x i8] c"aic3x_mono_mixer_controls\00", align 1
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 526, i32 38 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 800, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant [24 x i8] c"aic3x_dapm_mono_widgets\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 792, i32 41 }
@___asan_gen_.1238 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1239 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1243 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 805, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 806, i32 2 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 808, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 809, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant [21 x i8] c"aic3007_dapm_widgets\00", align 1
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 803, i32 41 }
@___asan_gen_.1259 = private unnamed_addr constant [32 x i8] c"aic3104_left_pga_mixer_controls\00", align 1
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 598, i32 38 }
@___asan_gen_.1262 = private unnamed_addr constant [33 x i8] c"aic3104_right_pga_mixer_controls\00", align 1
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 606, i32 38 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 788, i32 2 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 789, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant [27 x i8] c"aic3104_extra_dapm_widgets\00", align 1
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 757, i32 41 }
@___asan_gen_.1274 = private unnamed_addr constant [21 x i8] c".compoundliteral.305\00", align 1
@___asan_gen_.1275 = private unnamed_addr constant [21 x i8] c".compoundliteral.306\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 601, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant [21 x i8] c".compoundliteral.308\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 602, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant [21 x i8] c".compoundliteral.310\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant [21 x i8] c".compoundliteral.311\00", align 1
@___asan_gen_.1285 = private unnamed_addr constant [21 x i8] c".compoundliteral.312\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant [21 x i8] c".compoundliteral.314\00", align 1
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1486, i32 10 }
@___asan_gen_.1291 = private unnamed_addr constant [14 x i8] c"aic3x_dai_ops\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1475, i32 37 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1494, i32 18 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1488, i32 18 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1320, i32 3 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1325, i32 3 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1332, i32 3 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1343, i32 3 }
@___asan_gen_.1327 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1334 = private constant [34 x i8] c"../sound/soc/codecs/tlv320aic3x.c\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1334, i32 1173, i32 3 }
@llvm.compiler.used = appending global [421 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__ksymtab_aic3x_probe, ptr @__ksymtab_aic3x_regmap, ptr @__ksymtab_aic3x_remove, ptr @aic3x_component_probe._entry, ptr @aic3x_component_probe._entry.191, ptr @aic3x_component_probe._entry_ptr, ptr @aic3x_component_probe._entry_ptr.193, ptr @aic3x_configure_ocmv._entry, ptr @aic3x_configure_ocmv._entry.27, ptr @aic3x_configure_ocmv._entry_ptr, ptr @aic3x_configure_ocmv._entry_ptr.29, ptr @aic3x_hw_params._entry, ptr @aic3x_hw_params._entry_ptr, ptr @aic3x_probe._entry, ptr @aic3x_probe._entry.14, ptr @aic3x_probe._entry.17, ptr @aic3x_probe._entry.9, ptr @aic3x_probe._entry_ptr, ptr @aic3x_probe._entry_ptr.12, ptr @aic3x_probe._entry_ptr.16, ptr @aic3x_probe._entry_ptr.19, ptr @aic3x_set_dai_tdm_slot._entry, ptr @aic3x_set_dai_tdm_slot._entry.320, ptr @aic3x_set_dai_tdm_slot._entry.323, ptr @aic3x_set_dai_tdm_slot._entry.326, ptr @aic3x_set_dai_tdm_slot._entry_ptr, ptr @aic3x_set_dai_tdm_slot._entry_ptr.322, ptr @aic3x_set_dai_tdm_slot._entry_ptr.325, ptr @aic3x_set_dai_tdm_slot._entry_ptr.328, ptr @aic3x_reg, ptr @aic3x_regmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @aic3007_class_d, ptr @.str.18, ptr @soc_component_dev_aic3x, ptr @aic3x_dai, ptr @reset_list, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @aic3x_snd_controls, ptr @intercon, ptr @.str.30, ptr @dac_tlv, ptr @.compoundliteral, ptr @.str.31, ptr @output_stage_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @out_tlv, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @aic3x_lagc_level_enum, ptr @.str.82, ptr @aic3x_ragc_level_enum, ptr @.str.83, ptr @aic3x_lagc_attack_enum, ptr @.str.84, ptr @aic3x_ragc_attack_enum, ptr @.str.85, ptr @aic3x_lagc_decay_enum, ptr @.str.86, ptr @aic3x_ragc_decay_enum, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @adc_tlv, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @aic3x_adc_hpf_enum, ptr @.str.94, ptr @aic3x_poweron_time_enum, ptr @.str.95, ptr @aic3x_rampup_step_enum, ptr @aic3x_agc_level, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @aic3x_agc_attack, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @aic3x_agc_decay, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @aic3x_adc_hpf, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @aic3x_poweron_time, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @aic3x_rampup_step, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @aic3x_left_dac_mux_controls, ptr @.str.131, ptr @aic3x_left_hpcom_mux_controls, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @aic3x_right_dac_mux_controls, ptr @.str.138, ptr @aic3x_right_hpcom_mux_controls, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @aic3x_left_line1l_mux_controls, ptr @.str.145, ptr @aic3x_left_line1r_mux_controls, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @aic3x_right_line1l_mux_controls, ptr @.str.149, ptr @aic3x_right_line1r_mux_controls, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @aic3x_dapm_widgets, ptr @.str.161, ptr @aic3x_left_dac_enum, ptr @aic3x_left_dac_mux, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @aic3x_left_hpcom_enum, ptr @aic3x_left_hpcom_mux, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @aic3x_right_dac_enum, ptr @aic3x_right_dac_mux, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @aic3x_right_hpcom_enum, ptr @aic3x_right_hpcom_mux, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @aic3x_line1l_2_l_enum, ptr @aic3x_linein_mode_mux, ptr @.str.174, ptr @aic3x_line1r_2_l_enum, ptr @aic3x_line1l_2_r_enum, ptr @aic3x_line1r_2_r_enum, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.192, ptr @aic3x_extra_snd_controls, ptr @aic3x_mono_controls, ptr @aic3x_classd_amp_gain_ctrl, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @.compoundliteral.201, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @.compoundliteral.217, ptr @.str.218, ptr @.compoundliteral.219, ptr @.str.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @classd_amp_tlv, ptr @.compoundliteral.223, ptr @intercon_extra, ptr @intercon_mono, ptr @intercon_3007, ptr @intercon_extra_3104, ptr @aic3x_left_pga_mixer_controls, ptr @.str.224, ptr @aic3x_left_line2_mux_controls, ptr @aic3x_right_pga_mixer_controls, ptr @.str.225, ptr @aic3x_right_line2_mux_controls, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @aic3x_left_line_mixer_controls, ptr @aic3x_right_line_mixer_controls, ptr @aic3x_left_hp_mixer_controls, ptr @aic3x_right_hp_mixer_controls, ptr @aic3x_left_hpcom_mixer_controls, ptr @aic3x_right_hpcom_mixer_controls, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @aic3x_extra_dapm_widgets, ptr @.compoundliteral.235, ptr @.compoundliteral.236, ptr @.str.237, ptr @.compoundliteral.238, ptr @.str.239, ptr @.compoundliteral.240, ptr @.str.241, ptr @.compoundliteral.242, ptr @aic3x_line2l_2_ldac_enum, ptr @.compoundliteral.243, ptr @.compoundliteral.244, ptr @.str.245, ptr @.compoundliteral.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @aic3x_line2r_2_rdac_enum, ptr @.compoundliteral.249, ptr @.compoundliteral.250, ptr @.compoundliteral.251, ptr @.compoundliteral.252, ptr @.str.253, ptr @.compoundliteral.254, ptr @.str.255, ptr @.compoundliteral.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.compoundliteral.263, ptr @.compoundliteral.264, ptr @.compoundliteral.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.compoundliteral.268, ptr @.compoundliteral.269, ptr @.compoundliteral.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.compoundliteral.276, ptr @.compoundliteral.277, ptr @.compoundliteral.278, ptr @.compoundliteral.279, ptr @.compoundliteral.280, ptr @.compoundliteral.281, ptr @.compoundliteral.282, ptr @.compoundliteral.283, ptr @.compoundliteral.284, ptr @.compoundliteral.285, ptr @.compoundliteral.286, ptr @.str.287, ptr @.str.288, ptr @aic3x_mono_mixer_controls, ptr @.str.289, ptr @aic3x_dapm_mono_widgets, ptr @.compoundliteral.291, ptr @.compoundliteral.292, ptr @.compoundliteral.293, ptr @.compoundliteral.294, ptr @.compoundliteral.295, ptr @.compoundliteral.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @aic3007_dapm_widgets, ptr @aic3104_left_pga_mixer_controls, ptr @aic3104_right_pga_mixer_controls, ptr @.str.302, ptr @.str.303, ptr @aic3104_extra_dapm_widgets, ptr @.compoundliteral.305, ptr @.compoundliteral.306, ptr @.str.307, ptr @.compoundliteral.308, ptr @.str.309, ptr @.compoundliteral.310, ptr @.compoundliteral.311, ptr @.compoundliteral.312, ptr @.compoundliteral.313, ptr @.compoundliteral.314, ptr @.str.315, ptr @aic3x_dai_ops, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.321, ptr @.str.324, ptr @.str.327, ptr @.str.329, ptr @.str.330], section "llvm.metadata"
@0 = internal global [401 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_reg to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3007_class_d to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_aic3x to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_configure_ocmv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_configure_ocmv._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_snd_controls to i32), i32 1824, i32 2272, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon to i32), i32 3536, i32 4416, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_stage_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_lagc_level_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_ragc_level_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_lagc_attack_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_ragc_attack_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_lagc_decay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_ragc_decay_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_adc_hpf_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_poweron_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_rampup_step_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_agc_level to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_agc_attack to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_agc_decay to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_adc_hpf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_poweron_time to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_rampup_step to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_dac_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_hpcom_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_dac_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_hpcom_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_line1l_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_line1r_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_line1l_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_line1r_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_dapm_widgets to i32), i32 5040, i32 6304, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_dac_mux to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_hpcom_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_hpcom_mux to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_dac_mux to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_hpcom_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_hpcom_mux to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_line1l_2_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_linein_mode_mux to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_line1r_2_l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_line1l_2_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_line1r_2_r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_component_probe._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_extra_snd_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_mono_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_classd_amp_gain_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classd_amp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon_extra to i32), i32 1404, i32 1728, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon_mono to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon_3007 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon_extra_3104 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_pga_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_line2_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_pga_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_line2_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_line_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_line_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_left_hpcom_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_right_hpcom_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_extra_dapm_widgets to i32), i32 3240, i32 4064, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.236 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.238 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.240 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_line2l_2_ldac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_line2r_2_rdac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.285 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_mono_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_dapm_mono_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3007_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3104_left_pga_mixer_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3104_right_pga_mixer_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3104_extra_dapm_widgets to i32), i32 1800, i32 2272, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.305 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.306 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.308 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.310 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.311 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.312 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.314 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_set_dai_tdm_slot._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_set_dai_tdm_slot._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_set_dai_tdm_slot._entry.326 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic3x_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @aic3x_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg)
  %cond = icmp eq i32 %reg, 1
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aic3x_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %driver_data) #1 align 64 {
entry:
  %value.i = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !605
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 172, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap1 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %regmap, ptr %regmap1, align 4
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @regcache_cache_only(ptr noundef %regmap, i1 noundef zeroext true) #6
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %gpio_reset11 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %gpio_reset11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %gpio_reset11, align 4
  %setup = getelementptr inbounds %struct.aic3x_pdata, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setup, align 4
  %setup12 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %setup12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %setup12, align 4
  %micbias_vg = getelementptr inbounds %struct.aic3x_pdata, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %micbias_vg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %micbias_vg, align 4
  %micbias_vg13 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %micbias_vg13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %micbias_vg13, align 4
  br label %if.end55

if.else:                                          ; preds = %if.end7
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %if.else52, label %if.then15

if.then15:                                        ; preds = %if.else
  %call.i186 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool17.not = icmp eq ptr %call.i186, null
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %call.i187 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i187)
  %cmp = icmp sgt i32 %call.i187, -1
  br i1 %cmp, label %if.end19.if.end31_crit_edge, label %if.else23

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.else23:                                        ; preds = %if.end19
  %call.i188 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %cmp25 = icmp sgt i32 %call.i188, 0
  br i1 %cmp25, label %do.end, label %if.else23.if.end31_crit_edge

if.else23.if.end31_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end:                                           ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end, %if.else23.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %call.i188.sink = phi i32 [ %call.i188, %do.end ], [ %call.i187, %if.end19.if.end31_crit_edge ], [ -1, %if.else23.if.end31_crit_edge ]
  %gpio_reset27 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %gpio_reset27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i188.sink, ptr %gpio_reset27, align 4
  %call.i189 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i186, i32 noundef 2, i32 noundef 0) #6
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i189, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp33 = icmp sgt i32 %18, -1
  br i1 %cmp33, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %setup35 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %setup35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i186, ptr %setup35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool38.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool38.not, label %if.then39, label %if.else49

if.then39:                                        ; preds = %if.end36
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb41
    i32 3, label %sw.bb43
  ]

sw.bb:                                            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %micbias_vg40 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 14
  %23 = ptrtoint ptr %micbias_vg40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %micbias_vg40, align 4
  br label %if.end55

sw.bb41:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %micbias_vg42 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 14
  %24 = ptrtoint ptr %micbias_vg42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %micbias_vg42, align 4
  br label %if.end55

sw.bb43:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %micbias_vg44 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 14
  %25 = ptrtoint ptr %micbias_vg44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %micbias_vg44, align 4
  br label %if.end55

sw.default:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %micbias_vg45 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 14
  %26 = ptrtoint ptr %micbias_vg45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %micbias_vg45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %if.end55

if.else49:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %micbias_vg50 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 14
  %27 = ptrtoint ptr %micbias_vg50 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %micbias_vg50, align 4
  br label %if.end55

if.else52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_reset53 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 11
  %28 = ptrtoint ptr %gpio_reset53 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %gpio_reset53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.else49, %sw.default, %sw.bb43, %sw.bb41, %sw.bb, %if.then10
  %conv = trunc i32 %driver_data to i16
  %model = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 13
  %29 = ptrtoint ptr %model to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %model, align 4
  %gpio_reset56 = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 11
  %30 = ptrtoint ptr %gpio_reset56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gpio_reset56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %31)
  %32 = icmp ult i32 %31, 2048
  br i1 %32, label %land.lhs.true, label %if.end55.if.end69_crit_edge

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

land.lhs.true:                                    ; preds = %if.end55
  %.pn11.i = load ptr, ptr @reset_list, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, @reset_list
  br i1 %cmp.not12.i, label %land.lhs.true.if.then60_crit_edge, label %land.lhs.true.land.lhs.true.i_crit_edge

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  br label %land.lhs.true.i

land.lhs.true.if.then60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

land.lhs.true.i:                                  ; preds = %for.inc.i.land.lhs.true.i_crit_edge, %land.lhs.true.land.lhs.true.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.inc.i.land.lhs.true.i_crit_edge ], [ %.pn11.i, %land.lhs.true.land.lhs.true.i_crit_edge ]
  %gpio_reset2.i = getelementptr i8, ptr %.pn13.i, i32 12
  %33 = ptrtoint ptr %gpio_reset2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpio_reset2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %34)
  %cmp3.i = icmp eq i32 %31, %34
  br i1 %cmp3.i, label %land.lhs.true.i.if.end69_crit_edge, label %for.inc.i

land.lhs.true.i.if.end69_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

for.inc.i:                                        ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @reset_list
  br i1 %cmp.not.i, label %for.inc.i.if.then60_crit_edge, label %for.inc.i.land.lhs.true.i_crit_edge

for.inc.i.land.lhs.true.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.inc.i.if.then60_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then60

if.then60:                                        ; preds = %for.inc.i.if.then60_crit_edge, %land.lhs.true.if.then60_crit_edge
  %call62 = call i32 @gpio_request(i32 noundef %31, ptr noundef nonnull @.str.13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %if.end66, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %gpio_reset56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gpio_reset56, align 4
  %call.i190 = call ptr @gpio_to_desc(i32 noundef %37) #6
  %call1.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i190, i32 noundef 0) #6
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %land.lhs.true.i.if.end69_crit_edge, %if.end55.if.end69_crit_edge
  %arrayidx72 = getelementptr %struct.aic3x_priv, ptr %call.i, i32 0, i32 2, i32 0
  %38 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.20, ptr %arrayidx72, align 4
  %arrayidx72.1 = getelementptr %struct.aic3x_priv, ptr %call.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %arrayidx72.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.21, ptr %arrayidx72.1, align 4
  %arrayidx72.2 = getelementptr %struct.aic3x_priv, ptr %call.i, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %arrayidx72.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.22, ptr %arrayidx72.2, align 4
  %arrayidx72.3 = getelementptr %struct.aic3x_priv, ptr %call.i, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.23, ptr %arrayidx72.3, align 4
  %call75 = call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 4, ptr noundef %arrayidx72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76.not = icmp eq i32 %call75, 0
  br i1 %cmp76.not, label %if.end82, label %do.end81

do.end81:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call75) #9
  br label %err_gpio

if.end82:                                         ; preds = %if.end69
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %44 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %value.i, align 4, !annotation !605
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end82.if.end3.i_crit_edge, label %land.lhs.true.i191

if.end82.if.end3.i_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

land.lhs.true.i191:                               ; preds = %if.end82
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %43, ptr noundef nonnull @.str.24, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool1.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i191.if.end3.i_crit_edge

land.lhs.true.i191.if.end3.i_crit_edge:           ; preds = %land.lhs.true.i191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %land.lhs.true.i191
  %45 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %46)
  %cmp.i192 = icmp ult i32 %46, 4
  br i1 %cmp.i192, label %if.then2.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %46 to i8
  %ocmv.i = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 15
  %47 = ptrtoint ptr %ocmv.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i, ptr %ocmv.i, align 4
  br label %aic3x_configure_ocmv.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %land.lhs.true.i191.if.end3.i_crit_edge, %if.end82.if.end3.i_crit_edge
  %consumer.i = getelementptr %struct.aic3x_priv, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %48 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %consumer.i, align 4
  %call4.i = call i32 @regulator_get_voltage(ptr noundef %49) #6
  %consumer7.i = getelementptr %struct.aic3x_priv, ptr %call.i, i32 0, i32 2, i32 2, i32 1
  %50 = ptrtoint ptr %consumer7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %consumer7.i, align 4
  %call8.i = call i32 @regulator_get_voltage(ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %call8.i)
  %cmp9.i = icmp sgt i32 %call8.i, 3600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %call4.i)
  %cmp11.i = icmp sgt i32 %call4.i, 1950000
  %or.cond.i = select i1 %cmp9.i, i1 true, i1 %cmp11.i
  br i1 %or.cond.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call8.i, i32 noundef %call4.i) #9
  br label %aic3x_configure_ocmv.exit

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %call8.i)
  %cmp14.i = icmp eq i32 %call8.i, 3600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %call4.i)
  %cmp17.i = icmp eq i32 %call4.i, 1950000
  %or.cond79.i = select i1 %cmp14.i, i1 %cmp17.i, i1 false
  br i1 %or.cond79.i, label %if.then19.i, label %if.else21.i

if.then19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %ocmv20.i = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 15
  %52 = ptrtoint ptr %ocmv20.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %ocmv20.i, align 4
  br label %aic3x_configure_ocmv.exit

if.else21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3300000, i32 %call8.i)
  %cmp22.i = icmp sgt i32 %call8.i, 3300000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %call4.i)
  %cmp25.i = icmp sgt i32 %call4.i, 1800000
  %or.cond80.i = select i1 %cmp22.i, i1 %cmp25.i, i1 false
  br i1 %or.cond80.i, label %if.then27.i, label %if.else29.i

if.then27.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  %ocmv28.i = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 15
  %53 = ptrtoint ptr %ocmv28.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %ocmv28.i, align 4
  br label %aic3x_configure_ocmv.exit

if.else29.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %call8.i)
  %cmp30.i = icmp sgt i32 %call8.i, 3000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650000, i32 %call4.i)
  %cmp33.i = icmp sgt i32 %call4.i, 1650000
  %or.cond81.i = select i1 %cmp30.i, i1 %cmp33.i, i1 false
  br i1 %or.cond81.i, label %if.then35.i, label %if.else37.i

if.then35.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #8
  %ocmv36.i = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 15
  %54 = ptrtoint ptr %ocmv36.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %ocmv36.i, align 4
  br label %aic3x_configure_ocmv.exit

if.else37.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2699999, i32 %call8.i)
  %cmp38.i = icmp sgt i32 %call8.i, 2699999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1524999, i32 %call4.i)
  %cmp41.i = icmp sgt i32 %call4.i, 1524999
  %or.cond82.i = select i1 %cmp38.i, i1 %cmp41.i, i1 false
  br i1 %or.cond82.i, label %if.then43.i, label %do.end48.i

if.then43.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #8
  %ocmv44.i = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 15
  %55 = ptrtoint ptr %ocmv44.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %ocmv44.i, align 4
  br label %aic3x_configure_ocmv.exit

do.end48.i:                                       ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call8.i, i32 noundef %call4.i) #9
  br label %aic3x_configure_ocmv.exit

aic3x_configure_ocmv.exit:                        ; preds = %do.end48.i, %if.then43.i, %if.then35.i, %if.then27.i, %if.then19.i, %do.end.i, %if.then2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  %56 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %57)
  %cmp85 = icmp eq i16 %57, 2
  br i1 %cmp85, label %if.then87, label %aic3x_configure_ocmv.exit.if.end97_crit_edge

aic3x_configure_ocmv.exit.if.end97_crit_edge:     ; preds = %aic3x_configure_ocmv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then87:                                        ; preds = %aic3x_configure_ocmv.exit
  %58 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap1, align 4
  %call89 = call i32 @regmap_register_patch(ptr noundef %59, ptr noundef nonnull @aic3007_class_d, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90.not = icmp eq i32 %call89, 0
  br i1 %cmp90.not, label %if.then87.if.end97_crit_edge, label %do.end95

if.then87.if.end97_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end95:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call89) #9
  br label %if.end97

if.end97:                                         ; preds = %do.end95, %if.then87.if.end97_crit_edge, %aic3x_configure_ocmv.exit.if.end97_crit_edge
  %call98 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_aic3x, ptr noundef nonnull @aic3x_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99.not = icmp eq i32 %call98, 0
  br i1 %cmp99.not, label %if.end102, label %if.end97.err_gpio_crit_edge

if.end97.err_gpio_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_gpio

if.end102:                                        ; preds = %if.end97
  %list = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 9
  %60 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.aic3x_priv, ptr %call.i, i32 0, i32 9, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list, ptr %prev.i, align 4
  %62 = load ptr, ptr @reset_list, align 4
  %call.i.i193 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @reset_list, ptr noundef %62) #6
  br i1 %call.i.i193, label %if.end.i.i, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %list, ptr %prev1.i.i, align 4
  %64 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %62, ptr %list, align 4
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @reset_list, ptr %prev.i, align 4
  store volatile ptr %list, ptr @reset_list, align 4
  br label %cleanup

err_gpio:                                         ; preds = %if.end97.err_gpio_crit_edge, %do.end81
  %ret.0 = phi i32 [ %call75, %do.end81 ], [ %call98, %if.end97.err_gpio_crit_edge ]
  %66 = ptrtoint ptr %gpio_reset56 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %gpio_reset56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %67)
  %68 = icmp ult i32 %67, 2048
  br i1 %68, label %land.lhs.true107, label %err_gpio.cleanup_crit_edge

err_gpio.cleanup_crit_edge:                       ; preds = %err_gpio
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true107:                                 ; preds = %err_gpio
  %.pn11.i194 = load ptr, ptr @reset_list, align 4
  %cmp.not12.i195 = icmp eq ptr %.pn11.i194, @reset_list
  br i1 %cmp.not12.i195, label %land.lhs.true107.if.then109_crit_edge, label %land.lhs.true107.land.lhs.true.i202_crit_edge

land.lhs.true107.land.lhs.true.i202_crit_edge:    ; preds = %land.lhs.true107
  br label %land.lhs.true.i202

land.lhs.true107.if.then109_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then109

land.lhs.true.i202:                               ; preds = %for.inc.i205.land.lhs.true.i202_crit_edge, %land.lhs.true107.land.lhs.true.i202_crit_edge
  %.pn13.i198 = phi ptr [ %.pn.i203, %for.inc.i205.land.lhs.true.i202_crit_edge ], [ %.pn11.i194, %land.lhs.true107.land.lhs.true.i202_crit_edge ]
  %gpio_reset2.i200 = getelementptr i8, ptr %.pn13.i198, i32 12
  %69 = ptrtoint ptr %gpio_reset2.i200 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %gpio_reset2.i200, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %70)
  %cmp3.i201 = icmp eq i32 %67, %70
  br i1 %cmp3.i201, label %land.lhs.true.i202.cleanup_crit_edge, label %for.inc.i205

land.lhs.true.i202.cleanup_crit_edge:             ; preds = %land.lhs.true.i202
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.i205:                                     ; preds = %land.lhs.true.i202
  %71 = ptrtoint ptr %.pn13.i198 to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pn.i203 = load ptr, ptr %.pn13.i198, align 4
  %cmp.not.i204 = icmp eq ptr %.pn.i203, @reset_list
  br i1 %cmp.not.i204, label %for.inc.i205.if.then109_crit_edge, label %for.inc.i205.land.lhs.true.i202_crit_edge

for.inc.i205.land.lhs.true.i202_crit_edge:        ; preds = %for.inc.i205
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i202

for.inc.i205.if.then109_crit_edge:                ; preds = %for.inc.i205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then109

if.then109:                                       ; preds = %for.inc.i205.if.then109_crit_edge, %land.lhs.true107.if.then109_crit_edge
  call void @gpio_free(i32 noundef %67) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then109, %land.lhs.true.i202.cleanup_crit_edge, %err_gpio.cleanup_crit_edge, %if.end.i.i, %if.end102.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then15.cleanup_crit_edge ], [ %ret.0, %if.then109 ], [ %ret.0, %err_gpio.cleanup_crit_edge ], [ %call62, %if.then60.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ %ret.0, %land.lhs.true.i202.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @aic3x_remove(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %list = getelementptr inbounds %struct.aic3x_priv, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.aic3x_priv, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.aic3x_priv, ptr %1, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %gpio_reset = getelementptr inbounds %struct.aic3x_priv, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %11)
  %12 = icmp ult i32 %11, 2048
  br i1 %12, label %land.lhs.true, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %list_del.exit
  %.pn11.i = load ptr, ptr @reset_list, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, @reset_list
  br i1 %cmp.not12.i, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.land.lhs.true.i_crit_edge

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  br label %land.lhs.true.i

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %for.inc.i.land.lhs.true.i_crit_edge, %land.lhs.true.land.lhs.true.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.inc.i.land.lhs.true.i_crit_edge ], [ %.pn11.i, %land.lhs.true.land.lhs.true.i_crit_edge ]
  %gpio_reset2.i = getelementptr i8, ptr %.pn13.i, i32 12
  %13 = ptrtoint ptr %gpio_reset2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio_reset2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %14)
  %cmp3.i = icmp eq i32 %11, %14
  br i1 %cmp3.i, label %land.lhs.true.i.if.end_crit_edge, label %for.inc.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.inc.i:                                        ; preds = %land.lhs.true.i
  %15 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @reset_list
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.land.lhs.true.i_crit_edge

for.inc.i.land.lhs.true.i_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %11) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #6
  %16 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_reset, align 4
  tail call void @gpio_free(i32 noundef %17) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.i.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_component_probe(ptr noundef %component) #1 align 64 {
entry:
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  %arrayidx = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aic3x_regulator_event, ptr %arrayidx, align 4
  %aic3x4 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %aic3x4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %aic3x4, align 4
  %consumer = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %consumer, align 4
  %call9 = tail call i32 @devm_regulator_register_notifier(ptr noundef %8, ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %for.cond, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @aic3x_regulator_event, ptr %arrayidx.1, align 4
  %aic3x4.1 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 1, i32 1
  %10 = ptrtoint ptr %aic3x4.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %aic3x4.1, align 4
  %consumer.1 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 2, i32 1, i32 1
  %11 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %consumer.1, align 4
  %call9.1 = tail call i32 @devm_regulator_register_notifier(ptr noundef %12, ptr noundef %arrayidx.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.1)
  %tobool.not.1 = icmp eq i32 %call9.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @aic3x_regulator_event, ptr %arrayidx.2, align 4
  %aic3x4.2 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 2, i32 1
  %14 = ptrtoint ptr %aic3x4.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %3, ptr %aic3x4.2, align 4
  %consumer.2 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 2, i32 2, i32 1
  %15 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %consumer.2, align 4
  %call9.2 = tail call i32 @devm_regulator_register_notifier(ptr noundef %16, ptr noundef %arrayidx.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.2)
  %tobool.not.2 = icmp eq i32 %call9.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.do.end_crit_edge

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @aic3x_regulator_event, ptr %arrayidx.3, align 4
  %aic3x4.3 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 3, i32 3, i32 1
  %18 = ptrtoint ptr %aic3x4.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %3, ptr %aic3x4.3, align 4
  %consumer.3 = getelementptr %struct.aic3x_priv, ptr %3, i32 0, i32 2, i32 3, i32 1
  %19 = ptrtoint ptr %consumer.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer.3, align 4
  %call9.3 = tail call i32 @devm_regulator_register_notifier(ptr noundef %20, ptr noundef %arrayidx.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.3)
  %tobool.not.3 = icmp eq i32 %call9.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.do.end_crit_edge

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %regmap = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %22) #6
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #6
  %call2.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef 128) #6
  %call3.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 43, i32 noundef 175) #6
  %call4.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 44, i32 noundef 175) #6
  %call5.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 47, i32 noundef 175) #6
  %call6.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 64, i32 noundef 175) #6
  %call7.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 54, i32 noundef 175) #6
  %call8.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 71, i32 noundef 175) #6
  %call9.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 82, i32 noundef 175) #6
  %call10.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 92, i32 noundef 175) #6
  %call11.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 86, i32 noundef 8, i32 noundef 8) #6
  %call12.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 93, i32 noundef 8, i32 noundef 8) #6
  %call13.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 51, i32 noundef 8, i32 noundef 8) #6
  %call14.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 65, i32 noundef 8, i32 noundef 8) #6
  %call15.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 58, i32 noundef 8, i32 noundef 8) #6
  %call16.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 72, i32 noundef 8, i32 noundef 8) #6
  %call17.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 15, i32 noundef 32) #6
  %call18.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 16, i32 noundef 32) #6
  %call19.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 19, i32 noundef 0) #6
  %call20.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 22, i32 noundef 0) #6
  %call21.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 46, i32 noundef 47) #6
  %call22.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 63, i32 noundef 47) #6
  %call23.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 53, i32 noundef 47) #6
  %call24.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 70, i32 noundef 47) #6
  %call25.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 81, i32 noundef 47) #6
  %call26.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 91, i32 noundef 47) #6
  %model.i = getelementptr inbounds %struct.aic3x_priv, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %model.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %model.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %28)
  %cmp.not.i = icmp eq i16 %28, 3
  br i1 %cmp.not.i, label %for.cond.3.aic3x_init.exit_crit_edge, label %if.end.i

for.cond.3.aic3x_init.exit_crit_edge:             ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %aic3x_init.exit

do.end:                                           ; preds = %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %call9.lcssa = phi i32 [ %call9, %entry.do.end_crit_edge ], [ %call9.1, %for.cond.do.end_crit_edge ], [ %call9.2, %for.cond.1.do.end_crit_edge ], [ %call9.3, %for.cond.2.do.end_crit_edge ]
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.189, i32 noundef %call9.lcssa) #9
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.3
  %call28.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 45, i32 noundef 47) #6
  %call29.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 62, i32 noundef 47) #6
  %call30.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 52, i32 noundef 47) #6
  %call31.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 69, i32 noundef 47) #6
  %call32.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 80, i32 noundef 47) #6
  %call33.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 90, i32 noundef 47) #6
  %31 = ptrtoint ptr %model.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %.pr.i = load i16, ptr %model.i, align 4
  %32 = zext i16 %.pr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.331)
  switch i16 %.pr.i, label %if.end.i.aic3x_init.exit_crit_edge [
    i16 0, label %if.end.i.sw.bb.i_crit_edge
    i16 1, label %if.end.i.sw.bb.i_crit_edge94
    i16 4, label %if.end.i.sw.bb.i_crit_edge95
    i16 2, label %sw.bb36.i
  ]

if.end.i.sw.bb.i_crit_edge95:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge94:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.aic3x_init.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %aic3x_init.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge94, %if.end.i.sw.bb.i_crit_edge95
  %call.i.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 75, i32 noundef 175) #6
  %call1.i.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 78, i32 noundef 175) #6
  %call2.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 79, i32 noundef 8, i32 noundef 8) #6
  %call3.i.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 74, i32 noundef 47) #6
  %call4.i.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 77, i32 noundef 47) #6
  %call5.i.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 73, i32 noundef 47) #6
  %call6.i.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 76, i32 noundef 47) #6
  br label %aic3x_init.exit

sw.bb36.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 73, i32 noundef 0) #6
  br label %aic3x_init.exit

aic3x_init.exit:                                  ; preds = %sw.bb36.i, %sw.bb.i, %if.end.i.aic3x_init.exit_crit_edge, %for.cond.3.aic3x_init.exit_crit_edge
  %ocmv.i = getelementptr inbounds %struct.aic3x_priv, ptr %26, i32 0, i32 15
  %33 = ptrtoint ptr %ocmv.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ocmv.i, align 4
  %conv38.i = zext i8 %34 to i32
  %shl.i = shl nuw nsw i32 %conv38.i, 6
  %call39.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 40, i32 noundef 192, i32 noundef %shl.i) #6
  %setup = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %setup, align 4
  %tobool11.not = icmp eq ptr %36, null
  br i1 %tobool11.not, label %aic3x_init.exit.if.end30_crit_edge, label %if.then12

aic3x_init.exit.if.end30_crit_edge:               ; preds = %aic3x_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then12:                                        ; preds = %aic3x_init.exit
  %model = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 13
  %37 = ptrtoint ptr %model to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp13.not = icmp eq i16 %38, 3
  br i1 %cmp13.not, label %do.end27, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %36, align 4
  %and = shl i32 %40, 4
  %shl = and i32 %and, 240
  %call18 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 98, i32 noundef %shl) #6
  %41 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %setup, align 4
  %arrayidx21 = getelementptr [2 x i32], ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx21, align 4
  %and22 = shl i32 %44, 4
  %shl23 = and i32 %and22, 240
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 99, i32 noundef %shl23) #6
  br label %if.end30

do.end27:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.192) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.then15, %aic3x_init.exit.if.end30_crit_edge
  %model31 = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 13
  %47 = ptrtoint ptr %model31 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %model31, align 4
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.332)
  switch i16 %48, label %if.end30.sw.epilog_crit_edge [
    i16 0, label %if.end30.sw.bb_crit_edge
    i16 1, label %if.end30.sw.bb_crit_edge96
    i16 4, label %if.end30.sw.bb_crit_edge97
    i16 2, label %sw.bb35
  ]

if.end30.sw.bb_crit_edge97:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end30.sw.bb_crit_edge96:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end30.sw.bb_crit_edge:                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end30.sw.epilog_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end30.sw.bb_crit_edge, %if.end30.sw.bb_crit_edge96, %if.end30.sw.bb_crit_edge97
  %call33 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic3x_extra_snd_controls, i32 noundef 9) #6
  %call34 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic3x_mono_controls, i32 noundef 5) #6
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic3x_extra_snd_controls, i32 noundef 9) #6
  %call37 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic3x_classd_amp_gain_ctrl, i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb, %if.end30.sw.epilog_crit_edge
  %micbias_vg = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 14
  %50 = ptrtoint ptr %micbias_vg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %micbias_vg, align 4
  %.off = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb38, label %sw.epilog.sw.epilog42_crit_edge

sw.epilog.sw.epilog42_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog42

sw.bb38:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %shl40 = shl nuw nsw i32 %51, 6
  %call41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 192, i32 noundef %shl40) #6
  br label %sw.epilog42

sw.epilog42:                                      ; preds = %sw.bb38, %sw.epilog.sw.epilog42_crit_edge
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i79 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %driver_data.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i79, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %model.i80 = getelementptr inbounds %struct.aic3x_priv, ptr %55, i32 0, i32 13
  %56 = ptrtoint ptr %model.i80 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %model.i80, align 4
  %58 = zext i16 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.333)
  switch i16 %57, label %sw.epilog42.cleanup_crit_edge [
    i16 0, label %sw.epilog42.sw.bb.i85_crit_edge
    i16 1, label %sw.epilog42.sw.bb.i85_crit_edge98
    i16 4, label %sw.epilog42.sw.bb.i85_crit_edge99
    i16 2, label %sw.bb6.i
    i16 3, label %sw.bb11.i
  ]

sw.epilog42.sw.bb.i85_crit_edge99:                ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i85

sw.epilog42.sw.bb.i85_crit_edge98:                ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i85

sw.epilog42.sw.bb.i85_crit_edge:                  ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i85

sw.epilog42.cleanup_crit_edge:                    ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i85:                                        ; preds = %sw.epilog42.sw.bb.i85_crit_edge, %sw.epilog42.sw.bb.i85_crit_edge98, %sw.epilog42.sw.bb.i85_crit_edge99
  %call2.i81 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic3x_extra_dapm_widgets, i32 noundef 18) #6
  %call3.i82 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @intercon_extra, i32 noundef 27) #6
  %call4.i83 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic3x_dapm_mono_widgets, i32 noundef 3) #6
  %call5.i84 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @intercon_mono, i32 noundef 8) #6
  br label %cleanup

sw.bb6.i:                                         ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i86 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic3x_extra_dapm_widgets, i32 noundef 18) #6
  %call8.i87 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @intercon_extra, i32 noundef 27) #6
  %call9.i88 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic3007_dapm_widgets, i32 noundef 4) #6
  %call10.i89 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @intercon_3007, i32 noundef 4) #6
  br label %cleanup

sw.bb11.i:                                        ; preds = %sw.epilog42
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i90 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic3104_extra_dapm_widgets, i32 noundef 10) #6
  %call13.i91 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @intercon_extra_3104, i32 noundef 4) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11.i, %sw.bb6.i, %sw.bb.i85, %sw.epilog42.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call9.lcssa, %do.end ], [ 0, %sw.epilog42.cleanup_crit_edge ], [ 0, %sw.bb.i85 ], [ 0, %sw.bb6.i ], [ 0, %sw.bb11.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_set_bias_level(ptr noundef %component, i32 noundef %level) #1 align 64 {
entry:
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb16
    i32 2, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %master = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 10
  %7 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 3, i32 noundef 128, i32 noundef 128) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 12
  %9 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %if.then5, label %sw.bb3.if.end7_crit_edge

sw.bb3.if.end7_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @aic3x_set_power(ptr noundef %component, i32 noundef 1)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.bb3.if.end7_crit_edge
  %dapm.i.i31 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %11 = ptrtoint ptr %dapm.i.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dapm.i.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %land.lhs.true10, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true10:                                  ; preds = %if.end7
  %master11 = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 10
  %13 = ptrtoint ptr %master11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %master11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not = icmp eq i32 %14, 0
  br i1 %tobool12.not, label %land.lhs.true10.sw.epilog_crit_edge, label %if.then13

land.lhs.true10.sw.epilog_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 3, i32 noundef 128, i32 noundef 0) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  %power17 = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %power17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %power17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %sw.bb16.sw.epilog_crit_edge, label %if.then19

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef 128) #6
  %regmap20.i = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %regmap20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap20.i, align 4
  tail call void @regcache_mark_dirty(ptr noundef %18) #6
  %19 = ptrtoint ptr %power17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %power17, align 4
  %20 = ptrtoint ptr %regmap20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap20.i, align 4
  tail call void @regcache_cache_only(ptr noundef %21, i1 noundef zeroext true) #6
  %supplies23.i = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 2
  %call25.i = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies23.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19, %sw.bb16.sw.epilog_crit_edge, %if.then13, %land.lhs.true10.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge, %if.then, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_bias_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %micbias_vg = getelementptr inbounds %struct.aic3x_priv, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %micbias_vg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %micbias_vg, align 4
  %shl = shl i32 %8, 6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %shl, %sw.bb ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 25, i32 noundef 192, i32 noundef %.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_regulator_event(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aic3x1 = getelementptr inbounds %struct.aic3x_disable_nb, ptr %nb, i32 0, i32 1
  %0 = ptrtoint ptr %aic3x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aic3x1, align 4
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %gpio_reset = getelementptr inbounds %struct.aic3x_priv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.aic3x_priv, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %6) #6
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_dapm_put_volsw_aic3x(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #1 align 64 {
entry:
  %update = alloca %struct.snd_soc_dapm_update, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #6
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 -176
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %reg2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg2, align 4
  %shift3 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %shift3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift3, align 4
  %max4 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %max4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 true) #6, !range !606
  %sub.i = sub nuw nsw i32 32, %9
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %invert6 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 8
  %10 = ptrtoint ptr %invert6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %invert6, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %update) #6
  %11 = getelementptr inbounds i8, ptr %update, i32 16
  %12 = call ptr @memset(ptr %11, i32 0, i32 16)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 8
  %and = and i32 %14, %sub
  %conv = trunc i32 %and to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  %spec.select = select i1 %tobool.not, i16 0, i16 15
  %15 = xor i16 %spec.select, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool10.not51 = icmp slt i8 %bf.load, 0
  %val.1 = select i1 %tobool10.not51, i16 %15, i16 %spec.select
  %shl16 = shl i32 15, %6
  %conv17 = zext i16 %val.1 to i32
  %shl18 = shl i32 %conv17, %6
  %conv20 = and i32 %shl18, 65535
  %call21 = tail call i32 @snd_soc_component_test_bits(ptr noundef %add.ptr.i.i, i32 noundef %4, i32 noundef %shl16, i32 noundef %conv20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %entry.if.end30_crit_edge, label %if.then23

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = xor i1 %tobool.not, true
  %lnot.ext = zext i1 %16 to i32
  %17 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %kcontrol, ptr %update, align 4
  %reg25 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %update, i32 0, i32 1
  %18 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %4, ptr %reg25, align 4
  %mask26 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %update, i32 0, i32 2
  %19 = ptrtoint ptr %mask26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl16, ptr %mask26, align 4
  %val28 = getelementptr inbounds %struct.snd_soc_dapm_update, ptr %update, i32 0, i32 3
  %20 = ptrtoint ptr %val28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv20, ptr %val28, align 4
  %call29 = call i32 @snd_soc_dapm_mixer_update_power(ptr noundef %call.i, ptr noundef %kcontrol, i32 noundef %lnot.ext, ptr noundef nonnull %update) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %entry.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %update) #6
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_test_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mixer_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aic3x_set_power(ptr noundef %component, i32 noundef %power) unnamed_addr #1 align 64 {
entry:
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool.not = icmp eq i32 %power, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %supplies = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.then
  %power4 = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %power4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %power4, align 4
  %gpio_reset = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 11
  %5 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %6)
  %7 = icmp ult i32 %6, 2048
  br i1 %7, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #6
  %9 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_reset, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %10) #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %regmap = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext false) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regcache_sync(ptr noundef %14) #6
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 5) #6
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp13
  br i1 %or.cond, label %if.then14, label %if.end8.while.body.preheader_crit_edge

if.end8.while.body.preheader_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 5, i32 noundef %call11) #6
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 6, i32 noundef %call12) #6
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.then14, %if.end8.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.01 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %while.body.preheader ]
  %dec = add nsw i32 %__ms.01, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %while.body.out_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef 128) #6
  %regmap20 = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap20, align 4
  tail call void @regcache_mark_dirty(ptr noundef %17) #6
  %power21 = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %power21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %power21, align 4
  %19 = ptrtoint ptr %regmap20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap20, align 4
  tail call void @regcache_cache_only(ptr noundef %20, i1 noundef zeroext true) #6
  %supplies23 = getelementptr inbounds %struct.aic3x_priv, ptr %3, i32 0, i32 2
  %call25 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies23) #6
  br label %out

out:                                              ; preds = %if.else, %while.body.out_crit_edge, %if.then.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %shl = shl i32 %clk_id, 4
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 102, i32 noundef 48, i32 noundef %shl) #6
  %shl3 = shl i32 %clk_id, 6
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 102, i32 noundef 192, i32 noundef %shl3) #6
  %sysclk = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 8) #6
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 9) #6
  %6 = trunc i32 %call3 to i8
  %conv5 = and i8 %6, 63
  %and6 = and i32 %fmt, 61440
  %7 = add nsw i32 %and6, -4096
  %8 = lshr exact i32 %7, 12
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %8, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb9
    i32 2, label %sw.bb14
    i32 1, label %sw.bb22
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = and i32 %call2, 63
  %master = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 10
  %10 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %master, align 4
  %or = or i32 %conv, 192
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %master10 = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %master10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %master10, align 4
  %and12 = and i32 %call2, 63
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %master15 = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %master15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %master15, align 4
  %13 = and i32 %call2, 63
  %conv19 = or i32 %13, 128
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %master23 = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %master23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %master23, align 4
  %15 = and i32 %call2, 63
  %conv29 = or i32 %15, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb14, %sw.bb9, %sw.bb
  %iface_areg.0 = phi i32 [ %conv29, %sw.bb22 ], [ %conv19, %sw.bb14 ], [ %and12, %sw.bb9 ], [ %or, %sw.bb ]
  %and30 = and i32 %fmt, 3855
  %16 = zext i32 %and30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %and30, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.epilog.sw.epilog44_crit_edge
    i32 772, label %sw.epilog.sw.bb31_crit_edge
    i32 773, label %sw.epilog.sw.bb31_crit_edge72
    i32 2, label %sw.bb35
    i32 3, label %sw.bb39
  ]

sw.epilog.sw.bb31_crit_edge72:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

sw.epilog.sw.bb31_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

sw.epilog.sw.epilog44_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog44

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb31:                                          ; preds = %sw.epilog.sw.bb31_crit_edge, %sw.epilog.sw.bb31_crit_edge72
  %17 = or i8 %conv5, 64
  br label %sw.epilog44

sw.bb35:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %18 = or i8 %conv5, -128
  br label %sw.epilog44

sw.bb39:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv42 = or i8 %6, -64
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.bb39, %sw.bb35, %sw.bb31, %sw.epilog.sw.epilog44_crit_edge
  %iface_breg.0 = phi i8 [ %conv42, %sw.bb39 ], [ %18, %sw.bb35 ], [ %17, %sw.bb31 ], [ %conv5, %sw.epilog.sw.epilog44_crit_edge ]
  %and45 = and i32 %fmt, 15
  %dai_fmt = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and45, ptr %dai_fmt, align 4
  %conv46 = and i32 %iface_areg.0, 255
  %call47 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 8, i32 noundef %conv46) #6
  %conv48 = zext i8 %iface_breg.0 to i32
  %call49 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 9, i32 noundef %conv48) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_set_dai_tdm_slot(ptr nocapture noundef readonly %codec_dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_cmp4(i32 %tx_mask, i32 %rx_mask)
  %cmp.not = icmp eq i32 %tx_mask, %rx_mask
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.318) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %tobool.not = icmp eq i32 %tx_mask, 0
  br i1 %tobool.not, label %do.end8, label %if.end10, !prof !607

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.321) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 true) #6, !range !606
  %add = add nuw nsw i32 %6, 1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %tx_mask, i1 true) #6, !range !606
  %sub.i = xor i32 %7, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i)
  %cmp13.not = icmp eq i32 %add, %sub.i
  br i1 %cmp13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.324) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %8 = add i32 %slot_width, -16
  %9 = tail call i32 @llvm.fshl.i32(i32 %8, i32 %8, i32 30)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %9, label %do.end22 [
    i32 0, label %if.end19.sw.epilog_crit_edge
    i32 1, label %if.end19.sw.epilog_crit_edge40
    i32 2, label %if.end19.sw.epilog_crit_edge41
    i32 4, label %if.end19.sw.epilog_crit_edge42
  ]

if.end19.sw.epilog_crit_edge42:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end19.sw.epilog_crit_edge41:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end19.sw.epilog_crit_edge40:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end22:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.327, i32 noundef %slot_width) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end19.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge40, %if.end19.sw.epilog_crit_edge41, %if.end19.sw.epilog_crit_edge42
  %tdm_delay = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 7
  %11 = ptrtoint ptr %tdm_delay to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %tdm_delay, align 4
  %slot_width24 = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %slot_width24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %slot_width, ptr %slot_width24, align 4
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 8, i32 noundef 32, i32 noundef 32) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end22, %do.end17, %do.end8, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end8 ], [ -22, %do.end17 ], [ -22, %do.end22 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 43) #6
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = and i32 %call, 127
  %or = or i32 %conv5, 128
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 43, i32 noundef %or) #6
  %conv7 = and i32 %call2, 127
  %or8 = or i32 %conv7, 128
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv4 = and i32 %call2, 127
  %conv = and i32 %call, 127
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 43, i32 noundef %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv4.sink = phi i32 [ %conv4, %if.else ], [ %or8, %if.then ]
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 44, i32 noundef %conv4.sink) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #1 align 64 {
entry:
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
  %slot_width = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then.if.then.i.i.i_crit_edge

if.then.if.then.i.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %if.then.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !606
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i.i = icmp eq i32 %12, 0
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
  br label %if.end

if.end:                                           ; preds = %params_width.exit, %entry.if.end_crit_edge
  %width.0 = phi i32 [ %7, %entry.if.end_crit_edge ], [ %call1.i, %params_width.exit ]
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 9) #6
  %13 = trunc i32 %call3 to i8
  %conv = and i8 %13, -49
  %14 = zext i32 %width.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %width.0, label %if.end.sw.epilog_crit_edge [
    i32 32, label %sw.bb10
    i32 20, label %sw.bb
    i32 24, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = or i8 %conv, 16
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = or i8 %conv, 32
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv13 = or i8 %13, 48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb6, %sw.bb, %if.end.sw.epilog_crit_edge
  %data.0 = phi i8 [ %conv, %if.end.sw.epilog_crit_edge ], [ %16, %sw.bb6 ], [ %15, %sw.bb ], [ %conv13, %sw.bb10 ]
  %conv14 = zext i8 %data.0 to i32
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 9, i32 noundef %conv14) #6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %rem = urem i32 %18, 11025
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %cond = select i1 %cmp, i32 44100, i32 48000
  %sysclk = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sysclk, align 4
  %div406 = lshr i32 %20, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div406, i32 %cond)
  %cmp22 = icmp eq i32 %div406, %cond
  br i1 %cmp22, label %sw.epilog.if.then27.critedge_crit_edge, label %for.inc

sw.epilog.if.then27.critedge_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc:                                          ; preds = %sw.epilog
  %div.1 = udiv i32 %20, 384
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %cond)
  %cmp22.1 = icmp eq i32 %div.1, %cond
  br i1 %cmp22.1, label %for.inc.if.then27.critedge_crit_edge, label %for.inc.1

for.inc.if.then27.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.1:                                        ; preds = %for.inc
  %div.2407 = lshr i32 %20, 9
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2407, i32 %cond)
  %cmp22.2 = icmp eq i32 %div.2407, %cond
  br i1 %cmp22.2, label %for.inc.1.if.then27.critedge_crit_edge, label %for.inc.2

for.inc.1.if.then27.critedge_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.2:                                        ; preds = %for.inc.1
  %div.3 = udiv i32 %20, 640
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %cond)
  %cmp22.3 = icmp eq i32 %div.3, %cond
  br i1 %cmp22.3, label %for.inc.2.if.then27.critedge_crit_edge, label %for.inc.3

for.inc.2.if.then27.critedge_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.3:                                        ; preds = %for.inc.2
  %div.4 = udiv i32 %20, 768
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4, i32 %cond)
  %cmp22.4 = icmp eq i32 %div.4, %cond
  br i1 %cmp22.4, label %for.inc.3.if.then27.critedge_crit_edge, label %for.inc.4

for.inc.3.if.then27.critedge_crit_edge:           ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.4:                                        ; preds = %for.inc.3
  %div.5 = udiv i32 %20, 896
  call void @__sanitizer_cov_trace_cmp4(i32 %div.5, i32 %cond)
  %cmp22.5 = icmp eq i32 %div.5, %cond
  br i1 %cmp22.5, label %for.inc.4.if.then27.critedge_crit_edge, label %for.inc.5

for.inc.4.if.then27.critedge_crit_edge:           ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.5:                                        ; preds = %for.inc.4
  %div.6408 = lshr i32 %20, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %div.6408, i32 %cond)
  %cmp22.6 = icmp eq i32 %div.6408, %cond
  br i1 %cmp22.6, label %for.inc.5.if.then27.critedge_crit_edge, label %for.inc.6

for.inc.5.if.then27.critedge_crit_edge:           ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.6:                                        ; preds = %for.inc.5
  %div.7 = udiv i32 %20, 1152
  call void @__sanitizer_cov_trace_cmp4(i32 %div.7, i32 %cond)
  %cmp22.7 = icmp eq i32 %div.7, %cond
  br i1 %cmp22.7, label %for.inc.6.if.then27.critedge_crit_edge, label %for.inc.7

for.inc.6.if.then27.critedge_crit_edge:           ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.7:                                        ; preds = %for.inc.6
  %div.8 = udiv i32 %20, 1280
  call void @__sanitizer_cov_trace_cmp4(i32 %div.8, i32 %cond)
  %cmp22.8 = icmp eq i32 %div.8, %cond
  br i1 %cmp22.8, label %for.inc.7.if.then27.critedge_crit_edge, label %for.inc.8

for.inc.7.if.then27.critedge_crit_edge:           ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.8:                                        ; preds = %for.inc.7
  %div.9 = udiv i32 %20, 1408
  call void @__sanitizer_cov_trace_cmp4(i32 %div.9, i32 %cond)
  %cmp22.9 = icmp eq i32 %div.9, %cond
  br i1 %cmp22.9, label %for.inc.8.if.then27.critedge_crit_edge, label %for.inc.9

for.inc.8.if.then27.critedge_crit_edge:           ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.9:                                        ; preds = %for.inc.8
  %div.10 = udiv i32 %20, 1536
  call void @__sanitizer_cov_trace_cmp4(i32 %div.10, i32 %cond)
  %cmp22.10 = icmp eq i32 %div.10, %cond
  br i1 %cmp22.10, label %for.inc.9.if.then27.critedge_crit_edge, label %for.inc.10

for.inc.9.if.then27.critedge_crit_edge:           ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.10:                                       ; preds = %for.inc.9
  %div.11 = udiv i32 %20, 1664
  call void @__sanitizer_cov_trace_cmp4(i32 %div.11, i32 %cond)
  %cmp22.11 = icmp eq i32 %div.11, %cond
  br i1 %cmp22.11, label %for.inc.10.if.then27.critedge_crit_edge, label %for.inc.11

for.inc.10.if.then27.critedge_crit_edge:          ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.11:                                       ; preds = %for.inc.10
  %div.12 = udiv i32 %20, 1792
  call void @__sanitizer_cov_trace_cmp4(i32 %div.12, i32 %cond)
  %cmp22.12 = icmp eq i32 %div.12, %cond
  br i1 %cmp22.12, label %for.inc.11.if.then27.critedge_crit_edge, label %for.inc.12

for.inc.11.if.then27.critedge_crit_edge:          ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.12:                                       ; preds = %for.inc.11
  %div.13 = udiv i32 %20, 1920
  call void @__sanitizer_cov_trace_cmp4(i32 %div.13, i32 %cond)
  %cmp22.13 = icmp eq i32 %div.13, %cond
  br i1 %cmp22.13, label %for.inc.12.if.then27.critedge_crit_edge, label %for.inc.13

for.inc.12.if.then27.critedge_crit_edge:          ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.13:                                       ; preds = %for.inc.12
  %div.14409 = lshr i32 %20, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %div.14409, i32 %cond)
  %cmp22.14 = icmp eq i32 %div.14409, %cond
  br i1 %cmp22.14, label %for.inc.13.if.then27.critedge_crit_edge, label %for.inc.14

for.inc.13.if.then27.critedge_crit_edge:          ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

for.inc.14:                                       ; preds = %for.inc.13
  %div.15 = udiv i32 %20, 2176
  call void @__sanitizer_cov_trace_cmp4(i32 %div.15, i32 %cond)
  %cmp22.15 = icmp eq i32 %div.15, %cond
  br i1 %cmp22.15, label %for.inc.14.if.then27.critedge_crit_edge, label %for.inc.14.if.end37_crit_edge

for.inc.14.if.end37_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

for.inc.14.if.then27.critedge_crit_edge:          ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27.critedge

if.then27.critedge:                               ; preds = %for.inc.14.if.then27.critedge_crit_edge, %for.inc.13.if.then27.critedge_crit_edge, %for.inc.12.if.then27.critedge_crit_edge, %for.inc.11.if.then27.critedge_crit_edge, %for.inc.10.if.then27.critedge_crit_edge, %for.inc.9.if.then27.critedge_crit_edge, %for.inc.8.if.then27.critedge_crit_edge, %for.inc.7.if.then27.critedge_crit_edge, %for.inc.6.if.then27.critedge_crit_edge, %for.inc.5.if.then27.critedge_crit_edge, %for.inc.4.if.then27.critedge_crit_edge, %for.inc.3.if.then27.critedge_crit_edge, %for.inc.2.if.then27.critedge_crit_edge, %for.inc.1.if.then27.critedge_crit_edge, %for.inc.if.then27.critedge_crit_edge, %sw.epilog.if.then27.critedge_crit_edge
  %pll_q.0358.lcssa.wide = phi i32 [ 16, %sw.epilog.if.then27.critedge_crit_edge ], [ 24, %for.inc.if.then27.critedge_crit_edge ], [ 32, %for.inc.1.if.then27.critedge_crit_edge ], [ 40, %for.inc.2.if.then27.critedge_crit_edge ], [ 48, %for.inc.3.if.then27.critedge_crit_edge ], [ 56, %for.inc.4.if.then27.critedge_crit_edge ], [ 64, %for.inc.5.if.then27.critedge_crit_edge ], [ 72, %for.inc.6.if.then27.critedge_crit_edge ], [ 80, %for.inc.7.if.then27.critedge_crit_edge ], [ 88, %for.inc.8.if.then27.critedge_crit_edge ], [ 96, %for.inc.9.if.then27.critedge_crit_edge ], [ 104, %for.inc.10.if.then27.critedge_crit_edge ], [ 112, %for.inc.11.if.then27.critedge_crit_edge ], [ 120, %for.inc.12.if.then27.critedge_crit_edge ], [ 0, %for.inc.13.if.then27.critedge_crit_edge ], [ 8, %for.inc.14.if.then27.critedge_crit_edge ]
  %call32 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 3, i32 noundef %pll_q.0358.lcssa.wide) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then27.critedge, %for.inc.14.if.end37_crit_edge
  %.sink416 = phi i32 [ 1, %if.then27.critedge ], [ 0, %for.inc.14.if.end37_crit_edge ]
  %.sink = phi i32 [ 0, %if.then27.critedge ], [ 128, %for.inc.14.if.end37_crit_edge ]
  %cmp19356 = phi i1 [ true, %if.then27.critedge ], [ false, %for.inc.14.if.end37_crit_edge ]
  %call35 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 101, i32 noundef %.sink416) #6
  %call36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 128, i32 noundef %.sink) #6
  %conv43 = select i1 %cmp, i8 -118, i8 10
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63999, i32 %22)
  %cmp45 = icmp ugt i32 %22, 63999
  %23 = or i8 %conv43, 96
  %spec.select = select i1 %cmp45, i8 %23, i8 %conv43
  %conv52 = zext i8 %spec.select to i32
  %call53 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv52) #6
  %mul54 = mul nuw nsw i32 %cond, 20
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %div56 = udiv i32 %mul54, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %25)
  %cmp59 = icmp ult i32 %25, 64000
  %conv62 = lshr i32 %div56, 1
  %div63329 = and i32 %conv62, 127
  %data.2 = select i1 %cmp59, i32 %div63329, i32 %div56
  %div67.lhs.trunc = trunc i32 %data.2 to i8
  %div67333 = udiv i8 %div67.lhs.trunc, 5
  %div67.zext = zext i8 %div67333 to i32
  %conv70 = add nuw nsw i32 %div67.zext, 254
  %conv71 = shl nuw nsw i32 %conv70, 4
  %or74 = or i32 %conv71, %conv70
  %conv76 = and i32 %or74, 255
  %call77 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 2, i32 noundef %conv76) #6
  br i1 %cmp19356, label %if.end37.cleanup225_crit_edge, label %if.end80

if.end37.cleanup225_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup225

if.end80:                                         ; preds = %if.end37
  %mul81 = shl nuw nsw i32 %cond, 11
  %26 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sysclk, align 4
  %div83 = udiv i32 %27, 1000
  %div84 = udiv i32 %mul81, %div83
  br label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %for.inc135.for.cond90.preheader_crit_edge, %if.end80
  %indvars.iv400 = phi i32 [ 1, %if.end80 ], [ %indvars.iv.next401, %for.inc135.for.cond90.preheader_crit_edge ]
  %pll_d.0378 = phi i16 [ 1, %if.end80 ], [ %pll_d.3, %for.inc135.for.cond90.preheader_crit_edge ]
  %pll_j.0377 = phi i8 [ 1, %if.end80 ], [ %pll_j.3, %for.inc135.for.cond90.preheader_crit_edge ]
  %pll_r.0376 = phi i8 [ 1, %if.end80 ], [ %pll_r.3, %for.inc135.for.cond90.preheader_crit_edge ]
  %pll_p.0375 = phi i8 [ 1, %if.end80 ], [ %pll_p.3, %for.inc135.for.cond90.preheader_crit_edge ]
  %last_clk.0373 = phi i32 [ 0, %if.end80 ], [ %last_clk.3, %for.inc135.for.cond90.preheader_crit_edge ]
  %mul101 = mul nuw nsw i32 %indvars.iv400, 1000
  %28 = trunc i32 %indvars.iv400 to i8
  br label %for.cond95.preheader

for.cond138.preheader:                            ; preds = %for.inc135
  %div164 = udiv i32 %27, 100
  br label %for.body142

for.cond95.preheader:                             ; preds = %for.inc132.for.cond95.preheader_crit_edge, %for.cond90.preheader
  %indvars.iv397 = phi i32 [ 1, %for.cond90.preheader ], [ %indvars.iv.next398, %for.inc132.for.cond95.preheader_crit_edge ]
  %pll_d.1371 = phi i16 [ %pll_d.0378, %for.cond90.preheader ], [ %pll_d.3, %for.inc132.for.cond95.preheader_crit_edge ]
  %pll_j.1370 = phi i8 [ %pll_j.0377, %for.cond90.preheader ], [ %pll_j.3, %for.inc132.for.cond95.preheader_crit_edge ]
  %pll_r.1369 = phi i8 [ %pll_r.0376, %for.cond90.preheader ], [ %pll_r.3, %for.inc132.for.cond95.preheader_crit_edge ]
  %pll_p.1368 = phi i8 [ %pll_p.0375, %for.cond90.preheader ], [ %pll_p.3, %for.inc132.for.cond95.preheader_crit_edge ]
  %last_clk.1366 = phi i32 [ %last_clk.0373, %for.cond90.preheader ], [ %last_clk.3, %for.inc132.for.cond95.preheader_crit_edge ]
  %29 = trunc i32 %indvars.iv397 to i8
  br label %for.body99

for.cond95:                                       ; preds = %if.end124
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 56
  br i1 %exitcond.not, label %for.inc132, label %for.cond95.for.body99_crit_edge

for.cond95.for.body99_crit_edge:                  ; preds = %for.cond95
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body99

for.body99:                                       ; preds = %for.cond95.for.body99_crit_edge, %for.cond95.preheader
  %indvars.iv = phi i32 [ 4, %for.cond95.preheader ], [ %indvars.iv.next, %for.cond95.for.body99_crit_edge ]
  %pll_d.2365 = phi i16 [ %pll_d.1371, %for.cond95.preheader ], [ %pll_d.3, %for.cond95.for.body99_crit_edge ]
  %pll_j.2364 = phi i8 [ %pll_j.1370, %for.cond95.preheader ], [ %pll_j.3, %for.cond95.for.body99_crit_edge ]
  %pll_r.2363 = phi i8 [ %pll_r.1369, %for.cond95.preheader ], [ %pll_r.3, %for.cond95.for.body99_crit_edge ]
  %pll_p.2362 = phi i8 [ %pll_p.1368, %for.cond95.preheader ], [ %pll_p.3, %for.cond95.for.body99_crit_edge ]
  %last_clk.2360 = phi i32 [ %last_clk.1366, %for.cond95.preheader ], [ %last_clk.3, %for.cond95.for.body99_crit_edge ]
  %mul103 = mul nuw nsw i32 %mul101, %indvars.iv
  %div105 = udiv i32 %mul103, %indvars.iv397
  %sub106 = sub nsw i32 %div84, %div105
  %30 = tail call i32 @llvm.abs.i32(i32 %sub106, i1 true)
  %sub112 = sub i32 %div84, %last_clk.2360
  %31 = tail call i32 @llvm.abs.i32(i32 %sub112, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %31)
  %cmp121 = icmp slt i32 %30, %31
  br i1 %cmp121, label %if.then123, label %for.body99.if.end124_crit_edge

for.body99.if.end124_crit_edge:                   ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end124

if.then123:                                       ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #8
  %32 = trunc i32 %indvars.iv to i8
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %for.body99.if.end124_crit_edge
  %last_clk.3 = phi i32 [ %div105, %if.then123 ], [ %last_clk.2360, %for.body99.if.end124_crit_edge ]
  %pll_p.3 = phi i8 [ %29, %if.then123 ], [ %pll_p.2362, %for.body99.if.end124_crit_edge ]
  %pll_r.3 = phi i8 [ %28, %if.then123 ], [ %pll_r.2363, %for.body99.if.end124_crit_edge ]
  %pll_j.3 = phi i8 [ %32, %if.then123 ], [ %pll_j.2364, %for.body99.if.end124_crit_edge ]
  %pll_d.3 = phi i16 [ 0, %if.then123 ], [ %pll_d.2365, %for.body99.if.end124_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div84, i32 %div105)
  %cmp125 = icmp eq i32 %div84, %div105
  br i1 %cmp125, label %if.end124.found_crit_edge, label %for.cond95

if.end124.found_crit_edge:                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %found

for.inc132:                                       ; preds = %for.cond95
  %indvars.iv.next398 = add nuw nsw i32 %indvars.iv397, 1
  %exitcond399.not = icmp eq i32 %indvars.iv.next398, 9
  br i1 %exitcond399.not, label %for.inc135, label %for.inc132.for.cond95.preheader_crit_edge

for.inc132.for.cond95.preheader_crit_edge:        ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond95.preheader

for.inc135:                                       ; preds = %for.inc132
  %indvars.iv.next401 = add nuw nsw i32 %indvars.iv400, 1
  %exitcond402.not = icmp eq i32 %indvars.iv.next401, 17
  br i1 %exitcond402.not, label %for.cond138.preheader, label %for.inc135.for.cond90.preheader_crit_edge

for.inc135.for.cond90.preheader_crit_edge:        ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond90.preheader

for.body142:                                      ; preds = %for.inc201.for.body142_crit_edge, %for.cond138.preheader
  %indvars.iv403 = phi i32 [ 1, %for.cond138.preheader ], [ %indvars.iv.next404, %for.inc201.for.body142_crit_edge ]
  %pll_d.4387 = phi i16 [ %pll_d.3, %for.cond138.preheader ], [ %pll_d.6, %for.inc201.for.body142_crit_edge ]
  %pll_j.4386 = phi i8 [ %pll_j.3, %for.cond138.preheader ], [ %pll_j.6, %for.inc201.for.body142_crit_edge ]
  %pll_r.4385 = phi i8 [ %pll_r.3, %for.cond138.preheader ], [ %pll_r.6, %for.inc201.for.body142_crit_edge ]
  %pll_p.4384 = phi i8 [ %pll_p.3, %for.cond138.preheader ], [ %pll_p.6, %for.inc201.for.body142_crit_edge ]
  %last_clk.4380 = phi i32 [ %last_clk.3, %for.cond138.preheader ], [ %last_clk.6, %for.inc201.for.body142_crit_edge ]
  %mul144 = mul nuw nsw i32 %indvars.iv403, %div84
  %div145.udiv = udiv i32 %mul144, 1000
  %conv146 = trunc i32 %div145.udiv to i8
  %conv147 = and i32 %div145.udiv, 255
  %33 = add nsw i32 %conv147, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %33)
  %34 = icmp ult i32 %33, -8
  br i1 %34, label %for.body142.for.inc201_crit_edge, label %if.end154

for.body142.for.inc201_crit_edge:                 ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc201

if.end154:                                        ; preds = %for.body142
  %mul157 = mul nuw nsw i32 %mul81, %indvars.iv403
  %mul160 = mul i32 %conv147, %27
  %sub161 = sub i32 %mul157, %mul160
  %mul162 = mul i32 %sub161, 100
  %div165 = udiv i32 %mul162, %div164
  %mul168 = mul nuw nsw i32 %conv147, 10000
  %conv169 = and i32 %div165, 65535
  %add = add nuw nsw i32 %conv169, %mul168
  %mul171 = mul nuw nsw i32 %indvars.iv403, 10
  %div172 = udiv i32 %add, %mul171
  %sub174 = sub nsw i32 %div84, %div172
  %35 = tail call i32 @llvm.abs.i32(i32 %sub174, i1 true)
  %sub184 = sub i32 %div84, %last_clk.4380
  %36 = tail call i32 @llvm.abs.i32(i32 %sub184, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %36)
  %cmp193 = icmp slt i32 %35, %36
  br i1 %cmp193, label %if.then195, label %if.end154.if.end196_crit_edge

if.end154.if.end196_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end196

if.then195:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  %conv166 = trunc i32 %div165 to i16
  %37 = trunc i32 %indvars.iv403 to i8
  br label %if.end196

if.end196:                                        ; preds = %if.then195, %if.end154.if.end196_crit_edge
  %last_clk.5 = phi i32 [ %div172, %if.then195 ], [ %last_clk.4380, %if.end154.if.end196_crit_edge ]
  %pll_p.5 = phi i8 [ %37, %if.then195 ], [ %pll_p.4384, %if.end154.if.end196_crit_edge ]
  %pll_r.5 = phi i8 [ 1, %if.then195 ], [ %pll_r.4385, %if.end154.if.end196_crit_edge ]
  %pll_j.5 = phi i8 [ %conv146, %if.then195 ], [ %pll_j.4386, %if.end154.if.end196_crit_edge ]
  %pll_d.5 = phi i16 [ %conv166, %if.then195 ], [ %pll_d.4387, %if.end154.if.end196_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div84, i32 %div172)
  %cmp197 = icmp eq i32 %div84, %div172
  br i1 %cmp197, label %if.end196.found_crit_edge, label %if.end196.for.inc201_crit_edge

if.end196.for.inc201_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc201

if.end196.found_crit_edge:                        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  br label %found

for.inc201:                                       ; preds = %if.end196.for.inc201_crit_edge, %for.body142.for.inc201_crit_edge
  %last_clk.6 = phi i32 [ %last_clk.4380, %for.body142.for.inc201_crit_edge ], [ %last_clk.5, %if.end196.for.inc201_crit_edge ]
  %pll_p.6 = phi i8 [ %pll_p.4384, %for.body142.for.inc201_crit_edge ], [ %pll_p.5, %if.end196.for.inc201_crit_edge ]
  %pll_r.6 = phi i8 [ %pll_r.4385, %for.body142.for.inc201_crit_edge ], [ %pll_r.5, %if.end196.for.inc201_crit_edge ]
  %pll_j.6 = phi i8 [ %pll_j.4386, %for.body142.for.inc201_crit_edge ], [ %pll_j.5, %if.end196.for.inc201_crit_edge ]
  %pll_d.6 = phi i16 [ %pll_d.4387, %for.body142.for.inc201_crit_edge ], [ %pll_d.5, %if.end196.for.inc201_crit_edge ]
  %indvars.iv.next404 = add nuw nsw i32 %indvars.iv403, 1
  %exitcond405.not = icmp eq i32 %indvars.iv.next404, 9
  br i1 %exitcond405.not, label %for.end203, label %for.inc201.for.body142_crit_edge

for.inc201.for.body142_crit_edge:                 ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body142

for.end203:                                       ; preds = %for.inc201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_clk.6)
  %cmp204 = icmp eq i32 %last_clk.6, 0
  br i1 %cmp204, label %do.end, label %for.end203.found_crit_edge

for.end203.found_crit_edge:                       ; preds = %for.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %found

do.end:                                           ; preds = %for.end203
  call void @__sanitizer_cov_trace_pc() #8
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.330) #9
  br label %cleanup225

found:                                            ; preds = %for.end203.found_crit_edge, %if.end196.found_crit_edge, %if.end124.found_crit_edge
  %pll_p.7 = phi i8 [ %pll_p.6, %for.end203.found_crit_edge ], [ %pll_p.5, %if.end196.found_crit_edge ], [ %pll_p.3, %if.end124.found_crit_edge ]
  %pll_r.7 = phi i8 [ %pll_r.6, %for.end203.found_crit_edge ], [ %pll_r.5, %if.end196.found_crit_edge ], [ %pll_r.3, %if.end124.found_crit_edge ]
  %pll_j.7 = phi i8 [ %pll_j.6, %for.end203.found_crit_edge ], [ %pll_j.5, %if.end196.found_crit_edge ], [ %pll_j.3, %if.end124.found_crit_edge ]
  %pll_d.7 = phi i16 [ %pll_d.6, %for.end203.found_crit_edge ], [ %pll_d.5, %if.end196.found_crit_edge ], [ %pll_d.3, %if.end124.found_crit_edge ]
  %conv210 = zext i8 %pll_p.7 to i32
  %call211 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 7, i32 noundef %conv210) #6
  %conv212 = zext i8 %pll_r.7 to i32
  %call214 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 11, i32 noundef %conv212) #6
  %conv215 = zext i8 %pll_j.7 to i32
  %shl216 = shl nuw nsw i32 %conv215, 2
  %call217 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %shl216) #6
  %conv218 = zext i16 %pll_d.7 to i32
  %38 = lshr i32 %conv218, 6
  %call220 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %38) #6
  %and222 = shl nuw nsw i32 %conv218, 2
  %shl223 = and i32 %and222, 252
  %call224 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %shl223) #6
  br label %cleanup225

cleanup225:                                       ; preds = %found, %do.end, %if.end37.cleanup225_crit_edge
  %retval.0 = phi i32 [ 0, %found ], [ -22, %do.end ], [ 0, %if.end37.cleanup225_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic3x_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #1 align 64 {
entry:
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
  %slot_width = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %sample_bits = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %sample_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sample_bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %width.0 = phi i32 [ %7, %entry.if.end_crit_edge ], [ %11, %if.then ]
  %dai_fmt = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dai_fmt, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %13, label %if.end.if.end11_crit_edge [
    i32 4, label %if.then2
    i32 5, label %if.then6
  ]

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tdm_delay = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 7
  %15 = ptrtoint ptr %tdm_delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tdm_delay, align 4
  %mul = mul i32 %16, %width.0
  %add = add i32 %mul, 1
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tdm_delay7 = getelementptr inbounds %struct.aic3x_priv, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %tdm_delay7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tdm_delay7, align 4
  %mul8 = mul i32 %18, %width.0
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then2, %if.end.if.end11_crit_edge
  %delay.0 = phi i32 [ %add, %if.then2 ], [ %mul8, %if.then6 ], [ 0, %if.end.if.end11_crit_edge ]
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 10, i32 noundef %delay.0) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 401)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 401)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !258, !260, !262, !264, !266, !268, !269, !271, !273, !275, !277, !279, !281, !282, !284, !286, !288, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !418, !419, !420, !422, !423, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !575, !576, !577, !579, !580, !581, !583, !584, !585, !587, !588, !589, !591, !592, !593, !594}
!llvm.module.flags = !{!596, !597, !598, !599, !600, !601, !602, !603}
!llvm.ident = !{!604}

!0 = !{ptr @aic3x_regmap, !1, !"aic3x_regmap", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 133, i32 28}
!2 = !{ptr @__ksymtab_aic3x_regmap, !3, !"__ksymtab_aic3x_regmap", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 142, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1782, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1786, i32 32}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1788, i32 5}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @aic3x_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @aic3x_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1795, i32 38}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1800, i32 33}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1813, i32 5}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @aic3x_probe._entry.9, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @aic3x_probe._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1828, i32 41}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1840, i32 3}
!29 = !{ptr @aic3x_probe._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @aic3x_probe._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1850, i32 4}
!33 = !{ptr @aic3x_probe._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @aic3x_probe._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @__ksymtab_aic3x_probe, !36, !"__ksymtab_aic3x_probe", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1871, i32 1}
!37 = !{ptr @__ksymtab_aic3x_remove, !38, !"__ksymtab_aic3x_remove", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1885, i32 1}
!39 = !{ptr @__UNIQUE_ID_description294, !40, !"__UNIQUE_ID_description294", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1887, i32 1}
!41 = !{ptr @__UNIQUE_ID_author295, !42, !"__UNIQUE_ID_author295", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1888, i32 1}
!43 = !{ptr @__UNIQUE_ID_file296, !44, !"__UNIQUE_ID_file296", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1889, i32 1}
!45 = !{ptr @__UNIQUE_ID_license297, !44, !"__UNIQUE_ID_license297", i1 false, i1 false}
!46 = !{ptr @aic3x_reg, !47, !"aic3x_reg", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 92, i32 33}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 54, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 55, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 56, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 57, i32 2}
!56 = distinct !{null, !57, !"aic3x_supply_names", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 53, i32 20}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1710, i32 38}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1722, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @aic3x_configure_ocmv._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @aic3x_configure_ocmv._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1734, i32 3}
!67 = !{ptr @aic3x_configure_ocmv._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @aic3x_configure_ocmv._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @aic3007_class_d, !70, !"aic3007_class_d", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1741, i32 34}
!71 = !{ptr @soc_component_dev_aic3x, !72, !"soc_component_dev_aic3x", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1690, i32 46}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 322, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 330, i32 2}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 332, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 335, i32 2}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 337, i32 2}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 340, i32 2}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 342, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 345, i32 2}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 347, i32 2}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 350, i32 2}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 352, i32 2}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 355, i32 2}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 357, i32 2}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 361, i32 2}
!101 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 364, i32 2}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 368, i32 2}
!105 = !{ptr @.str.61, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 371, i32 2}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 375, i32 2}
!109 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 378, i32 2}
!111 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 383, i32 2}
!113 = !{ptr @.str.69, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 385, i32 2}
!115 = !{ptr @.str.71, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 387, i32 2}
!117 = !{ptr @.str.73, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 389, i32 2}
!119 = !{ptr @.str.75, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 391, i32 2}
!121 = !{ptr @.str.77, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 393, i32 2}
!123 = !{ptr @.str.79, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 400, i32 2}
!125 = !{ptr @.str.81, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 401, i32 2}
!127 = !{ptr @.str.82, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 402, i32 2}
!129 = !{ptr @.str.83, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 403, i32 2}
!131 = !{ptr @.str.84, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 404, i32 2}
!133 = !{ptr @.str.85, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 405, i32 2}
!135 = !{ptr @.str.86, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 406, i32 2}
!137 = !{ptr @.str.87, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 409, i32 2}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 412, i32 2}
!141 = !{ptr @.str.91, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 414, i32 2}
!143 = !{ptr @.str.93, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 416, i32 2}
!145 = !{ptr @.str.94, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 419, i32 2}
!147 = !{ptr @.str.95, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 420, i32 2}
!149 = !{ptr @aic3x_snd_controls, !150, !"aic3x_snd_controls", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 320, i32 38}
!151 = !{ptr @dac_tlv, !152, !"dac_tlv", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 303, i32 8}
!153 = !{ptr @output_stage_tlv, !154, !"output_stage_tlv", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 315, i32 8}
!155 = !{ptr @out_tlv, !156, !"out_tlv", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 318, i32 14}
!157 = !{ptr @aic3x_lagc_level_enum, !158, !"aic3x_lagc_level_enum", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 271, i32 8}
!159 = !{ptr @.str.96, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 269, i32 2}
!161 = !{ptr @.str.97, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 269, i32 12}
!163 = !{ptr @.str.98, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 269, i32 20}
!165 = !{ptr @.str.99, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 269, i32 29}
!167 = !{ptr @.str.100, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 270, i32 2}
!169 = !{ptr @.str.101, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 270, i32 11}
!171 = !{ptr @.str.102, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 270, i32 20}
!173 = !{ptr @.str.103, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 270, i32 29}
!175 = !{ptr @aic3x_agc_level, !176, !"aic3x_agc_level", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 268, i32 27}
!177 = !{ptr @aic3x_ragc_level_enum, !178, !"aic3x_ragc_level_enum", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 273, i32 8}
!179 = !{ptr @aic3x_lagc_attack_enum, !180, !"aic3x_lagc_attack_enum", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 278, i32 8}
!181 = !{ptr @.str.104, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 277, i32 2}
!183 = !{ptr @.str.105, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 277, i32 9}
!185 = !{ptr @.str.106, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 277, i32 17}
!187 = !{ptr @.str.107, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 277, i32 25}
!189 = !{ptr @aic3x_agc_attack, !190, !"aic3x_agc_attack", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 276, i32 27}
!191 = !{ptr @aic3x_ragc_attack_enum, !192, !"aic3x_ragc_attack_enum", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 280, i32 8}
!193 = !{ptr @aic3x_lagc_decay_enum, !194, !"aic3x_lagc_decay_enum", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 285, i32 8}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 284, i32 2}
!197 = !{ptr @.str.109, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 284, i32 11}
!199 = !{ptr @.str.110, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 284, i32 20}
!201 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 284, i32 29}
!203 = !{ptr @aic3x_agc_decay, !204, !"aic3x_agc_decay", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 283, i32 27}
!205 = !{ptr @aic3x_ragc_decay_enum, !206, !"aic3x_ragc_decay_enum", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 287, i32 8}
!207 = !{ptr @adc_tlv, !208, !"adc_tlv", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 305, i32 8}
!209 = !{ptr @aic3x_adc_hpf_enum, !210, !"aic3x_adc_hpf_enum", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 265, i32 8}
!211 = !{ptr @.str.112, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 264, i32 2}
!213 = !{ptr @.str.113, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 264, i32 14}
!215 = !{ptr @.str.114, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 264, i32 27}
!217 = !{ptr @.str.115, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 264, i32 40}
!219 = !{ptr @aic3x_adc_hpf, !220, !"aic3x_adc_hpf", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 263, i32 27}
!221 = !{ptr @aic3x_poweron_time_enum, !222, !"aic3x_poweron_time_enum", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 293, i32 8}
!223 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 291, i32 2}
!225 = !{ptr @.str.117, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 291, i32 9}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 291, i32 17}
!229 = !{ptr @.str.119, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 291, i32 26}
!231 = !{ptr @.str.120, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 291, i32 33}
!233 = !{ptr @.str.121, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 291, i32 41}
!235 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 292, i32 29}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 292, i32 38}
!239 = !{ptr @.str.124, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 292, i32 44}
!241 = !{ptr @aic3x_poweron_time, !242, !"aic3x_poweron_time", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 290, i32 27}
!243 = !{ptr @aic3x_rampup_step_enum, !244, !"aic3x_rampup_step_enum", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 297, i32 8}
!245 = !{ptr @.str.125, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 296, i32 51}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 296, i32 65}
!249 = !{ptr @.str.127, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 296, i32 72}
!251 = !{ptr @aic3x_rampup_step, !252, !"aic3x_rampup_step", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 296, i32 27}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 635, i32 2}
!255 = !{ptr @.str.129, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 636, i32 2}
!258 = !{ptr @.str.131, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 638, i32 2}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 640, i32 2}
!262 = !{ptr @.str.133, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 641, i32 2}
!264 = !{ptr @.str.134, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 642, i32 2}
!266 = !{ptr @.str.135, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 645, i32 2}
!268 = !{ptr @.str.136, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.137, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 646, i32 2}
!271 = !{ptr @.str.138, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 648, i32 2}
!273 = !{ptr @.str.139, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 650, i32 2}
!275 = !{ptr @.str.140, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 651, i32 2}
!277 = !{ptr @.str.141, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 652, i32 2}
!279 = !{ptr @.str.142, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 655, i32 2}
!281 = !{ptr @.str.143, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.144, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 656, i32 2}
!284 = !{ptr @.str.145, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 658, i32 2}
!286 = !{ptr @.str.146, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 662, i32 2}
!288 = !{ptr @.str.147, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.148, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 664, i32 2}
!291 = !{ptr @.str.149, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 666, i32 2}
!293 = !{ptr @.str.150, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 670, i32 2}
!295 = !{ptr @.str.151, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 674, i32 2}
!297 = !{ptr @.str.152, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 675, i32 2}
!299 = !{ptr @.str.153, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 676, i32 2}
!301 = !{ptr @.str.154, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 677, i32 2}
!303 = !{ptr @.str.155, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 678, i32 2}
!305 = !{ptr @.str.156, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 679, i32 2}
!307 = !{ptr @.str.157, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 681, i32 2}
!309 = !{ptr @.str.158, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 682, i32 2}
!311 = !{ptr @.str.159, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 690, i32 2}
!313 = !{ptr @aic3x_dapm_widgets, !314, !"aic3x_dapm_widgets", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 633, i32 41}
!315 = !{ptr @.str.161, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 489, i32 1}
!317 = !{ptr @aic3x_left_dac_mux_controls, !318, !"aic3x_left_dac_mux_controls", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 488, i32 38}
!319 = !{ptr @aic3x_left_dac_enum, !320, !"aic3x_left_dac_enum", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 229, i32 8}
!321 = !{ptr @.str.162, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 228, i32 2}
!323 = !{ptr @.str.163, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 228, i32 12}
!325 = !{ptr @.str.164, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 228, i32 22}
!327 = !{ptr @aic3x_left_dac_mux, !328, !"aic3x_left_dac_mux", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 227, i32 27}
!329 = !{ptr @aic3x_left_hpcom_mux_controls, !330, !"aic3x_left_hpcom_mux_controls", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 496, i32 38}
!331 = !{ptr @aic3x_left_hpcom_enum, !332, !"aic3x_left_hpcom_enum", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 239, i32 8}
!333 = !{ptr @.str.165, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 238, i32 2}
!335 = !{ptr @.str.166, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 238, i32 28}
!337 = !{ptr @.str.167, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 238, i32 44}
!339 = !{ptr @aic3x_left_hpcom_mux, !340, !"aic3x_left_hpcom_mux", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 237, i32 27}
!341 = !{ptr @aic3x_right_dac_mux_controls, !342, !"aic3x_right_dac_mux_controls", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 492, i32 38}
!343 = !{ptr @aic3x_right_dac_enum, !344, !"aic3x_right_dac_enum", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 234, i32 8}
!345 = !{ptr @.str.168, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 233, i32 2}
!347 = !{ptr @.str.169, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 233, i32 12}
!349 = !{ptr @.str.170, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 233, i32 22}
!351 = !{ptr @aic3x_right_dac_mux, !352, !"aic3x_right_dac_mux", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 232, i32 27}
!353 = !{ptr @aic3x_right_hpcom_mux_controls, !354, !"aic3x_right_hpcom_mux_controls", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 500, i32 38}
!355 = !{ptr @aic3x_right_hpcom_enum, !356, !"aic3x_right_hpcom_enum", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 245, i32 8}
!357 = !{ptr @.str.171, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 243, i32 2}
!359 = !{ptr @.str.172, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 244, i32 2}
!361 = !{ptr @.str.173, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 244, i32 28}
!363 = !{ptr @aic3x_right_hpcom_mux, !364, !"aic3x_right_hpcom_mux", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 242, i32 27}
!365 = !{ptr @aic3x_left_line1l_mux_controls, !366, !"aic3x_left_line1l_mux_controls", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 614, i32 38}
!367 = !{ptr @aic3x_line1l_2_l_enum, !368, !"aic3x_line1l_2_l_enum", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 250, i32 8}
!369 = !{ptr @.str.174, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 249, i32 18}
!371 = !{ptr @aic3x_linein_mode_mux, !372, !"aic3x_linein_mode_mux", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 248, i32 27}
!373 = !{ptr @aic3x_left_line1r_mux_controls, !374, !"aic3x_left_line1r_mux_controls", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 622, i32 38}
!375 = !{ptr @aic3x_line1r_2_l_enum, !376, !"aic3x_line1r_2_l_enum", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 254, i32 8}
!377 = !{ptr @aic3x_right_line1l_mux_controls, !378, !"aic3x_right_line1l_mux_controls", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 616, i32 38}
!379 = !{ptr @aic3x_line1l_2_r_enum, !380, !"aic3x_line1l_2_r_enum", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 252, i32 8}
!381 = !{ptr @aic3x_right_line1r_mux_controls, !382, !"aic3x_right_line1r_mux_controls", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 620, i32 38}
!383 = !{ptr @aic3x_line1r_2_r_enum, !384, !"aic3x_line1r_2_r_enum", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 256, i32 8}
!385 = !{ptr @.str.175, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 819, i32 3}
!387 = !{ptr @.str.176, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 819, i32 21}
!389 = !{ptr @.str.177, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 820, i32 21}
!391 = !{ptr @.str.178, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 830, i32 3}
!393 = !{ptr @.str.179, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 846, i32 3}
!395 = !{ptr @.str.180, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 846, i32 22}
!397 = !{ptr @.str.181, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 847, i32 22}
!399 = !{ptr @.str.182, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 848, i32 22}
!401 = !{ptr @.str.183, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 849, i32 22}
!403 = !{ptr @.str.184, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 856, i32 3}
!405 = !{ptr @.str.185, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 866, i32 3}
!407 = !{ptr @.str.186, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 876, i32 3}
!409 = !{ptr @.str.187, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 886, i32 3}
!411 = !{ptr @.str.188, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 898, i32 3}
!413 = !{ptr @intercon, !414, !"intercon", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 812, i32 40}
!415 = !{ptr @.str.189, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1626, i32 4}
!417 = !{ptr @.str.190, !416, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @aic3x_component_probe._entry, !416, !"_entry", i1 false, i1 false}
!419 = !{ptr @aic3x_component_probe._entry_ptr, !416, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.192, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1644, i32 4}
!422 = !{ptr @aic3x_component_probe._entry.191, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @aic3x_component_probe._entry_ptr.193, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.194, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 430, i32 2}
!426 = !{ptr @.str.196, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 433, i32 2}
!428 = !{ptr @.str.198, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 436, i32 2}
!430 = !{ptr @.str.200, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 439, i32 2}
!432 = !{ptr @.str.202, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 442, i32 2}
!434 = !{ptr @.str.204, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 445, i32 2}
!436 = !{ptr @.str.206, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 449, i32 2}
!438 = !{ptr @.str.208, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 453, i32 2}
!440 = !{ptr @.str.210, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 457, i32 2}
!442 = !{ptr @aic3x_extra_snd_controls, !443, !"aic3x_extra_snd_controls", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 424, i32 38}
!444 = !{ptr @.str.212, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 463, i32 2}
!446 = !{ptr @.str.214, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 466, i32 2}
!448 = !{ptr @.str.216, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 469, i32 2}
!450 = !{ptr @.str.218, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 473, i32 2}
!452 = !{ptr @.str.220, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 474, i32 2}
!454 = !{ptr @aic3x_mono_controls, !455, !"aic3x_mono_controls", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 462, i32 38}
!456 = !{ptr @.str.222, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 485, i32 2}
!458 = !{ptr @aic3x_classd_amp_gain_ctrl, !459, !"aic3x_classd_amp_gain_ctrl", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 484, i32 38}
!460 = !{ptr @classd_amp_tlv, !461, !"classd_amp_tlv", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 482, i32 8}
!462 = !{ptr @.str.224, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 699, i32 2}
!464 = !{ptr @.str.225, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 706, i32 2}
!466 = !{ptr @.str.226, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 714, i32 2}
!468 = !{ptr @.str.227, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 723, i32 2}
!470 = !{ptr @.str.228, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 725, i32 2}
!472 = !{ptr @.str.229, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 727, i32 2}
!474 = !{ptr @.str.230, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 750, i32 2}
!476 = !{ptr @.str.231, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 751, i32 2}
!478 = !{ptr @.str.232, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 752, i32 2}
!480 = !{ptr @.str.233, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 753, i32 2}
!482 = !{ptr @aic3x_extra_dapm_widgets, !483, !"aic3x_extra_dapm_widgets", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 694, i32 41}
!484 = !{ptr @.str.237, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 583, i32 2}
!486 = !{ptr @.str.239, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 584, i32 2}
!488 = !{ptr @.str.241, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 585, i32 2}
!490 = !{ptr @aic3x_left_pga_mixer_controls, !491, !"aic3x_left_pga_mixer_controls", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 580, i32 38}
!492 = !{ptr @aic3x_left_line2_mux_controls, !493, !"aic3x_left_line2_mux_controls", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 626, i32 38}
!494 = !{ptr @aic3x_line2l_2_ldac_enum, !495, !"aic3x_line2l_2_ldac_enum", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 258, i32 8}
!496 = !{ptr @.str.245, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 592, i32 2}
!498 = !{ptr @aic3x_right_pga_mixer_controls, !499, !"aic3x_right_pga_mixer_controls", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 589, i32 38}
!500 = !{ptr @aic3x_right_line2_mux_controls, !501, !"aic3x_right_line2_mux_controls", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 630, i32 38}
!502 = !{ptr @aic3x_line2r_2_rdac_enum, !503, !"aic3x_line2r_2_rdac_enum", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 260, i32 8}
!504 = !{ptr @.str.253, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 510, i32 2}
!506 = !{ptr @.str.255, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 511, i32 2}
!508 = !{ptr @aic3x_left_line_mixer_controls, !509, !"aic3x_left_line_mixer_controls", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 504, i32 38}
!510 = !{ptr @aic3x_right_line_mixer_controls, !511, !"aic3x_right_line_mixer_controls", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 515, i32 38}
!512 = !{ptr @aic3x_left_hp_mixer_controls, !513, !"aic3x_left_hp_mixer_controls", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 536, i32 38}
!514 = !{ptr @aic3x_right_hp_mixer_controls, !515, !"aic3x_right_hp_mixer_controls", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 547, i32 38}
!516 = !{ptr @aic3x_left_hpcom_mixer_controls, !517, !"aic3x_left_hpcom_mixer_controls", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 558, i32 38}
!518 = !{ptr @aic3x_right_hpcom_mixer_controls, !519, !"aic3x_right_hpcom_mixer_controls", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 569, i32 38}
!520 = !{ptr @intercon_extra, !521, !"intercon_extra", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 913, i32 40}
!522 = !{ptr @.str.287, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 794, i32 2}
!524 = !{ptr @.str.288, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 796, i32 2}
!526 = !{ptr @.str.289, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 800, i32 2}
!528 = !{ptr @aic3x_dapm_mono_widgets, !529, !"aic3x_dapm_mono_widgets", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 792, i32 41}
!530 = !{ptr @aic3x_mono_mixer_controls, !531, !"aic3x_mono_mixer_controls", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 526, i32 38}
!532 = !{ptr @intercon_mono, !533, !"intercon_mono", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 978, i32 40}
!534 = !{ptr @.str.297, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 805, i32 2}
!536 = !{ptr @.str.298, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 806, i32 2}
!538 = !{ptr @.str.299, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 808, i32 2}
!540 = !{ptr @.str.300, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 809, i32 2}
!542 = !{ptr @aic3007_dapm_widgets, !543, !"aic3007_dapm_widgets", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 803, i32 41}
!544 = !{ptr @intercon_3007, !545, !"intercon_3007", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 990, i32 40}
!546 = !{ptr @.str.302, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 788, i32 2}
!548 = !{ptr @.str.303, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 789, i32 2}
!550 = !{ptr @aic3104_extra_dapm_widgets, !551, !"aic3104_extra_dapm_widgets", i1 false, i1 false}
!551 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 757, i32 41}
!552 = !{ptr @.str.307, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 601, i32 2}
!554 = !{ptr @.str.309, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 602, i32 2}
!556 = !{ptr @aic3104_left_pga_mixer_controls, !557, !"aic3104_left_pga_mixer_controls", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 598, i32 38}
!558 = !{ptr @aic3104_right_pga_mixer_controls, !559, !"aic3104_right_pga_mixer_controls", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 606, i32 38}
!560 = !{ptr @intercon_extra_3104, !561, !"intercon_extra_3104", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 968, i32 40}
!562 = !{ptr @.str.315, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1486, i32 10}
!564 = !{ptr @.str.316, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1494, i32 18}
!566 = !{ptr @.str.317, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1488, i32 18}
!568 = !{ptr @aic3x_dai, !569, !"aic3x_dai", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1485, i32 34}
!570 = !{ptr @aic3x_dai_ops, !571, !"aic3x_dai_ops", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1475, i32 37}
!572 = !{ptr @.str.318, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1320, i32 3}
!574 = !{ptr @.str.319, !573, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @aic3x_set_dai_tdm_slot._entry, !573, !"_entry", i1 false, i1 false}
!576 = !{ptr @aic3x_set_dai_tdm_slot._entry_ptr, !573, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.321, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1325, i32 3}
!579 = !{ptr @aic3x_set_dai_tdm_slot._entry.320, !578, !"_entry", i1 false, i1 false}
!580 = !{ptr @aic3x_set_dai_tdm_slot._entry_ptr.322, !578, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @.str.324, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1332, i32 3}
!583 = !{ptr @aic3x_set_dai_tdm_slot._entry.323, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @aic3x_set_dai_tdm_slot._entry_ptr.325, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.327, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1343, i32 3}
!587 = !{ptr @aic3x_set_dai_tdm_slot._entry.326, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @aic3x_set_dai_tdm_slot._entry_ptr.328, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.329, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 1173, i32 3}
!591 = !{ptr @.str.330, !590, !"<string literal>", i1 false, i1 false}
!592 = !{ptr @aic3x_hw_params._entry, !590, !"_entry", i1 false, i1 false}
!593 = !{ptr @aic3x_hw_params._entry_ptr, !590, !"_entry_ptr", i1 false, i1 false}
!594 = !{ptr @reset_list, !595, !"reset_list", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/tlv320aic3x.c", i32 60, i32 8}
!596 = !{i32 1, !"wchar_size", i32 2}
!597 = !{i32 1, !"min_enum_size", i32 4}
!598 = !{i32 8, !"branch-target-enforcement", i32 0}
!599 = !{i32 8, !"sign-return-address", i32 0}
!600 = !{i32 8, !"sign-return-address-all", i32 0}
!601 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!602 = !{i32 7, !"uwtable", i32 1}
!603 = !{i32 7, !"frame-pointer", i32 2}
!604 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!605 = !{!"auto-init"}
!606 = !{i32 0, i32 33}
!607 = !{!"branch_weights", i32 1, i32 2000}
