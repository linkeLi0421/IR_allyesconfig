; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adau1977.c_pt.bc'
source_filename = "../sound/soc/codecs/adau1977.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adau1977_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adau1977_probe\09\09\09\09"
module asm "\09.long\09__crc_adau1977_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adau1977_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adau1977_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adau1977_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adau1977_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_adau1977_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_adau1977_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adau1977_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22adau1977_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_adau1977_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.adau1977 = type { ptr, i8, i32, i32, ptr, i32, ptr, ptr, %struct.snd_pcm_hw_constraint_list, ptr, ptr, i32, i32, i8, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@adau1977_rates = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 8000, i32 16000, i32 32000, i32 64000, i32 128000, i32 11025, i32 22050, i32 44100, i32 88200, i32 172400, i32 12000, i32 24000, i32 48000, i32 96000, i32 192000], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@adau1977_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @adau1977_snd_controls, i32 12, ptr @adau1977_dapm_widgets, i32 10, ptr @adau1977_dapm_routes, i32 9, ptr @adau1977_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1977_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1977_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@adau1977_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.46, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adau1977_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.34, i64 1092, i32 -2147483648, i32 0, i32 0, i32 1, i32 4, i32 24 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_adau1977_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adau1977_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adau1977_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adau1977_probe to i32), ptr @__kstrtab_adau1977_probe, ptr @__kstrtabns_adau1977_probe }, section "___ksymtab_gpl+adau1977_probe", align 4
@adau1977_reg_defaults = internal constant { [21 x %struct.reg_default], [56 x i8] } { [21 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 65 }, %struct.reg_default { i32 2, i32 74 }, %struct.reg_default { i32 3, i32 125 }, %struct.reg_default { i32 4, i32 61 }, %struct.reg_default { i32 5, i32 2 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 16 }, %struct.reg_default { i32 8, i32 50 }, %struct.reg_default { i32 9, i32 240 }, %struct.reg_default { i32 10, i32 160 }, %struct.reg_default { i32 11, i32 160 }, %struct.reg_default { i32 12, i32 160 }, %struct.reg_default { i32 13, i32 160 }, %struct.reg_default { i32 14, i32 2 }, %struct.reg_default { i32 16, i32 15 }, %struct.reg_default { i32 21, i32 32 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 26, i32 0 }], [56 x i8] zeroinitializer }, align 32
@adau1977_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @adau1977_register_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1977_reg_defaults, i32 21, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_adau1977_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_adau1977_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_adau1977_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adau1977_regmap_config to i32), ptr @__kstrtab_adau1977_regmap_config, ptr @__kstrtabns_adau1977_regmap_config }, section "___ksymtab_gpl+adau1977_regmap_config", align 4
@__UNIQUE_ID_description296 = internal constant [68 x i8] c"snd_soc_adau1977.description=ASoC ADAU1977/ADAU1978/ADAU1979 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [61 x i8] c"snd_soc_adau1977.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [56 x i8] c"snd_soc_adau1977.file=sound/soc/codecs/snd-soc-adau1977\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [29 x i8] c"snd_soc_adau1977.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adi,micbias\00", [20 x i8] zeroinitializer }, align 32
@adau1977_setup_micbias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 890, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid value for 'adi,micbias'\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adau1977_setup_micbias\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/adau1977.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adau1977_setup_micbias._entry_ptr = internal global ptr @adau1977_setup_micbias._entry, section ".printk_index", align 4
@adau1977_snd_controls = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adau1977_adc_gain }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adau1977_adc_gain }, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adau1977_adc_gain }, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @adau1977_adc_gain }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }], [128 x i8] zeroinitializer }, align 32
@adau1977_dapm_routes = internal constant { [9 x %struct.snd_soc_dapm_route], [108 x i8] } { [9 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }], [108 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC1 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@adau1977_adc_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -3562, i32 6000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 10, i32 10, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC2 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 11, i32 11, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC3 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 12, i32 12, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC4 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 13, i32 13, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ADC1 Highpass-Filter Capture Switch\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ADC2 Highpass-Filter Capture Switch\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ADC3 Highpass-Filter Capture Switch\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ADC4 Highpass-Filter Capture Switch\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ADC1 DC Subtraction Capture Switch\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ADC2 DC Subtraction Capture Switch\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ADC3 DC Subtraction Capture Switch\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ADC4 DC Subtraction Capture Switch\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Vref\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC4\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN4\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VREF\00", [27 x i8] zeroinitializer }, align 32
@adau1977_dapm_widgets = internal constant { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [472 x i8] } { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.33, ptr @.str.34, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.35, ptr @.str.34, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.36, ptr @.str.34, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.37, ptr @.str.34, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [472 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@adau1977_micbias_dapm_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adau1977-hifi\00", [18 x i8] zeroinitializer }, align 32
@adau1977_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @adau1977_set_dai_fmt, ptr null, ptr @adau1977_set_tdm_slot, ptr null, ptr null, ptr @adau1977_set_tristate, ptr null, ptr null, ptr @adau1977_mute, ptr @adau1977_startup, ptr null, ptr @adau1977_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@switch.table.adau1977_set_tdm_slot = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 16, i32 8, i32 24, i32 8, i32 8, i32 8, i32 32], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"adau1977_rates\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 766, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 922, i32 47 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 926, i32 56 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 933, i32 54 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"adau1977_component_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 867, i32 46 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"adau1977_dai\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 752, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"adau1977_reg_defaults\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 133, i32 33 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"adau1977_regmap_config\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 991, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 886, i32 46 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 890, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"adau1977_snd_controls\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 208, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [21 x i8] c"adau1977_dapm_routes\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 181, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 209, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"adau1977_adc_gain\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 157, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 210, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 211, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 212, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 214, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 215, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 216, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 217, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 219, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 220, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 221, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 222, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 165, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 168, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 169, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 170, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 171, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 173, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 174, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 175, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 176, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 178, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"adau1977_dapm_widgets\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 164, i32 41 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 160, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [30 x i8] c"adau1977_micbias_dapm_widgets\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 159, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 753, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"adau1977_dai_ops\00", align 1
@___asan_gen_.202 = private constant [31 x i8] c"../sound/soc/codecs/adau1977.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 743, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant [35 x i8] c"switch.table.adau1977_set_tdm_slot\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__ksymtab_adau1977_probe, ptr @__ksymtab_adau1977_regmap_config, ptr @adau1977_setup_micbias._entry, ptr @adau1977_setup_micbias._entry_ptr, ptr @adau1977_rates, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adau1977_component_driver, ptr @adau1977_dai, ptr @adau1977_reg_defaults, ptr @adau1977_regmap_config, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @adau1977_snd_controls, ptr @adau1977_dapm_routes, ptr @.str.9, ptr @adau1977_adc_gain, ptr @.compoundliteral, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @adau1977_dapm_widgets, ptr @.str.44, ptr @adau1977_micbias_dapm_widgets, ptr @.str.46, ptr @adau1977_dai_ops, ptr @switch.table.adau1977_set_tdm_slot], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_rates to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_reg_defaults to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_setup_micbias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_snd_controls to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_dapm_routes to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_adc_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_dapm_widgets to i32), i32 1800, i32 2272, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_micbias_dapm_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1977_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adau1977_set_tdm_slot to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adau1977_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %type, ptr noundef %switch_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev5 = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 9
  %1 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev5, align 4
  %type6 = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %type6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %type6, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regmap, ptr %call.i, align 4
  %switch_mode8 = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %switch_mode8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %switch_mode, ptr %switch_mode8, align 4
  %max_clock_provider_fs = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 11
  %5 = ptrtoint ptr %max_clock_provider_fs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 192000, ptr %max_clock_provider_fs, align 4
  %constraints = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %constraints to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @adau1977_rates, ptr %constraints, align 4
  %count = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 15, ptr %count, align 4
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str) #6
  %avdd_reg = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %avdd_reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %avdd_reg, align 4
  %cmp.i109 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end4
  %call17 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %dvdd_reg = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %dvdd_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call17, ptr %dvdd_reg, align 4
  %cmp.i110 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then20, label %if.end16.if.end29_crit_edge

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then20:                                        ; preds = %if.end16
  %11 = ptrtoint ptr %call17 to i32
  %cmp23.not = icmp eq ptr %call17, inttoptr (i32 -19 to ptr)
  br i1 %cmp23.not, label %if.end27, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dvdd_reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dvdd_reg, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end16.if.end29_crit_edge
  %call30 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 3) #6
  %reset_gpio = getelementptr inbounds %struct.adau1977, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call30, ptr %reset_gpio, align 4
  %cmp.i111 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %call30, null
  br i1 %tobool.not, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  %call40 = tail call fastcc i32 @adau1977_power_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp44 = icmp eq i32 %type, 0
  br i1 %cmp44, label %if.then45, label %if.end43.if.end50_crit_edge

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then45:                                        ; preds = %if.end43
  %call46 = tail call fastcc i32 @adau1977_setup_micbias(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.if.end50_crit_edge, label %if.then45.err_poweroff_crit_edge

if.then45.err_poweroff_crit_edge:                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_poweroff

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50:                                         ; preds = %if.then45.if.end50_crit_edge, %if.end43.if.end50_crit_edge
  %17 = ptrtoint ptr %dvdd_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dvdd_reg, align 4
  %tobool52.not = icmp eq ptr %18, null
  %. = select i1 %tobool52.not, i32 -33, i32 -1
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 4, i32 noundef %., i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool57.not = icmp eq i32 %call.i112, 0
  br i1 %tobool57.not, label %if.end59, label %if.end50.err_poweroff_crit_edge

if.end50.err_poweroff_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_poweroff

if.end59:                                         ; preds = %if.end50
  %call60 = tail call fastcc i32 @adau1977_power_disable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %call64 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @adau1977_component_driver, ptr noundef nonnull @adau1977_dai, i32 noundef 1) #6
  br label %cleanup

err_poweroff:                                     ; preds = %if.end50.err_poweroff_crit_edge, %if.then45.err_poweroff_crit_edge
  %ret.0 = phi i32 [ %call46, %if.then45.err_poweroff_crit_edge ], [ %call.i112, %if.end50.err_poweroff_crit_edge ]
  %call65 = tail call fastcc i32 @adau1977_power_disable(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_poweroff, %if.end63, %if.end59.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then33, %if.then20.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %9, %if.then13 ], [ %14, %if.then33 ], [ %ret.0, %err_poweroff ], [ %call64, %if.end63 ], [ -12, %if.end.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ %call60, %if.end59.cleanup_crit_edge ], [ %11, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adau1977_power_enable(ptr nocapture noundef %adau1977) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !107
  %enabled = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 13
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enabled, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %avdd_reg = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 6
  %3 = ptrtoint ptr %avdd_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %avdd_reg, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %dvdd_reg = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 7
  %5 = ptrtoint ptr %dvdd_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dvdd_reg, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %if.end3.if.end11_crit_edge, label %if.then5

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %call7 = tail call i32 @regulator_enable(ptr noundef nonnull %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then5.if.end11_crit_edge, label %if.then5.err_disable_avdd_crit_edge

if.then5.err_disable_avdd_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_avdd

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %reset_gpio = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 4
  %7 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %8, i32 noundef 1) #6
  %9 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adau1977, align 4
  tail call void @regcache_cache_only(ptr noundef %10, i1 noundef zeroext false) #6
  %switch_mode = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 10
  %11 = ptrtoint ptr %switch_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %switch_mode, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void %12(ptr noundef %14) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %15 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adau1977, align 4
  tail call void @regcache_cache_bypass(ptr noundef %16, i1 noundef zeroext true) #6
  %17 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adau1977, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 0, i32 noundef 128) #6
  %19 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adau1977, align 4
  tail call void @regcache_cache_bypass(ptr noundef %20, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_disable_dvdd_crit_edge

if.end15.err_disable_dvdd_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_dvdd

if.end19:                                         ; preds = %if.end15
  %21 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adau1977, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool22.not = icmp eq i32 %call.i84, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.err_disable_dvdd_crit_edge

if.end19.err_disable_dvdd_crit_edge:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_dvdd

if.end24:                                         ; preds = %if.end19
  %23 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adau1977, align 4
  %call26 = tail call i32 @regcache_sync(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.err_disable_dvdd_crit_edge

if.end24.err_disable_dvdd_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_dvdd

if.end29:                                         ; preds = %if.end24
  %25 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adau1977, align 4
  %call31 = call i32 @regmap_read(ptr noundef %26, i32 noundef 1, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.err_disable_dvdd_crit_edge

if.end29.err_disable_dvdd_crit_edge:              ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_dvdd

if.end34:                                         ; preds = %if.end29
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %28)
  %cmp = icmp eq i32 %28, 65
  br i1 %cmp, label %if.then35, label %if.end34.if.end43_crit_edge

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then35:                                        ; preds = %if.end34
  %29 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adau1977, align 4
  call void @regcache_cache_bypass(ptr noundef %30, i1 noundef zeroext true) #6
  %31 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adau1977, align 4
  %call38 = call i32 @regmap_write(ptr noundef %32, i32 noundef 1, i32 noundef 65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then35.err_disable_dvdd_crit_edge

if.then35.err_disable_dvdd_crit_edge:             ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_dvdd

if.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adau1977, align 4
  call void @regcache_cache_bypass(ptr noundef %34, i1 noundef zeroext false) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end34.if.end43_crit_edge
  %35 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

err_disable_dvdd:                                 ; preds = %if.then35.err_disable_dvdd_crit_edge, %if.end29.err_disable_dvdd_crit_edge, %if.end24.err_disable_dvdd_crit_edge, %if.end19.err_disable_dvdd_crit_edge, %if.end15.err_disable_dvdd_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end15.err_disable_dvdd_crit_edge ], [ %call.i84, %if.end19.err_disable_dvdd_crit_edge ], [ %call26, %if.end24.err_disable_dvdd_crit_edge ], [ %call31, %if.end29.err_disable_dvdd_crit_edge ], [ %call38, %if.then35.err_disable_dvdd_crit_edge ]
  %36 = ptrtoint ptr %dvdd_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dvdd_reg, align 4
  %tobool46.not = icmp eq ptr %37, null
  br i1 %tobool46.not, label %err_disable_dvdd.err_disable_avdd_crit_edge, label %if.then47

err_disable_dvdd.err_disable_avdd_crit_edge:      ; preds = %err_disable_dvdd
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_disable_avdd

if.then47:                                        ; preds = %err_disable_dvdd
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = call i32 @regulator_disable(ptr noundef nonnull %37) #6
  br label %err_disable_avdd

err_disable_avdd:                                 ; preds = %if.then47, %err_disable_dvdd.err_disable_avdd_crit_edge, %if.then5.err_disable_avdd_crit_edge
  %ret.2 = phi i32 [ %call7, %if.then5.err_disable_avdd_crit_edge ], [ %ret.1, %if.then47 ], [ %ret.1, %err_disable_dvdd.err_disable_avdd_crit_edge ]
  %38 = ptrtoint ptr %avdd_reg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %avdd_reg, align 4
  %call52 = call i32 @regulator_disable(ptr noundef %39) #6
  br label %cleanup

cleanup:                                          ; preds = %err_disable_avdd, %if.end43, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_disable_avdd ], [ 0, %if.end43 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adau1977_setup_micbias(ptr nocapture noundef readonly %adau1977) unnamed_addr #0 align 64 {
entry:
  %micbias = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %micbias) #6
  %0 = ptrtoint ptr %micbias to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %micbias, align 4, !annotation !107
  %dev = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 9
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %micbias, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %micbias to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %micbias, align 4
  br label %if.end3

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %micbias to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %micbias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp = icmp ugt i32 %.pr, 8
  br i1 %cmp, label %do.end, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.thread
  %7 = phi i32 [ 7, %if.end.thread ], [ %.pr, %if.end.if.end3_crit_edge ]
  %8 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adau1977, align 4
  %shl = shl nuw nsw i32 %7, 4
  %call.i7 = call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 3, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i7, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %micbias) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adau1977_power_disable(ptr nocapture noundef %adau1977) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 13
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adau1977, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adau1977, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #6
  %reset_gpio = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 4
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 0) #6
  %8 = ptrtoint ptr %adau1977 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adau1977, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext true) #6
  %avdd_reg = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 6
  %10 = ptrtoint ptr %avdd_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %avdd_reg, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %11) #6
  %dvdd_reg = getelementptr inbounds %struct.adau1977, ptr %adau1977, i32 0, i32 7
  %12 = ptrtoint ptr %dvdd_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dvdd_reg, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.end3.if.end11_crit_edge, label %if.then8

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end3.if.end11_crit_edge
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adau1977_register_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  %switch.cast = trunc i32 %switch.tableidx to i9
  %switch.downshift = lshr i9 -241, %switch.cast
  %1 = and i9 %switch.downshift, 1
  %2 = sext i9 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i9 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_component_probe(ptr noundef %component) #0 align 64 {
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
  %type = getelementptr inbounds %struct.adau1977, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cond = icmp eq i32 %5, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call2 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i, ptr noundef nonnull @adau1977_micbias_dapm_widgets, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call2, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %4 = or i32 %dir, %clk_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %6 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %source, label %if.end3.cleanup_crit_edge [
    i32 0, label %sw.epilog
    i32 1, label %if.end3.if.else_crit_edge
  ]

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp5.not.not = icmp eq i32 %freq, 0
  br i1 %cmp5.not.not, label %sw.epilog.if.else_crit_edge, label %if.then7

sw.epilog.if.else_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then7:                                         ; preds = %sw.epilog
  %7 = add i32 %freq, -36864001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32864001, i32 %7)
  %8 = icmp ult i32 %7, -32864001
  br i1 %8, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %rem.i = urem i32 %freq, 4096000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.not.i, label %adau1977_check_sysclk.exit, label %if.end11.adau1977_check_sysclk.exit.thread_crit_edge

if.end11.adau1977_check_sysclk.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %adau1977_check_sysclk.exit.thread

adau1977_check_sysclk.exit:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %9 = add nsw i32 %freq, -4096000
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576000, i32 %9)
  %10 = icmp ult i32 %9, 24576000
  %11 = add nsw i32 %freq, -24576000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096000, i32 %11)
  %12 = icmp ult i32 %11, -4096000
  %not.or.cond12.i = and i1 %12, %10
  %spec.select = select i1 %not.or.cond12.i, i32 31, i32 0
  br label %adau1977_check_sysclk.exit.thread

adau1977_check_sysclk.exit.thread:                ; preds = %adau1977_check_sysclk.exit, %if.end11.adau1977_check_sysclk.exit.thread_crit_edge
  %13 = phi i32 [ 0, %if.end11.adau1977_check_sysclk.exit.thread_crit_edge ], [ %spec.select, %adau1977_check_sysclk.exit ]
  %rem.i57 = urem i32 %freq, 5644800
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i57)
  %cmp.not.i58 = icmp eq i32 %rem.i57, 0
  br i1 %cmp.not.i58, label %adau1977_check_sysclk.exit68, label %adau1977_check_sysclk.exit.thread.adau1977_check_sysclk.exit68.thread_crit_edge

adau1977_check_sysclk.exit.thread.adau1977_check_sysclk.exit68.thread_crit_edge: ; preds = %adau1977_check_sysclk.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %adau1977_check_sysclk.exit68.thread

adau1977_check_sysclk.exit68:                     ; preds = %adau1977_check_sysclk.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5644799, i32 %freq)
  %cmp2.i60 = icmp ugt i32 %freq, 5644799
  %14 = add nsw i32 %freq, -33868800
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5644800, i32 %14)
  %15 = icmp ult i32 %14, -5644800
  %not.or.cond12.i65 = and i1 %cmp2.i60, %15
  %or17 = or i32 %13, 992
  %spec.select93 = select i1 %not.or.cond12.i65, i32 %or17, i32 %13
  br label %adau1977_check_sysclk.exit68.thread

adau1977_check_sysclk.exit68.thread:              ; preds = %adau1977_check_sysclk.exit68, %adau1977_check_sysclk.exit.thread.adau1977_check_sysclk.exit68.thread_crit_edge
  %16 = phi i32 [ %13, %adau1977_check_sysclk.exit.thread.adau1977_check_sysclk.exit68.thread_crit_edge ], [ %spec.select93, %adau1977_check_sysclk.exit68 ]
  %rem.i69 = urem i32 %freq, 6144000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i69)
  %cmp.not.i70 = icmp eq i32 %rem.i69, 0
  br i1 %cmp.not.i70, label %adau1977_check_sysclk.exit80, label %adau1977_check_sysclk.exit68.thread.adau1977_check_sysclk.exit80.thread_crit_edge

adau1977_check_sysclk.exit68.thread.adau1977_check_sysclk.exit80.thread_crit_edge: ; preds = %adau1977_check_sysclk.exit68.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %adau1977_check_sysclk.exit80.thread

adau1977_check_sysclk.exit80:                     ; preds = %adau1977_check_sysclk.exit68.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 6143999, i32 %freq)
  %cmp2.i72 = icmp ugt i32 %freq, 6143999
  %17 = add nsw i32 %freq, -36864000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6144000, i32 %17)
  %18 = icmp ult i32 %17, -6144000
  %not.or.cond12.i77 = and i1 %cmp2.i72, %18
  %or21 = or i32 %16, 31744
  br i1 %not.or.cond12.i77, label %adau1977_check_sysclk.exit80.if.end29_crit_edge, label %adau1977_check_sysclk.exit80.adau1977_check_sysclk.exit80.thread_crit_edge

adau1977_check_sysclk.exit80.adau1977_check_sysclk.exit80.thread_crit_edge: ; preds = %adau1977_check_sysclk.exit80
  call void @__sanitizer_cov_trace_pc() #8
  br label %adau1977_check_sysclk.exit80.thread

adau1977_check_sysclk.exit80.if.end29_crit_edge:  ; preds = %adau1977_check_sysclk.exit80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

adau1977_check_sysclk.exit80.thread:              ; preds = %adau1977_check_sysclk.exit80.adau1977_check_sysclk.exit80.thread_crit_edge, %adau1977_check_sysclk.exit68.thread.adau1977_check_sysclk.exit80.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp23 = icmp eq i32 %16, 0
  br i1 %cmp23, label %adau1977_check_sysclk.exit80.thread.cleanup_crit_edge, label %adau1977_check_sysclk.exit80.thread.if.end29_crit_edge

adau1977_check_sysclk.exit80.thread.if.end29_crit_edge: ; preds = %adau1977_check_sysclk.exit80.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

adau1977_check_sysclk.exit80.thread.cleanup_crit_edge: ; preds = %adau1977_check_sysclk.exit80.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %sw.epilog.if.else_crit_edge, %if.end3.if.else_crit_edge
  %clk_src.086 = phi i32 [ 0, %sw.epilog.if.else_crit_edge ], [ 16, %if.end3.if.else_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %source)
  %cmp26 = icmp eq i32 %source, 1
  %spec.select55 = select i1 %cmp26, i32 29596, i32 0
  br label %if.end29

if.end29:                                         ; preds = %if.else, %adau1977_check_sysclk.exit80.thread.if.end29_crit_edge, %adau1977_check_sysclk.exit80.if.end29_crit_edge
  %clk_src.085 = phi i32 [ 0, %adau1977_check_sysclk.exit80.thread.if.end29_crit_edge ], [ %clk_src.086, %if.else ], [ 0, %adau1977_check_sysclk.exit80.if.end29_crit_edge ]
  %mask.3 = phi i32 [ %16, %adau1977_check_sysclk.exit80.thread.if.end29_crit_edge ], [ %spec.select55, %if.else ], [ %or21, %adau1977_check_sysclk.exit80.if.end29_crit_edge ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 1, i32 noundef 16, i32 noundef %clk_src.085, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %mask33 = getelementptr inbounds %struct.adau1977, ptr %3, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %mask33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mask.3, ptr %mask33, align 4
  %sysclk_src = getelementptr inbounds %struct.adau1977, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %source, ptr %sysclk_src, align 4
  %sysclk = getelementptr inbounds %struct.adau1977, ptr %3, i32 0, i32 2
  %23 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end29.cleanup_crit_edge, %adau1977_check_sysclk.exit80.thread.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.then7.cleanup_crit_edge ], [ -22, %adau1977_check_sysclk.exit80.thread.cleanup_crit_edge ], [ %call.i, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @adau1977_power_enable(ptr noundef %3)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call fastcc i32 @adau1977_power_disable(ptr noundef %3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call2, %if.then ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call4, %sw.bb3 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 16384, label %entry.sw.epilog_crit_edge
    i16 4096, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %ctrl1.0 = phi i32 [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %clock_provider2 = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %clock_provider2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %clock_provider2, align 1
  %and3 = lshr i32 %fmt, 8
  %9 = and i32 %and3, 15
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %9, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog11_crit_edge
    i32 3, label %sw.bb5
    i32 2, label %sw.bb7
    i32 4, label %sw.bb8
  ]

sw.epilog.sw.epilog11_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %sw.bb8, %sw.bb7, %sw.bb5, %sw.epilog.sw.epilog11_crit_edge
  %block_power.0 = phi i32 [ 64, %sw.bb8 ], [ 0, %sw.bb7 ], [ 64, %sw.bb5 ], [ %9, %sw.epilog.sw.epilog11_crit_edge ]
  %invert_lrclk.0.off0 = phi i1 [ true, %sw.bb8 ], [ true, %sw.bb7 ], [ false, %sw.bb5 ], [ false, %sw.epilog.sw.epilog11_crit_edge ]
  %right_j = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %right_j to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %right_j, align 4
  %and12 = and i32 %fmt, 15
  %12 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %and12, label %sw.epilog11.cleanup_crit_edge [
    i32 1, label %sw.epilog30
    i32 3, label %sw.bb15
    i32 2, label %sw.bb17
    i32 4, label %sw.bb23
    i32 5, label %sw.bb26
  ]

sw.epilog11.cleanup_crit_edge:                    ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb15:                                          ; preds = %sw.epilog11
  br i1 %invert_lrclk.0.off0, label %sw.bb15.sw.epilog30.thread_crit_edge, label %sw.bb15._crit_edge

sw.bb15._crit_edge:                               ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %14

sw.bb15.sw.epilog30.thread_crit_edge:             ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog30.thread

sw.bb17:                                          ; preds = %sw.epilog11
  %13 = ptrtoint ptr %right_j to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %right_j, align 4
  br i1 %invert_lrclk.0.off0, label %sw.bb17.sw.epilog30.thread_crit_edge, label %sw.bb17._crit_edge

sw.bb17._crit_edge:                               ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %14

sw.bb17.sw.epilog30.thread_crit_edge:             ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog30.thread

sw.bb23:                                          ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  %or24 = or i32 %ctrl1.0, 8
  br label %sw.epilog30.thread

sw.bb26:                                          ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #8
  %or27 = or i32 %ctrl1.0, 8
  br label %sw.epilog30.thread

sw.epilog30:                                      ; preds = %sw.epilog11
  br i1 %invert_lrclk.0.off0, label %sw.epilog30._crit_edge, label %sw.epilog30.sw.epilog30.thread_crit_edge

sw.epilog30.sw.epilog30.thread_crit_edge:         ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog30.thread

sw.epilog30._crit_edge:                           ; preds = %sw.epilog30
  call void @__sanitizer_cov_trace_pc() #8
  br label %14

14:                                               ; preds = %sw.epilog30._crit_edge, %sw.bb17._crit_edge, %sw.bb15._crit_edge
  %ctrl0.084 = phi i32 [ 128, %sw.bb17._crit_edge ], [ 0, %sw.epilog30._crit_edge ], [ 64, %sw.bb15._crit_edge ]
  %or3286 = or i32 %block_power.0, 128
  br label %sw.epilog30.thread

sw.epilog30.thread:                               ; preds = %14, %sw.epilog30.sw.epilog30.thread_crit_edge, %sw.bb26, %sw.bb23, %sw.bb17.sw.epilog30.thread_crit_edge, %sw.bb15.sw.epilog30.thread_crit_edge
  %ctrl1.182 = phi i32 [ %ctrl1.0, %14 ], [ %ctrl1.0, %sw.epilog30.sw.epilog30.thread_crit_edge ], [ %ctrl1.0, %sw.bb17.sw.epilog30.thread_crit_edge ], [ %ctrl1.0, %sw.bb15.sw.epilog30.thread_crit_edge ], [ %or24, %sw.bb23 ], [ %or27, %sw.bb26 ]
  %ctrl0.081 = phi i32 [ %ctrl0.084, %14 ], [ 0, %sw.epilog30.sw.epilog30.thread_crit_edge ], [ 128, %sw.bb17.sw.epilog30.thread_crit_edge ], [ 64, %sw.bb15.sw.epilog30.thread_crit_edge ], [ 0, %sw.bb23 ], [ 64, %sw.bb26 ]
  %15 = phi i32 [ %or3286, %14 ], [ %block_power.0, %sw.epilog30.sw.epilog30.thread_crit_edge ], [ %block_power.0, %sw.bb17.sw.epilog30.thread_crit_edge ], [ %block_power.0, %sw.bb15.sw.epilog30.thread_crit_edge ], [ %block_power.0, %sw.bb23 ], [ %block_power.0, %sw.bb26 ]
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 4, i32 noundef 192, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool34.not = icmp eq i32 %call.i, 0
  br i1 %tobool34.not, label %if.end36, label %sw.epilog30.thread.cleanup_crit_edge

sw.epilog30.thread.cleanup_crit_edge:             ; preds = %sw.epilog30.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %sw.epilog30.thread
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 5, i32 noundef 192, i32 noundef %ctrl0.081, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool39.not = icmp eq i32 %call.i75, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 6, i32 noundef 9, i32 noundef %ctrl1.182, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end36.cleanup_crit_edge, %sw.epilog30.thread.cleanup_crit_edge, %sw.epilog11.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i76, %if.end41 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog11.cleanup_crit_edge ], [ %call.i, %sw.epilog30.thread.cleanup_crit_edge ], [ %call.i75, %if.end36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp = icmp eq i32 %slots, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slot_width = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %slot_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %slot_width, align 4
  %max_clock_provider_fs = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 11
  %7 = ptrtoint ptr %max_clock_provider_fs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 192000, ptr %max_clock_provider_fs, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 5, i32 noundef 56, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %cmp2 = icmp ne i32 %rx_mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %cmp3.not = icmp eq i32 %tx_mask, 0
  %or.cond = and i1 %cmp3.not, %cmp2
  br i1 %or.cond, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %10 = tail call i32 @llvm.cttz.i32(i32 %rx_mask, i1 true) #6, !range !109
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %slots)
  %cmp11.not = icmp ult i32 %10, %slots
  br i1 %cmp11.not, label %if.end13, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end13
  %11 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true) #6, !range !109
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %slots)
  %cmp11.not.1 = icmp ult i32 %11, %slots
  br i1 %cmp11.not.1, label %if.end13.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.1:                                       ; preds = %for.cond
  %shl9.1 = shl nuw i32 1, %11
  %neg.1 = xor i32 %shl9.1, -1
  %and.1 = and i32 %and, %neg.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp14.1 = icmp eq i32 %and.1, 0
  br i1 %cmp14.1, label %if.end13.1.if.end19_crit_edge, label %for.cond.1

if.end13.1.if.end19_crit_edge:                    ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.cond.1:                                       ; preds = %if.end13.1
  %12 = tail call i32 @llvm.cttz.i32(i32 %and.1, i1 true) #6, !range !109
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %slots)
  %cmp11.not.2 = icmp ult i32 %12, %slots
  br i1 %cmp11.not.2, label %if.end13.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.2:                                       ; preds = %for.cond.1
  %shl9.2 = shl nuw i32 1, %12
  %neg.2 = xor i32 %shl9.2, -1
  %and.2 = and i32 %and.1, %neg.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp14.2 = icmp eq i32 %and.2, 0
  br i1 %cmp14.2, label %if.end13.2.if.end19_crit_edge, label %for.cond.2

if.end13.2.if.end19_crit_edge:                    ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

for.cond.2:                                       ; preds = %if.end13.2
  %13 = tail call i32 @llvm.cttz.i32(i32 %and.2, i1 true) #6, !range !109
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %slots)
  %cmp11.not.3 = icmp ult i32 %13, %slots
  br i1 %cmp11.not.3, label %if.end13.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.3:                                       ; preds = %for.cond.2
  %shl9.3 = shl nuw i32 1, %13
  %neg.3 = xor i32 %shl9.3, -1
  %and.3 = and i32 %and.2, %neg.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp14.3 = icmp eq i32 %and.3, 0
  br i1 %cmp14.3, label %if.end13.3.if.end19_crit_edge, label %if.end13.3.cleanup_crit_edge

if.end13.3.cleanup_crit_edge:                     ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13.3.if.end19_crit_edge:                    ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end13:                                         ; preds = %for.body.preheader
  %shl9 = shl nuw i32 1, %10
  %neg = xor i32 %shl9, -1
  %and = and i32 %neg, %rx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp14 = icmp eq i32 %and, 0
  br i1 %cmp14, label %if.end13.if.end19_crit_edge, label %for.cond

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.end13.if.end19_crit_edge, %if.end13.3.if.end19_crit_edge, %if.end13.2.if.end19_crit_edge, %if.end13.1.if.end19_crit_edge
  %slot.sroa.11.0 = phi i32 [ -1, %if.end13.if.end19_crit_edge ], [ -1, %if.end13.1.if.end19_crit_edge ], [ -1, %if.end13.2.if.end19_crit_edge ], [ %13, %if.end13.3.if.end19_crit_edge ]
  %slot.sroa.8.0 = phi i32 [ -1, %if.end13.if.end19_crit_edge ], [ -1, %if.end13.1.if.end19_crit_edge ], [ %12, %if.end13.2.if.end19_crit_edge ], [ %12, %if.end13.3.if.end19_crit_edge ]
  %slot.sroa.5.0 = phi i32 [ -1, %if.end13.if.end19_crit_edge ], [ %11, %if.end13.1.if.end19_crit_edge ], [ %11, %if.end13.2.if.end19_crit_edge ], [ %11, %if.end13.3.if.end19_crit_edge ]
  %or.lcssa = phi i32 [ 16, %if.end13.if.end19_crit_edge ], [ 48, %if.end13.1.if.end19_crit_edge ], [ 112, %if.end13.2.if.end19_crit_edge ], [ 240, %if.end13.3.if.end19_crit_edge ]
  %14 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %width, label %if.end19.cleanup_crit_edge [
    i32 16, label %if.end19.sw.epilog_crit_edge
    i32 24, label %sw.bb20
    i32 32, label %sw.bb23
  ]

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb20:                                          ; preds = %if.end19
  %clock_provider = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 14
  %15 = ptrtoint ptr %clock_provider to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %clock_provider, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %sw.bb20.sw.epilog_crit_edge, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb20.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge
  %ctrl1.0 = phi i32 [ 0, %sw.bb23 ], [ 64, %if.end19.sw.epilog_crit_edge ], [ 32, %sw.bb20.sw.epilog_crit_edge ]
  %17 = add i32 %slots, -2
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %switch.hole_check, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %18 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %20 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %switch.lobit.not = icmp eq i8 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.adau1977_set_tdm_slot, i32 0, i32 %18
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 9, i32 noundef 240, i32 noundef %or.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool32.not = icmp eq i32 %call.i111, 0
  br i1 %tobool32.not, label %if.end34, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %switch.lookup
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %shl37 = shl nsw i32 %slot.sroa.5.0, 4
  %or40 = or i32 %shl37, %10
  %call41 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 7, i32 noundef %or40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  %shl47 = shl nsw i32 %slot.sroa.11.0, 4
  %or50 = or i32 %shl47, %slot.sroa.8.0
  %call51 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8, i32 noundef %or50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end44
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 5, i32 noundef 56, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool57.not = icmp eq i32 %call.i112, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 4
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 6, i32 noundef 96, i32 noundef %ctrl1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool62.not = icmp eq i32 %call.i113, 0
  br i1 %tobool62.not, label %if.end64, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %slot_width65 = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 12
  %32 = ptrtoint ptr %slot_width65 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %width, ptr %slot_width65, align 4
  %div116 = udiv i32 24576000, %width
  %div66 = sdiv i32 %div116, %slots
  %33 = tail call i32 @llvm.smin.i32(i32 %div66, i32 192000)
  %max_clock_provider_fs68 = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 11
  %34 = ptrtoint ptr %max_clock_provider_fs68 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %max_clock_provider_fs68, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.end59.cleanup_crit_edge, %if.end54.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 0, %if.end64 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call.i111, %switch.lookup.cleanup_crit_edge ], [ %call41, %if.end34.cleanup_crit_edge ], [ %call51, %if.end44.cleanup_crit_edge ], [ %call.i112, %if.end54.cleanup_crit_edge ], [ %call.i113, %if.end59.cleanup_crit_edge ], [ -22, %if.end13.3.cleanup_crit_edge ], [ -22, %for.cond.2.cleanup_crit_edge ], [ -22, %for.cond.1.cleanup_crit_edge ], [ -22, %for.cond.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %. = select i1 %tobool.not, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9, i32 noundef 8, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 14, i32 noundef 16, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %slot_width = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp = icmp eq i32 %7, 16
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %right_j = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %right_j to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %right_j, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp2 = icmp eq i32 %7, 24
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp2
  %not.or.cond = xor i1 %or.cond, true
  %spec.select24 = select i1 %or.cond, i64 204, i64 0
  br label %if.end4

if.end4:                                          ; preds = %if.else, %entry.if.end4_crit_edge
  %cmp11.not = phi i1 [ false, %entry.if.end4_crit_edge ], [ %not.or.cond, %if.else ]
  %formats.0 = phi i64 [ 12, %entry.if.end4_crit_edge ], [ %spec.select24, %if.else ]
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %constraints = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 8
  %call5 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %11, i32 noundef 0, i32 noundef 11, ptr noundef %constraints) #6
  %clock_provider = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %clock_provider to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %clock_provider, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %max_clock_provider_fs = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 11
  %16 = ptrtoint ptr %max_clock_provider_fs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_clock_provider_fs, align 4
  %call9 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %15, i32 noundef 11, i32 noundef 8000, i32 noundef %17) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  br i1 %cmp11.not, label %if.end10.if.end15_crit_edge, label %if.then12

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime, align 4
  %call14 = tail call i32 @snd_pcm_hw_constraint_mask64(ptr noundef %19, i32 noundef 1, i64 noundef %formats.0) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1977_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = add i32 %7, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001, i32 %8)
  %9 = icmp ult i32 %8, 4001
  br i1 %9, label %entry.if.end_crit_edge, label %if.else.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.i:                                        ; preds = %entry
  %10 = add i32 %7, -16000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8001, i32 %10)
  %11 = icmp ult i32 %10, 8001
  br i1 %11, label %if.else.i.if.end_crit_edge, label %if.else6.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else6.i:                                       ; preds = %if.else.i
  %12 = add i32 %7, -32000
  call void @__sanitizer_cov_trace_const_cmp4(i32 16001, i32 %12)
  %13 = icmp ult i32 %12, 16001
  br i1 %13, label %if.else6.i.if.end_crit_edge, label %if.else11.i

if.else6.i.if.end_crit_edge:                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else11.i:                                      ; preds = %if.else6.i
  %14 = add i32 %7, -64000
  call void @__sanitizer_cov_trace_const_cmp4(i32 32001, i32 %14)
  %15 = icmp ult i32 %14, 32001
  br i1 %15, label %if.else11.i.if.end_crit_edge, label %if.else16.i

if.else11.i.if.end_crit_edge:                     ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else16.i:                                      ; preds = %if.else11.i
  %16 = add i32 %7, -128000
  call void @__sanitizer_cov_trace_const_cmp4(i32 64001, i32 %16)
  %17 = icmp ult i32 %16, 64001
  br i1 %17, label %if.else16.i.if.end_crit_edge, label %if.else16.i.cleanup_crit_edge

if.else16.i.cleanup_crit_edge:                    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else16.i.if.end_crit_edge:                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %if.else16.i.if.end_crit_edge, %if.else11.i.if.end_crit_edge, %if.else6.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi i32 [ 3, %if.else11.i.if.end_crit_edge ], [ 2, %if.else6.i.if.end_crit_edge ], [ 1, %if.else.i.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ], [ 4, %if.else16.i.if.end_crit_edge ]
  %sysclk_src = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %sysclk_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysclk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4 = icmp eq i32 %19, 0
  br i1 %cmp4, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %shr.i = lshr i32 512, %retval.0.i.ph
  %mul.i = mul nuw nsw i32 %shr.i, %7
  %sysclk.i = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sysclk.i, align 4
  %.frozen = freeze i32 %21
  %mul.i.frozen = freeze i32 %mul.i
  %div.i = udiv i32 %.frozen, %mul.i.frozen
  %22 = mul i32 %div.i, %mul.i.frozen
  %rem.i.decomposed = sub i32 %.frozen, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %21)
  %cmp2.i = icmp ugt i32 %mul.i, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div.i)
  %cmp3.i = icmp ugt i32 %div.i, 6
  %or.cond.i = or i1 %cmp2.i, %cmp3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div.i)
  %cmp5.i = icmp eq i32 %div.i, 5
  %or.cond19.i = or i1 %cmp5.i, %or.cond.i
  br i1 %or.cond19.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %sub.i = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i)
  %cmp8.i = icmp eq i32 %sub.i, 5
  br i1 %cmp8.i, label %if.end7.i.if.end10_crit_edge, label %adau1977_lookup_mcs.exit

if.end7.i.if.end10_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

adau1977_lookup_mcs.exit:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %21)
  %cmp7 = icmp ugt i32 %mul.i, %21
  br i1 %cmp7, label %adau1977_lookup_mcs.exit.cleanup_crit_edge, label %adau1977_lookup_mcs.exit.if.end10_crit_edge

adau1977_lookup_mcs.exit.if.end10_crit_edge:      ; preds = %adau1977_lookup_mcs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

adau1977_lookup_mcs.exit.cleanup_crit_edge:       ; preds = %adau1977_lookup_mcs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %adau1977_lookup_mcs.exit.if.end10_crit_edge, %if.end7.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %mcs.0 = phi i32 [ %sub.i, %adau1977_lookup_mcs.exit.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ], [ 4, %if.end7.i.if.end10_crit_edge ]
  %right_j = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %right_j to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %right_j, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end10.if.end16_crit_edge, label %if.then11

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then11:                                        ; preds = %if.end10
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then11.if.then.i.i.i_crit_edge

if.then11.if.then.i.i.i_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then11.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then11.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %26, %if.then11.if.then.i.i.i_crit_edge ], [ %29, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !109
  %add.i.i.i = or i32 %27, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then11
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i = icmp eq i32 %29, 0
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
  %30 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %sw.bb13
  ]

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %retval.0.i.ph, 192
  br label %if.end16

sw.bb13:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or14 = or i32 %retval.0.i.ph, 128
  br label %if.end16

if.end16:                                         ; preds = %sw.bb13, %sw.bb, %if.end10.if.end16_crit_edge
  %ctrl0.1 = phi i32 [ %retval.0.i.ph, %if.end10.if.end16_crit_edge ], [ %or14, %sw.bb13 ], [ %or, %sw.bb ]
  %ctrl0_mask.0 = phi i32 [ 7, %if.end10.if.end16_crit_edge ], [ 199, %sw.bb13 ], [ 199, %sw.bb ]
  %clock_provider = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 14
  %31 = ptrtoint ptr %clock_provider to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %clock_provider, align 1, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool17.not = icmp eq i8 %32, 0
  br i1 %tobool17.not, label %if.end16.if.end39_crit_edge, label %if.then18

if.end16.if.end39_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then18:                                        ; preds = %if.end16
  %arrayidx.i.i.i81 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i82 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i82, label %for.inc.i.i.i89, label %if.then18.if.then.i.i.i86_crit_edge

if.then18.if.then.i.i.i86_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i86

if.then.i.i.i86:                                  ; preds = %for.inc.i.i.i89.if.then.i.i.i86_crit_edge, %if.then18.if.then.i.i.i86_crit_edge
  %i.09.lcssa.i.i.i83 = phi i32 [ 0, %if.then18.if.then.i.i.i86_crit_edge ], [ 32, %for.inc.i.i.i89.if.then.i.i.i86_crit_edge ]
  %.lcssa.i.i.i84 = phi i32 [ %34, %if.then18.if.then.i.i.i86_crit_edge ], [ %37, %for.inc.i.i.i89.if.then.i.i.i86_crit_edge ]
  %35 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i84, i1 true) #6, !range !109
  %add.i.i.i85 = or i32 %35, %i.09.lcssa.i.i.i83
  br label %params_width.exit92

for.inc.i.i.i89:                                  ; preds = %if.then18
  %arrayidx.1.i.i.i87 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.1.i.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.1.i.i.i88 = icmp eq i32 %37, 0
  br i1 %tobool.not.1.i.i.i88, label %for.inc.i.i.i89.params_width.exit92_crit_edge, label %for.inc.i.i.i89.if.then.i.i.i86_crit_edge

for.inc.i.i.i89.if.then.i.i.i86_crit_edge:        ; preds = %for.inc.i.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i86

for.inc.i.i.i89.params_width.exit92_crit_edge:    ; preds = %for.inc.i.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit92

params_width.exit92:                              ; preds = %for.inc.i.i.i89.params_width.exit92_crit_edge, %if.then.i.i.i86
  %retval.0.i.i.i90 = phi i32 [ %add.i.i.i85, %if.then.i.i.i86 ], [ 0, %for.inc.i.i.i89.params_width.exit92_crit_edge ]
  %call1.i91 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i90) #6
  %38 = zext i32 %call1.i91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call1.i91, label %params_width.exit92.cleanup_crit_edge [
    i32 16, label %params_width.exit92.sw.epilog23_crit_edge
    i32 24, label %params_width.exit92.sw.bb21_crit_edge
    i32 32, label %params_width.exit92.sw.bb21_crit_edge104
  ]

params_width.exit92.sw.bb21_crit_edge104:         ; preds = %params_width.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

params_width.exit92.sw.bb21_crit_edge:            ; preds = %params_width.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb21

params_width.exit92.sw.epilog23_crit_edge:        ; preds = %params_width.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog23

params_width.exit92.cleanup_crit_edge:            ; preds = %params_width.exit92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb21:                                          ; preds = %params_width.exit92.sw.bb21_crit_edge, %params_width.exit92.sw.bb21_crit_edge104
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.bb21, %params_width.exit92.sw.epilog23_crit_edge
  %slot_width.0 = phi i32 [ 32, %sw.bb21 ], [ %call1.i91, %params_width.exit92.sw.epilog23_crit_edge ]
  %ctrl1.0 = phi i32 [ 0, %sw.bb21 ], [ %call1.i91, %params_width.exit92.sw.epilog23_crit_edge ]
  %slot_width24 = getelementptr inbounds %struct.adau1977, ptr %5, i32 0, i32 12
  %39 = ptrtoint ptr %slot_width24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slot_width24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool25.not = icmp eq i32 %40, 0
  %spec.select = select i1 %tobool25.not, i32 %slot_width.0, i32 %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %spec.select)
  %cmp29 = icmp eq i32 %spec.select, 16
  %or31 = or i32 %ctrl1.0, 2
  %ctrl1.1 = select i1 %cmp29, i32 %or31, i32 %ctrl1.0
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 6, i32 noundef 18, i32 noundef %ctrl1.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp36 = icmp slt i32 %call.i, 0
  br i1 %cmp36, label %sw.epilog23.cleanup_crit_edge, label %sw.epilog23.if.end39_crit_edge

sw.epilog23.if.end39_crit_edge:                   ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

sw.epilog23.cleanup_crit_edge:                    ; preds = %sw.epilog23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %sw.epilog23.if.end39_crit_edge, %if.end16.if.end39_crit_edge
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %5, align 4
  %call.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 5, i32 noundef %ctrl0_mask.0, i32 noundef %ctrl0.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp42 = icmp slt i32 %call.i93, 0
  br i1 %cmp42, label %if.end39.cleanup_crit_edge, label %if.end44

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %call.i94 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 1, i32 noundef 7, i32 noundef %mcs.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end39.cleanup_crit_edge, %sw.epilog23.cleanup_crit_edge, %params_width.exit92.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %adau1977_lookup_mcs.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.else16.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i94, %if.end44 ], [ -1, %adau1977_lookup_mcs.exit.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %params_width.exit92.cleanup_crit_edge ], [ %call.i, %sw.epilog23.cleanup_crit_edge ], [ %call.i93, %if.end39.cleanup_crit_edge ], [ -22, %if.else16.i.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adau1977.c", i32 922, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/adau1977.c", i32 926, i32 56}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/adau1977.c", i32 933, i32 54}
!6 = !{ptr @__ksymtab_adau1977_probe, !7, !"__ksymtab_adau1977_probe", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/adau1977.c", i32 975, i32 1}
!8 = !{ptr @adau1977_regmap_config, !9, !"adau1977_regmap_config", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/adau1977.c", i32 991, i32 28}
!10 = !{ptr @__ksymtab_adau1977_regmap_config, !11, !"__ksymtab_adau1977_regmap_config", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/adau1977.c", i32 999, i32 1}
!12 = !{ptr @__UNIQUE_ID_description296, !13, !"__UNIQUE_ID_description296", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/adau1977.c", i32 1001, i32 1}
!14 = !{ptr @__UNIQUE_ID_author297, !15, !"__UNIQUE_ID_author297", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/adau1977.c", i32 1002, i32 1}
!16 = !{ptr @__UNIQUE_ID_file298, !17, !"__UNIQUE_ID_file298", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/adau1977.c", i32 1003, i32 1}
!18 = !{ptr @__UNIQUE_ID_license299, !17, !"__UNIQUE_ID_license299", i1 false, i1 false}
!19 = !{ptr @adau1977_rates, !20, !"adau1977_rates", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/adau1977.c", i32 766, i32 27}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/adau1977.c", i32 886, i32 46}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/adau1977.c", i32 890, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @adau1977_setup_micbias._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @adau1977_setup_micbias._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @adau1977_component_driver, !32, !"adau1977_component_driver", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/adau1977.c", i32 867, i32 46}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/adau1977.c", i32 209, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/adau1977.c", i32 210, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/adau1977.c", i32 211, i32 2}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/adau1977.c", i32 212, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/adau1977.c", i32 214, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/adau1977.c", i32 215, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/adau1977.c", i32 216, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/adau1977.c", i32 217, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/adau1977.c", i32 219, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/adau1977.c", i32 220, i32 2}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/adau1977.c", i32 221, i32 2}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/adau1977.c", i32 222, i32 2}
!57 = !{ptr @adau1977_snd_controls, !58, !"adau1977_snd_controls", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/adau1977.c", i32 208, i32 38}
!59 = !{ptr @adau1977_adc_gain, !60, !"adau1977_adc_gain", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/adau1977.c", i32 157, i32 14}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/adau1977.c", i32 165, i32 2}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/adau1977.c", i32 168, i32 2}
!65 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/adau1977.c", i32 169, i32 2}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/adau1977.c", i32 170, i32 2}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/adau1977.c", i32 171, i32 2}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/adau1977.c", i32 173, i32 2}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/adau1977.c", i32 174, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/adau1977.c", i32 175, i32 2}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/adau1977.c", i32 176, i32 2}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/adau1977.c", i32 178, i32 2}
!82 = !{ptr @adau1977_dapm_widgets, !83, !"adau1977_dapm_widgets", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/adau1977.c", i32 164, i32 41}
!84 = !{ptr @adau1977_dapm_routes, !85, !"adau1977_dapm_routes", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/adau1977.c", i32 181, i32 40}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/adau1977.c", i32 160, i32 2}
!88 = !{ptr @adau1977_micbias_dapm_widgets, !89, !"adau1977_micbias_dapm_widgets", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/adau1977.c", i32 159, i32 41}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/adau1977.c", i32 753, i32 10}
!92 = !{ptr @adau1977_dai, !93, !"adau1977_dai", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/adau1977.c", i32 752, i32 34}
!94 = !{ptr @adau1977_dai_ops, !95, !"adau1977_dai_ops", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/adau1977.c", i32 743, i32 37}
!96 = !{ptr @adau1977_reg_defaults, !97, !"adau1977_reg_defaults", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/adau1977.c", i32 133, i32 33}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i8 0, i8 2}
!109 = !{i32 0, i32 33}
