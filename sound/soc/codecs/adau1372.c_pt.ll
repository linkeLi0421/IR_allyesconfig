; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adau1372.c_pt.bc'
source_filename = "../sound/soc/codecs/adau1372.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+adau1372_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adau1372_probe\09\09\09\09"
module asm "\09.long\09__crc_adau1372_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adau1372_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adau1372_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adau1372_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adau1372_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_adau1372_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_adau1372_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adau1372_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22adau1372_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_adau1372_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.adau1372 = type { ptr, ptr, ptr, i8, i8, i8, %struct.snd_pcm_hw_constraint_list, i32, ptr, ptr, ptr }
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

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@adau1372_rates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 48000, i32 8000, i32 12000, i32 16000, i32 24000, i32 32000, i32 96000, i32 192000], [32 x i8] zeroinitializer }, align 32
@adau1372_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @adau1372_controls, i32 33, ptr @adau1372_dapm_widgets, i32 74, ptr @adau1372_dapm_routes, i32 192, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1372_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@adau1372_dai_driver = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.174, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adau1372_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.167, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 8, i32 24 }, %struct.snd_soc_pcm_stream { ptr @.str.168, i64 1028, i32 -2147483648, i32 0, i32 0, i32 2, i32 8, i32 24 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_adau1372_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adau1372_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adau1372_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adau1372_probe to i32), ptr @__kstrtab_adau1372_probe, ptr @__kstrtabns_adau1372_probe }, section "___ksymtab+adau1372_probe", align 4
@adau1372_reg_defaults = internal constant { [47 x %struct.reg_default], [72 x i8] } { [47 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 17, i32 16 }, %struct.reg_default { i32 19, i32 84 }, %struct.reg_default { i32 20, i32 118 }, %struct.reg_default { i32 21, i32 84 }, %struct.reg_default { i32 22, i32 118 }, %struct.reg_default { i32 23, i32 4 }, %struct.reg_default { i32 24, i32 16 }, %struct.reg_default { i32 25, i32 50 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 25 }, %struct.reg_default { i32 28, i32 25 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 64 }, %struct.reg_default { i32 36, i32 64 }, %struct.reg_default { i32 37, i32 64 }, %struct.reg_default { i32 38, i32 64 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 24 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 15 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 16 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 62, i32 17 }, %struct.reg_default { i32 67, i32 15 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }], [72 x i8] zeroinitializer }, align 32
@adau1372_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adau1372_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 77, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1372_reg_defaults, i32 47, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_adau1372_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_adau1372_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_adau1372_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adau1372_regmap_config to i32), ptr @__kstrtab_adau1372_regmap_config, ptr @__kstrtabns_adau1372_regmap_config }, section "___ksymtab_gpl+adau1372_regmap_config", align 4
@__UNIQUE_ID_description238 = internal constant [56 x i8] c"snd_soc_adau1372.description=ASoC ADAU1372 CODEC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [61 x i8] c"snd_soc_adau1372.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [56 x i8] c"snd_soc_adau1372.file=sound/soc/codecs/snd-soc-adau1372\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [32 x i8] c"snd_soc_adau1372.license=GPL v2\00", section ".modinfo", align 1
@adau1372_controls = internal constant { [33 x %struct.snd_kcontrol_new], [400 x i8] } { [33 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_hpf0_1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_hpf2_3_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_pga_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adau1372_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_bias_hp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_bias_mic_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_bias_afe0_1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_bias_afe2_3_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_bias_adc0_1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_bias_adc2_3_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_bias_dac_enum to i32) }], [400 x i8] zeroinitializer }, align 32
@adau1372_dapm_routes = internal constant { [192 x %struct.snd_soc_dapm_route], [2496 x i8] } { [192 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.143, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.143, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.143, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.143, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr @.str.144, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.144, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.144, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr @.str.144, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.147, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.148, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.149, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.150, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.147, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.148, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.149, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.150, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.147, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.148, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.149, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.150, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.147, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.148, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.149, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.150, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.154, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.155, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.156, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.157, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.107, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.108, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.109, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.110, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.111, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.112, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.113, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.114, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.159, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.159, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.160, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.160, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.161, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.161, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.162, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.162, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.164, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.165, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.164, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.165, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }], [2496 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 0 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@adau1372_digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -9563, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 31, i32 31, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 1 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 32, i32 32, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 2 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 33, i32 33, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 3 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 34, i32 34, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 0 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 1 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 2 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC 3 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC 0+1 High-Pass-Filter\00", [39 x i8] zeroinitializer }, align 32
@adau1372_hpf0_1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 29, i8 5, i8 5, i32 4, i32 3, ptr @adau1372_hpf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC 2+3 High-Pass-Filter\00", [39 x i8] zeroinitializer }, align 32
@adau1372_hpf2_3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 30, i8 5, i8 5, i32 4, i32 3, ptr @adau1372_hpf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 0 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@adau1372_pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 35, i32 35, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 1 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 36, i32 36, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 2 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 3 Capture Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PGA 0 Boost Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@adau1372_pga_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PGA 1 Boost Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PGA 2 Boost Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PGA 3 Boost Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 0 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 1 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 2 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PGA 3 Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 38, i32 38, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC 0 Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 47, i32 47, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC 1 Playback Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 48, i32 48, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC 0 Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC 1 Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Bias\00", [17 x i8] zeroinitializer }, align 32
@adau1372_bias_hp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 6, i8 6, i32 4, i32 3, ptr @adau1372_bias_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Microphone Bias\00", [16 x i8] zeroinitializer }, align 32
@adau1372_bias_mic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 71, i8 2, i8 2, i32 4, i32 3, ptr @adau1372_bias_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AFE 0+1 Bias\00", [19 x i8] zeroinitializer }, align 32
@adau1372_bias_afe0_1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 4, i8 4, i32 4, i32 3, ptr @adau1372_bias_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AFE 2+3 Bias\00", [19 x i8] zeroinitializer }, align 32
@adau1372_bias_afe2_3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 71, i8 4, i8 4, i32 4, i32 3, ptr @adau1372_bias_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC 0+1 Bias\00", [19 x i8] zeroinitializer }, align 32
@adau1372_bias_adc0_1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 0, i8 0, i32 3, i32 3, ptr @adau1372_bias_adc_text, ptr @adau1372_bias_adc_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC 2+3 Bias\00", [19 x i8] zeroinitializer }, align 32
@adau1372_bias_adc2_3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 70, i8 2, i8 2, i32 3, i32 3, ptr @adau1372_bias_adc_text, ptr @adau1372_bias_adc_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DAC 0+1 Bias\00", [19 x i8] zeroinitializer }, align 32
@adau1372_bias_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 71, i8 0, i8 0, i32 4, i32 3, ptr @adau1372_bias_dac_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_hpf_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1 Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4 Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8 Hz\00", [27 x i8] zeroinitializer }, align 32
@adau1372_bias_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Normal operation\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Extreme power saving\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enhanced performance\00", [43 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Power saving\00", [19 x i8] zeroinitializer }, align 32
@adau1372_bias_adc_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.62, ptr @.str.64, ptr @.str.65], [20 x i8] zeroinitializer }, align 32
@adau1372_bias_adc_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@adau1372_bias_dac_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.64], [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Superior performance\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN0\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC0_1\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DMIC2_3\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS0\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PGA0\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PGA1\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PGA2\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PGA3\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC0\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC0 Filter\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Filter\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Filter\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC3 Filter\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Output ASRC0 Decimator\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Output ASRC1 Decimator\00", [41 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Output ASRC2 Decimator\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Output ASRC3 Decimator\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Decimator0 Mux\00", [17 x i8] zeroinitializer }, align 32
@adau1372_decimator0_1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_decimator0_1_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Decimator1 Mux\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Decimator2 Mux\00", [17 x i8] zeroinitializer }, align 32
@adau1372_decimator2_3_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_decimator2_3_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Decimator3 Mux\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Output ASRC0 Mux\00", [47 x i8] zeroinitializer }, align 32
@adau1372_asrco0_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_asrco0_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Output ASRC1 Mux\00", [47 x i8] zeroinitializer }, align 32
@adau1372_asrco1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_asrco1_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Output ASRC2 Mux\00", [47 x i8] zeroinitializer }, align 32
@adau1372_asrco2_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_asrco2_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Output ASRC3 Mux\00", [47 x i8] zeroinitializer }, align 32
@adau1372_asrco3_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_asrco3_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 0 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout0_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout0_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 1 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout1_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 2 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout2_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout2_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 3 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout3_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout3_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 4 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout4_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout4_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 5 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout5_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout5_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 6 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout6_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout6_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Serial Output 7 Capture Mux\00", [36 x i8] zeroinitializer }, align 32
@adau1372_sout7_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_sout7_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 0\00", [17 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 1\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 2\00", [17 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 3\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 4\00", [17 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 5\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 6\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Serial Input 7\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 0\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 1\00", [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 2\00", [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 3\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 4\00", [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 5\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 6\00", [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Serial Output 7\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Output ASRC Supply\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Input ASRC Supply\00", [46 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC1 Modulator\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC0 Modulator\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Input ASRC1 Interpolator\00", [39 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Input ASRC0 Interpolator\00", [39 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Input ASRC0 Mux\00", [16 x i8] zeroinitializer }, align 32
@adau1372_asrci_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_asrci_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Input ASRC1 Mux\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC 0 Mux\00", [22 x i8] zeroinitializer }, align 32
@adau1372_dac0_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.163, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_dac0_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC 1 Mux\00", [22 x i8] zeroinitializer }, align 32
@adau1372_dac1_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adau1372_dac1_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC0\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_STAGE_LP\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_STAGE_LN\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_STAGE_RP\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OP_STAGE_RN\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTL\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTR\00", [25 x i8] zeroinitializer }, align 32
@adau1372_dapm_widgets = internal constant { [74 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [3352 x i8] } { [74 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 35, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 30, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 30, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 68, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_decimator0_1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_decimator0_1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_decimator2_3_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_decimator2_3_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_asrco0_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_asrco1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_asrco2_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_asrco3_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout0_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout2_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout3_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout4_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout5_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout6_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_sout7_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 2 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 3 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 4 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 5 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 6 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 7 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 1 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 2 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 3 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 4 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 5 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 6 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 7 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 69, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_asrci_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_asrci_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_dac0_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1372_dac1_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 46, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 46, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [3352 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Decimator 0+1 Capture Mux\00", [38 x i8] zeroinitializer }, align 32
@adau1372_decimator0_1_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 29, i8 2, i8 2, i32 2, i32 1, ptr @adau1372_decimator_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_decimator_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.143, ptr @.str.144], [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Decimator 2+3 Capture Mux\00", [38 x i8] zeroinitializer }, align 32
@adau1372_decimator2_3_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 30, i8 2, i8 2, i32 2, i32 1, ptr @adau1372_decimator_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Output ASRC0 Capture Mux\00", [39 x i8] zeroinitializer }, align 32
@adau1372_asrco0_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 0, i8 0, i32 4, i32 15, ptr @adau1372_asrco_mux_text, ptr @adau1372_asrco_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_asrco_mux_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150], [16 x i8] zeroinitializer }, align 32
@adau1372_asrco_mux_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 5, i32 6, i32 7], [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Decimator0\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Decimator1\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Decimator2\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Decimator3\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Output ASRC1 Capture Mux\00", [39 x i8] zeroinitializer }, align 32
@adau1372_asrco1_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 24, i8 4, i8 4, i32 4, i32 15, ptr @adau1372_asrco_mux_text, ptr @adau1372_asrco_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Output ASRC2 Capture Mux\00", [39 x i8] zeroinitializer }, align 32
@adau1372_asrco2_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 25, i8 0, i8 0, i32 4, i32 15, ptr @adau1372_asrco_mux_text, ptr @adau1372_asrco_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Output ASRC3 Capture Mux\00", [39 x i8] zeroinitializer }, align 32
@adau1372_asrco3_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 25, i8 4, i8 4, i32 4, i32 15, ptr @adau1372_asrco_mux_text, ptr @adau1372_asrco_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout0_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 0, i8 0, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout_mux_text = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114], [48 x i8] zeroinitializer }, align 32
@adau1372_sout_mux_values = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [48 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Output ASRC0\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Output ASRC1\00", [19 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Output ASRC2\00", [19 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Output ASRC3\00", [19 x i8] zeroinitializer }, align 32
@adau1372_sout1_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 4, i8 4, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout2_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 0, i8 0, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout3_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 4, i8 4, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout4_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 21, i8 0, i8 0, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout5_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 21, i8 4, i8 4, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout6_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22, i8 0, i8 0, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_sout7_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22, i8 4, i8 4, i32 12, i32 15, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Input ASRC Playback Mux\00", [40 x i8] zeroinitializer }, align 32
@adau1372_asrci_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 2, i8 2, i32 4, i32 3, ptr @adau1372_asrci_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_asrci_mux_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162], [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Serial Input 0+1\00", [47 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Serial Input 2+3\00", [47 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Serial Input 4+5\00", [47 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Serial Input 6+7\00", [47 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC 0 Playback Mux\00", [45 x i8] zeroinitializer }, align 32
@adau1372_dac0_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 0, i8 0, i32 2, i32 15, ptr @adau1372_dac_mux_text, ptr @adau1372_dac_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1372_dac_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.164, ptr @.str.165], [24 x i8] zeroinitializer }, align 32
@adau1372_dac_mux_values = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 12, i32 13], [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Input ASRC0\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Input ASRC1\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC 1 Playback Mux\00", [45 x i8] zeroinitializer }, align 32
@adau1372_dac1_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 17, i8 4, i8 4, i32 2, i32 15, ptr @adau1372_dac_mux_text, ptr @adau1372_dac_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@adau1372_enable_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.171, i32 781, ptr @.str.172, ptr @.str.173 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to lock PLL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adau1372_enable_pll\00", [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/adau1372.c\00", [36 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adau1372_enable_pll._entry_ptr = internal global ptr @adau1372_enable_pll._entry, section ".printk_index", align 4
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adau1372\00", [23 x i8] zeroinitializer }, align 32
@adau1372_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @adau1372_set_dai_fmt, ptr null, ptr @adau1372_set_tdm_slot, ptr null, ptr null, ptr @adau1372_set_tristate, ptr null, ptr null, ptr null, ptr @adau1372_startup, ptr null, ptr @adau1372_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12288000, i64 24576000]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.179 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.181 = internal global [10 x i64] [i64 8, i64 32, i64 8000, i64 12000, i64 16000, i64 24000, i64 32000, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 927, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 931, i32 51 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"adau1372_rates\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 107, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant [16 x i8] c"adau1372_driver\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 854, i32 46 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"adau1372_dai_driver\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 874, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [22 x i8] c"adau1372_reg_defaults\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 990, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant [23 x i8] c"adau1372_regmap_config\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 1048, i32 28 }
@___asan_gen_.204 = private unnamed_addr constant [18 x i8] c"adau1372_controls\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 177, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant [21 x i8] c"adau1372_dapm_routes\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 483, i32 40 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 178, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"adau1372_digital_tlv\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 127, i32 14 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 180, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 182, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 184, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 186, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 187, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 188, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 189, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 191, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"adau1372_hpf0_1_enum\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 173, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 192, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant [21 x i8] c"adau1372_hpf2_3_enum\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 175, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 194, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"adau1372_pga_tlv\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 128, i32 14 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 196, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 198, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 200, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 202, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [23 x i8] c"adau1372_pga_boost_tlv\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 129, i32 14 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 204, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 206, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 208, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 210, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 211, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 212, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 213, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 215, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 217, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 219, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 220, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 222, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [22 x i8] c"adau1372_bias_hp_enum\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 149, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 223, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [23 x i8] c"adau1372_bias_mic_enum\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 161, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 224, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [26 x i8] c"adau1372_bias_afe0_1_enum\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 151, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 225, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [26 x i8] c"adau1372_bias_afe2_3_enum\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 159, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 226, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [26 x i8] c"adau1372_bias_adc0_1_enum\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 156, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 227, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [26 x i8] c"adau1372_bias_adc2_3_enum\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 153, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 228, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [23 x i8] c"adau1372_bias_dac_enum\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 163, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant [18 x i8] c"adau1372_hpf_text\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 166, i32 27 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 167, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 168, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 169, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 170, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [19 x i8] c"adau1372_bias_text\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 131, i32 27 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 132, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 132, i32 22 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 132, i32 46 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 133, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [23 x i8] c"adau1372_bias_adc_text\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 140, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant [25 x i8] c"adau1372_bias_adc_values\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 136, i32 27 }
@___asan_gen_.405 = private unnamed_addr constant [23 x i8] c"adau1372_bias_dac_text\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 144, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 145, i32 38 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 363, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 364, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 365, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 366, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 367, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 368, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 370, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 371, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 373, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 374, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 375, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 376, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 377, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 378, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 379, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 380, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 382, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 383, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 384, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 385, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 386, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 387, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 388, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 389, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 391, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [34 x i8] c"adau1372_decimator0_1_mux_control\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 239, i32 38 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 392, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 393, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [34 x i8] c"adau1372_decimator2_3_mux_control\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 245, i32 38 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 394, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 396, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [28 x i8] c"adau1372_asrco0_mux_control\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 268, i32 38 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 397, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [28 x i8] c"adau1372_asrco1_mux_control\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 270, i32 38 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 398, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [28 x i8] c"adau1372_asrco2_mux_control\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 272, i32 38 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 399, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [28 x i8] c"adau1372_asrco3_mux_control\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 274, i32 38 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 400, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [27 x i8] c"adau1372_sout0_mux_control\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 313, i32 38 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 402, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant [27 x i8] c"adau1372_sout1_mux_control\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 315, i32 38 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 404, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [27 x i8] c"adau1372_sout2_mux_control\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 317, i32 38 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 406, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [27 x i8] c"adau1372_sout3_mux_control\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 319, i32 38 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 408, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [27 x i8] c"adau1372_sout4_mux_control\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 321, i32 38 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 410, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [27 x i8] c"adau1372_sout5_mux_control\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 323, i32 38 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 412, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant [27 x i8] c"adau1372_sout6_mux_control\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 325, i32 38 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 414, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [27 x i8] c"adau1372_sout7_mux_control\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 327, i32 38 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 417, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 418, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 419, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 420, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 421, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 422, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 423, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 424, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 426, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 427, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 428, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 429, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 430, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 431, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 432, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 433, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 435, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 436, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 438, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 439, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 440, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 441, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 443, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant [27 x i8] c"adau1372_asrci_mux_control\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 340, i32 38 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 444, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 446, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [26 x i8] c"adau1372_dac0_mux_control\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 357, i32 38 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 447, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [26 x i8] c"adau1372_dac1_mux_control\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 359, i32 38 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 449, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 450, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 452, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 453, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 454, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 455, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 457, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 458, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant [22 x i8] c"adau1372_dapm_widgets\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 362, i32 41 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 240, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant [31 x i8] c"adau1372_decimator0_1_mux_enum\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 236, i32 8 }
@___asan_gen_.693 = private unnamed_addr constant [28 x i8] c"adau1372_decimator_mux_text\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 231, i32 27 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 232, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 233, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 246, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [31 x i8] c"adau1372_decimator2_3_mux_enum\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 242, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 269, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [25 x i8] c"adau1372_asrco0_mux_enum\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 259, i32 8 }
@___asan_gen_.714 = private unnamed_addr constant [24 x i8] c"adau1372_asrco_mux_text\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 252, i32 27 }
@___asan_gen_.717 = private unnamed_addr constant [26 x i8] c"adau1372_asrco_mux_values\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 248, i32 27 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 253, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 254, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 255, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 256, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 271, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [25 x i8] c"adau1372_asrco1_mux_enum\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 261, i32 8 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 273, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant [25 x i8] c"adau1372_asrco2_mux_enum\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 263, i32 8 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 275, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [25 x i8] c"adau1372_asrco3_mux_enum\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 265, i32 8 }
@___asan_gen_.750 = private unnamed_addr constant [24 x i8] c"adau1372_sout0_mux_enum\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 296, i32 8 }
@___asan_gen_.753 = private unnamed_addr constant [23 x i8] c"adau1372_sout_mux_text\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 281, i32 27 }
@___asan_gen_.756 = private unnamed_addr constant [25 x i8] c"adau1372_sout_mux_values\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 277, i32 27 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 282, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 283, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 284, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 285, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [24 x i8] c"adau1372_sout1_mux_enum\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 298, i32 8 }
@___asan_gen_.774 = private unnamed_addr constant [24 x i8] c"adau1372_sout2_mux_enum\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 300, i32 8 }
@___asan_gen_.777 = private unnamed_addr constant [24 x i8] c"adau1372_sout3_mux_enum\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 302, i32 8 }
@___asan_gen_.780 = private unnamed_addr constant [24 x i8] c"adau1372_sout4_mux_enum\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 304, i32 8 }
@___asan_gen_.783 = private unnamed_addr constant [24 x i8] c"adau1372_sout5_mux_enum\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 306, i32 8 }
@___asan_gen_.786 = private unnamed_addr constant [24 x i8] c"adau1372_sout6_mux_enum\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 308, i32 8 }
@___asan_gen_.789 = private unnamed_addr constant [24 x i8] c"adau1372_sout7_mux_enum\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 310, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 341, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant [24 x i8] c"adau1372_asrci_mux_enum\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 337, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant [24 x i8] c"adau1372_asrci_mux_text\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 330, i32 27 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 331, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 332, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 333, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 334, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 358, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [23 x i8] c"adau1372_dac0_mux_enum\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 352, i32 8 }
@___asan_gen_.819 = private unnamed_addr constant [22 x i8] c"adau1372_dac_mux_text\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 347, i32 27 }
@___asan_gen_.822 = private unnamed_addr constant [24 x i8] c"adau1372_dac_mux_values\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 343, i32 27 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 348, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 349, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 360, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [23 x i8] c"adau1372_dac1_mux_enum\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 354, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 523, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 532, i32 28 }
@___asan_gen_.843 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 781, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 875, i32 10 }
@___asan_gen_.864 = private unnamed_addr constant [17 x i8] c"adau1372_dai_ops\00", align 1
@___asan_gen_.865 = private constant [31 x i8] c"../sound/soc/codecs/adau1372.c\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.865, i32 864, i32 37 }
@llvm.compiler.used = appending global [251 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__ksymtab_adau1372_probe, ptr @__ksymtab_adau1372_regmap_config, ptr @adau1372_enable_pll._entry, ptr @adau1372_enable_pll._entry_ptr, ptr @.str, ptr @.str.1, ptr @adau1372_rates, ptr @adau1372_driver, ptr @adau1372_dai_driver, ptr @adau1372_reg_defaults, ptr @adau1372_regmap_config, ptr @adau1372_controls, ptr @adau1372_dapm_routes, ptr @.str.2, ptr @adau1372_digital_tlv, ptr @.compoundliteral, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @adau1372_hpf0_1_enum, ptr @.str.18, ptr @adau1372_hpf2_3_enum, ptr @.str.19, ptr @adau1372_pga_tlv, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @adau1372_pga_boost_tlv, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @adau1372_bias_hp_enum, ptr @.str.52, ptr @adau1372_bias_mic_enum, ptr @.str.53, ptr @adau1372_bias_afe0_1_enum, ptr @.str.54, ptr @adau1372_bias_afe2_3_enum, ptr @.str.55, ptr @adau1372_bias_adc0_1_enum, ptr @.str.56, ptr @adau1372_bias_adc2_3_enum, ptr @.str.57, ptr @adau1372_bias_dac_enum, ptr @adau1372_hpf_text, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @adau1372_bias_text, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @adau1372_bias_adc_text, ptr @adau1372_bias_adc_values, ptr @adau1372_bias_dac_text, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @adau1372_decimator0_1_mux_control, ptr @.str.92, ptr @.str.93, ptr @adau1372_decimator2_3_mux_control, ptr @.str.94, ptr @.str.95, ptr @adau1372_asrco0_mux_control, ptr @.str.96, ptr @adau1372_asrco1_mux_control, ptr @.str.97, ptr @adau1372_asrco2_mux_control, ptr @.str.98, ptr @adau1372_asrco3_mux_control, ptr @.str.99, ptr @adau1372_sout0_mux_control, ptr @.str.100, ptr @adau1372_sout1_mux_control, ptr @.str.101, ptr @adau1372_sout2_mux_control, ptr @.str.102, ptr @adau1372_sout3_mux_control, ptr @.str.103, ptr @adau1372_sout4_mux_control, ptr @.str.104, ptr @adau1372_sout5_mux_control, ptr @.str.105, ptr @adau1372_sout6_mux_control, ptr @.str.106, ptr @adau1372_sout7_mux_control, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @adau1372_asrci_mux_control, ptr @.str.130, ptr @.str.131, ptr @adau1372_dac0_mux_control, ptr @.str.132, ptr @adau1372_dac1_mux_control, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @adau1372_dapm_widgets, ptr @.str.142, ptr @adau1372_decimator0_1_mux_enum, ptr @adau1372_decimator_mux_text, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @adau1372_decimator2_3_mux_enum, ptr @.str.146, ptr @adau1372_asrco0_mux_enum, ptr @adau1372_asrco_mux_text, ptr @adau1372_asrco_mux_values, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @adau1372_asrco1_mux_enum, ptr @.str.152, ptr @adau1372_asrco2_mux_enum, ptr @.str.153, ptr @adau1372_asrco3_mux_enum, ptr @adau1372_sout0_mux_enum, ptr @adau1372_sout_mux_text, ptr @adau1372_sout_mux_values, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @adau1372_sout1_mux_enum, ptr @adau1372_sout2_mux_enum, ptr @adau1372_sout3_mux_enum, ptr @adau1372_sout4_mux_enum, ptr @adau1372_sout5_mux_enum, ptr @adau1372_sout6_mux_enum, ptr @adau1372_sout7_mux_enum, ptr @.str.158, ptr @adau1372_asrci_mux_enum, ptr @adau1372_asrci_mux_text, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @adau1372_dac0_mux_enum, ptr @adau1372_dac_mux_text, ptr @adau1372_dac_mux_values, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @adau1372_dac1_mux_enum, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @adau1372_dai_ops], section "llvm.metadata"
@0 = internal global [244 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dai_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_reg_defaults to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_controls to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dapm_routes to i32), i32 9984, i32 12480, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_hpf0_1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_hpf2_3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_pga_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_hp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_mic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_afe0_1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_afe2_3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_adc0_1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_adc2_3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_hpf_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_adc_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_adc_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_bias_dac_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_decimator0_1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_decimator2_3_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco0_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco2_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco3_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout0_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout2_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout3_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout4_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout5_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout6_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout7_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrci_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dac0_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dac1_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dapm_widgets to i32), i32 13320, i32 16672, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_decimator0_1_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_decimator_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_decimator2_3_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco0_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco_mux_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco1_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco2_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrco3_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout0_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout_mux_text to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout_mux_values to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout1_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout2_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout3_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout4_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout5_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout6_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_sout7_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrci_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_asrci_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dac0_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dac_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dac_mux_values to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dac1_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_enable_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1372_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adau1372_probe(ptr noundef %dev, ptr noundef %regmap, ptr noundef %switch_mode) #0 align 64 {
entry:
  %regs.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call5, ptr %call.i, align 4
  %cmp.i70 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call12 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %pd_gpio = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %pd_gpio to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %pd_gpio, align 4
  %cmp.i71 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %regmap19 = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %regmap, ptr %regmap19, align 4
  %switch_mode20 = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %switch_mode20 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %switch_mode, ptr %switch_mode20, align 4
  %dev21 = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev21, align 4
  %rate_constraints = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %rate_constraints to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adau1372_rates, ptr %rate_constraints, align 4
  %count = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %count, align 4
  %mask = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 255, ptr %mask, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call25 = tail call i32 @clk_get_rate(ptr noundef %13) #6
  %14 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call25, label %sw.default [
    i32 12288000, label %if.end18.sw.epilog_crit_edge
    i32 24576000, label %sw.bb26
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %regs.i) #6
  %15 = call ptr @memset(ptr %regs.i, i32 255, i32 5)
  %call.i72 = call i32 @adau_calc_pll_cfg(i32 noundef %call25, i32 noundef 49152000, ptr noundef nonnull %regs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp.i73 = icmp slt i32 %call.i72, 0
  br i1 %cmp.i73, label %adau1372_setup_pll.exit.thread, label %if.end29

adau1372_setup_pll.exit.thread:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %regs.i) #6
  br label %cleanup

if.end29:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %16 = getelementptr inbounds [5 x i8], ptr %regs.i, i32 0, i32 4
  %17 = getelementptr inbounds [5 x i8], ptr %regs.i, i32 0, i32 3
  %18 = getelementptr inbounds [5 x i8], ptr %regs.i, i32 0, i32 2
  %19 = getelementptr inbounds [5 x i8], ptr %regs.i, i32 0, i32 1
  %20 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap19, align 4
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regs.i, align 1
  %conv.i = zext i8 %23 to i32
  %call2.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 1, i32 noundef %conv.i) #6
  %24 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap19, align 4
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %19, align 1
  %conv.1.i = zext i8 %27 to i32
  %call2.1.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 2, i32 noundef %conv.1.i) #6
  %28 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap19, align 4
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %18, align 1
  %conv.2.i = zext i8 %31 to i32
  %call2.2.i = call i32 @regmap_write(ptr noundef %29, i32 noundef 3, i32 noundef %conv.2.i) #6
  %32 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap19, align 4
  %34 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %17, align 1
  %conv.3.i = zext i8 %35 to i32
  %call2.3.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 4, i32 noundef %conv.3.i) #6
  %36 = ptrtoint ptr %regmap19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap19, align 4
  %38 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %16, align 1
  %conv.4.i = zext i8 %39 to i32
  %call2.4.i = call i32 @regmap_write(ptr noundef %37, i32 noundef 5, i32 noundef %conv.4.i) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %regs.i) #6
  %use_pll = getelementptr inbounds %struct.adau1372, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %use_pll to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %use_pll, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end29, %sw.bb26, %if.end18.sw.epilog_crit_edge
  %clk_ctrl.0 = phi i32 [ 0, %if.end29 ], [ 0, %sw.bb26 ], [ 2, %if.end18.sw.epilog_crit_edge ]
  call void @regcache_cache_only(ptr noundef %regmap, i1 noundef zeroext true) #6
  %call.i74 = call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 0, i32 noundef 2, i32 noundef %clk_ctrl.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call31 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef 57, i32 noundef 0) #6
  %call32 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef 62, i32 noundef 18) #6
  %call33 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef 49, i32 noundef 0) #6
  %call34 = call i32 @regmap_write(ptr noundef %regmap, i32 noundef 7, i32 noundef 1) #6
  %call35 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @adau1372_driver, ptr noundef nonnull @adau1372_dai_driver, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %adau1372_setup_pll.exit.thread, %if.then15, %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %2, %if.then8 ], [ %4, %if.then15 ], [ %call35, %sw.epilog ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i72, %adau1372_setup_pll.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adau1372_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg)
  %cmp = icmp eq i32 %reg, 6
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adau_calc_pll_cfg(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb1
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i1 [ false, %sw.bb1 ], [ true, %entry.sw.epilog.sink.split_crit_edge ]
  tail call fastcc void @adau1372_set_power(ptr noundef %3, i1 noundef zeroext %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
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
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adau1372_set_power(ptr nocapture noundef %adau1372, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %enabled = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !456
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %frombool)
  %cmp = icmp eq i8 %1, %frombool
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  br i1 %enable, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %mclk = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 8
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then5.clk_prepare_enable.exit_crit_edge

if.then5.clk_prepare_enable.exit_crit_edge:       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then5
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.then5.clk_prepare_enable.exit_crit_edge
  %pd_gpio = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 9
  %4 = ptrtoint ptr %pd_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pd_gpio, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %clk_prepare_enable.exit.if.end9_crit_edge, label %if.then7

clk_prepare_enable.exit.if.end9_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then7:                                         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %5, i32 noundef 0) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %clk_prepare_enable.exit.if.end9_crit_edge
  %switch_mode = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 2
  %6 = ptrtoint ptr %switch_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %switch_mode, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void %7(ptr noundef %9) #6
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %regmap = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %11, i1 noundef zeroext false) #6
  %use_pll = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 3
  %12 = ptrtoint ptr %use_pll to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %use_pll, align 4, !range !456
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool14.not = icmp eq i8 %13, 0
  br i1 %tobool14.not, label %if.end13.if.end16_crit_edge, label %if.then15

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !457
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i59 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i59, label %if.end.i60, label %if.then15.do.end.i_crit_edge

if.then15.do.end.i_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i60:                                       ; preds = %if.then15
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %and.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.1, label %if.end.i60.lor.lhs.false.i_crit_edge

if.end.i60.lor.lhs.false.i_crit_edge:             ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

do.body.i.1:                                      ; preds = %if.end.i60
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call2.i.1 = call i32 @regmap_read(ptr noundef %22, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %tobool.not.i59.1 = icmp eq i32 %call2.i.1, 0
  br i1 %tobool.not.i59.1, label %if.end.i60.1, label %do.body.i.1.do.end.i_crit_edge

do.body.i.1.do.end.i_crit_edge:                   ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i60.1:                                     ; preds = %do.body.i.1
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %and.i.1 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool3.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool3.not.i.1, label %do.body.i.2, label %if.end.i60.1.lor.lhs.false.i_crit_edge

if.end.i60.1.lor.lhs.false.i_crit_edge:           ; preds = %if.end.i60.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

do.body.i.2:                                      ; preds = %if.end.i60.1
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call2.i.2 = call i32 @regmap_read(ptr noundef %26, i32 noundef 6, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.2)
  %tobool.not.i59.2 = icmp eq i32 %call2.i.2, 0
  br i1 %tobool.not.i59.2, label %do.body.i.2.lor.lhs.false.i_crit_edge, label %do.body.i.2.do.end.i_crit_edge

do.body.i.2.do.end.i_crit_edge:                   ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.body.i.2.lor.lhs.false.i_crit_edge:            ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

do.end.i:                                         ; preds = %do.body.i.2.do.end.i_crit_edge, %do.body.i.1.do.end.i_crit_edge, %if.then15.do.end.i_crit_edge
  %call2.i.lcssa = phi i32 [ %call2.i, %if.then15.do.end.i_crit_edge ], [ %call2.i.1, %do.body.i.1.do.end.i_crit_edge ], [ %call2.i.2, %do.body.i.2.do.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.lcssa)
  %cmp4.i = icmp slt i32 %call2.i.lcssa, 0
  br i1 %cmp4.i, label %do.end.i.do.end10.i_crit_edge, label %do.end.i.lor.lhs.false.i_crit_edge

do.end.i.lor.lhs.false.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

do.end.i.do.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %do.end.i.lor.lhs.false.i_crit_edge, %do.body.i.2.lor.lhs.false.i_crit_edge, %if.end.i60.1.lor.lhs.false.i_crit_edge, %if.end.i60.lor.lhs.false.i_crit_edge
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %and5.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.do.end10.i_crit_edge, label %lor.lhs.false.i.adau1372_enable_pll.exit_crit_edge

lor.lhs.false.i.adau1372_enable_pll.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %adau1372_enable_pll.exit

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %lor.lhs.false.i.do.end10.i_crit_edge, %do.end.i.do.end10.i_crit_edge
  %dev.i = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 10
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.169) #9
  br label %adau1372_enable_pll.exit

adau1372_enable_pll.exit:                         ; preds = %do.end10.i, %lor.lhs.false.i.adau1372_enable_pll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end16

if.end16:                                         ; preds = %adau1372_enable_pll.exit, %if.end13.if.end16_crit_edge
  %clk_ctrl.0 = phi i32 [ 9, %adau1372_enable_pll.exit ], [ 1, %if.end13.if.end16_crit_edge ]
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i61 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 0, i32 noundef 9, i32 noundef %clk_ctrl.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regcache_sync(ptr noundef %34) #6
  br label %if.end32

if.else:                                          ; preds = %if.end
  %pd_gpio21 = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 9
  %35 = ptrtoint ptr %pd_gpio21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pd_gpio21, align 4
  %tobool22.not = icmp eq ptr %36, null
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value(ptr noundef nonnull %36, i32 noundef 1) #6
  %regmap25 = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 1
  %37 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap25, align 4
  tail call void @regcache_mark_dirty(ptr noundef %38) #6
  br label %if.end29

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %regmap27 = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 1
  %39 = ptrtoint ptr %regmap27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap27, align 4
  %call.i62 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 0, i32 noundef 129, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then23
  %mclk30 = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 8
  %41 = ptrtoint ptr %mclk30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mclk30, align 4
  tail call void @clk_disable(ptr noundef %42) #6
  tail call void @clk_unprepare(ptr noundef %42) #6
  %regmap31 = getelementptr inbounds %struct.adau1372, ptr %adau1372, i32 0, i32 1
  %43 = ptrtoint ptr %regmap31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap31, align 4
  tail call void @regcache_cache_only(ptr noundef %44, i1 noundef zeroext true) #6
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end16
  %45 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool, ptr %enabled, align 1
  br label %return

return:                                           ; preds = %if.end32, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = trunc i32 %fmt to i16
  %trunc = and i16 %4, -4096
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb1
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
  %.sink = phi i8 [ 0, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %sai1.0 = phi i32 [ 0, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %clock_provider2 = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %clock_provider2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %clock_provider2, align 2
  %and3 = lshr i32 %fmt, 8
  %7 = and i32 %and3, 15
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %7, label %sw.epilog.sw.epilog10_crit_edge [
    i32 4, label %sw.bb8
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
  ]

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or7 = or i32 %sai1.0, 2
  br label %sw.epilog10

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or9 = or i32 %sai1.0, 2
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb8, %sw.bb6, %sw.bb5, %sw.epilog.sw.epilog10_crit_edge
  %sai1.1 = phi i32 [ %or9, %sw.bb8 ], [ %or7, %sw.bb6 ], [ %sai1.0, %sw.bb5 ], [ %sai1.0, %sw.epilog.sw.epilog10_crit_edge ]
  %invert_lrclk.0.off0 = phi i1 [ true, %sw.bb8 ], [ false, %sw.bb6 ], [ true, %sw.bb5 ], [ false, %sw.epilog.sw.epilog10_crit_edge ]
  %and11 = and i32 %fmt, 15
  %9 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %and11, label %sw.epilog10.sw.epilog22_crit_edge [
    i32 5, label %sw.bb19
    i32 3, label %sw.bb14
    i32 4, label %sw.bb16
  ]

sw.epilog10.sw.epilog22_crit_edge:                ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22

sw.bb14:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #8
  %lnot = xor i1 %invert_lrclk.0.off0, true
  br label %sw.epilog22

sw.bb16:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #8
  %or18 = or i32 %sai1.1, 32
  br label %sw.epilog22

sw.bb19:                                          ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #8
  %or21 = or i32 %sai1.1, 32
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb19, %sw.bb16, %sw.bb14, %sw.epilog10.sw.epilog22_crit_edge
  %sai0.0 = phi i32 [ 64, %sw.bb19 ], [ 0, %sw.bb16 ], [ 64, %sw.bb14 ], [ 0, %sw.epilog10.sw.epilog22_crit_edge ]
  %sai1.2 = phi i32 [ %or21, %sw.bb19 ], [ %or18, %sw.bb16 ], [ %sai1.1, %sw.bb14 ], [ %sai1.1, %sw.epilog10.sw.epilog22_crit_edge ]
  %invert_lrclk.1.off0 = phi i1 [ %invert_lrclk.0.off0, %sw.bb19 ], [ %invert_lrclk.0.off0, %sw.bb16 ], [ %lnot, %sw.bb14 ], [ %invert_lrclk.0.off0, %sw.epilog10.sw.epilog22_crit_edge ]
  %or24 = or i32 %sai1.2, 16
  %spec.select = select i1 %invert_lrclk.1.off0, i32 %or24, i32 %sai1.2
  %regmap = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 50, i32 noundef 192, i32 noundef %sai0.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 51, i32 noundef 51, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog22 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %width) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp = icmp eq i32 %slots, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 50, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %mask = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 255, ptr %mask, align 4
  %slot_width = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %slot_width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %slot_width, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = or i32 %rx_mask, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %9 = icmp ult i32 %8, 256
  br i1 %9, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %width, label %if.end6.cleanup_crit_edge [
    i32 16, label %if.end6.sw.epilog_crit_edge
    i32 32, label %sw.bb7
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.end6.sw.epilog_crit_edge
  %sai1.0 = phi i32 [ 0, %sw.bb7 ], [ 64, %if.end6.sw.epilog_crit_edge ]
  %11 = zext i32 %slots to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %slots, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.epilog.sw.epilog22_crit_edge
    i32 4, label %sw.bb11
    i32 8, label %sw.bb18
  ]

sw.epilog.sw.epilog22_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb18, %sw.bb11, %sw.epilog.sw.epilog22_crit_edge
  %.sink = phi i32 [ 127, %sw.bb11 ], [ 23, %sw.bb18 ], [ 255, %sw.epilog.sw.epilog22_crit_edge ]
  %sai0.0 = phi i32 [ 32, %sw.bb11 ], [ 48, %sw.bb18 ], [ 16, %sw.epilog.sw.epilog22_crit_edge ]
  %mask16 = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %mask16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %mask16, align 4
  %slot_width23 = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %slot_width23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %width, ptr %slot_width23, align 4
  %regmap24 = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap24, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 50, i32 noundef 48, i32 noundef %sai0.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap24, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 51, i32 noundef 64, i32 noundef %sai1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap24, align 4
  %neg = xor i32 %tx_mask, -1
  %call29 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 52, i32 noundef %neg) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog22, %sw.epilog.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %sw.epilog22 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %. = select i1 %tobool.not, i32 0, i32 128
  %regmap = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 51, i32 noundef 128, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %rate_constraints = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 6
  %call1 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %5, i32 noundef 0, i32 noundef 11, ptr noundef %rate_constraints) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1372_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 48000, label %entry.if.end5_crit_edge
    i32 8000, label %if.end5.fold.split
    i32 12000, label %if.end5.fold.split34
    i32 16000, label %if.end5.fold.split35
    i32 24000, label %if.end5.fold.split36
    i32 32000, label %if.end5.fold.split37
    i32 96000, label %if.end5.fold.split38
    i32 192000, label %if.end5.fold.split39
  ]

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5.fold.split39:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.end5.fold.split39, %if.end5.fold.split38, %if.end5.fold.split37, %if.end5.fold.split36, %if.end5.fold.split35, %if.end5.fold.split34, %if.end5.fold.split, %entry.if.end5_crit_edge
  %i.032.lcssa = phi i32 [ 0, %entry.if.end5_crit_edge ], [ 1, %if.end5.fold.split ], [ 2, %if.end5.fold.split34 ], [ 3, %if.end5.fold.split35 ], [ 4, %if.end5.fold.split36 ], [ 5, %if.end5.fold.split37 ], [ 6, %if.end5.fold.split38 ], [ 7, %if.end5.fold.split39 ]
  %slot_width6 = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 7
  %7 = ptrtoint ptr %slot_width6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slot_width6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then8.if.then.i.i.i_crit_edge

if.then8.if.then.i.i.i_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then8.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then8.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %10, %if.then8.if.then.i.i.i_crit_edge ], [ %13, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !458
  %add.i.i.i = or i32 %11, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then8
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
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
  br label %if.end10

if.end10:                                         ; preds = %params_width.exit, %if.end5.if.end10_crit_edge
  %slot_width.0 = phi i32 [ %call1.i, %params_width.exit ], [ %8, %if.end5.if.end10_crit_edge ]
  %14 = zext i32 %slot_width.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %slot_width.0, label %if.end10.cleanup_crit_edge [
    i32 16, label %if.end10.sw.epilog_crit_edge
    i32 32, label %sw.bb11
  ]

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %if.end10.sw.epilog_crit_edge
  %sai1.0 = phi i32 [ 0, %sw.bb11 ], [ 4, %if.end10.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.adau1372, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 50, i32 noundef 15, i32 noundef %i.032.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 51, i32 noundef 4, i32 noundef %sai1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.end10.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 244)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 244)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !434, !435, !436, !437, !438, !439, !441, !443, !445}
!llvm.module.flags = !{!447, !448, !449, !450, !451, !452, !453, !454}
!llvm.ident = !{!455}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adau1372.c", i32 927, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/adau1372.c", i32 931, i32 51}
!4 = !{ptr @__ksymtab_adau1372_probe, !5, !"__ksymtab_adau1372_probe", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/adau1372.c", i32 988, i32 1}
!6 = !{ptr @adau1372_regmap_config, !7, !"adau1372_regmap_config", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/adau1372.c", i32 1048, i32 28}
!8 = !{ptr @__ksymtab_adau1372_regmap_config, !9, !"__ksymtab_adau1372_regmap_config", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/adau1372.c", i32 1058, i32 1}
!10 = !{ptr @__UNIQUE_ID_description238, !11, !"__UNIQUE_ID_description238", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/adau1372.c", i32 1060, i32 1}
!12 = !{ptr @__UNIQUE_ID_author239, !13, !"__UNIQUE_ID_author239", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/adau1372.c", i32 1061, i32 1}
!14 = !{ptr @__UNIQUE_ID_file240, !15, !"__UNIQUE_ID_file240", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/adau1372.c", i32 1062, i32 1}
!16 = !{ptr @__UNIQUE_ID_license241, !15, !"__UNIQUE_ID_license241", i1 false, i1 false}
!17 = !{ptr @adau1372_rates, !18, !"adau1372_rates", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/adau1372.c", i32 107, i32 27}
!19 = !{ptr @adau1372_driver, !20, !"adau1372_driver", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/adau1372.c", i32 854, i32 46}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/adau1372.c", i32 178, i32 2}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/adau1372.c", i32 180, i32 2}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/adau1372.c", i32 182, i32 2}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/adau1372.c", i32 184, i32 2}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/adau1372.c", i32 186, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/adau1372.c", i32 187, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/adau1372.c", i32 188, i32 2}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/adau1372.c", i32 189, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/adau1372.c", i32 191, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/adau1372.c", i32 192, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/adau1372.c", i32 194, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/adau1372.c", i32 196, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/adau1372.c", i32 198, i32 2}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/adau1372.c", i32 200, i32 2}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/adau1372.c", i32 202, i32 2}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/adau1372.c", i32 204, i32 2}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/adau1372.c", i32 206, i32 2}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/adau1372.c", i32 208, i32 2}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/adau1372.c", i32 210, i32 2}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/adau1372.c", i32 211, i32 2}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/adau1372.c", i32 212, i32 2}
!63 = !{ptr @.str.41, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/adau1372.c", i32 213, i32 2}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/adau1372.c", i32 215, i32 2}
!67 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/adau1372.c", i32 217, i32 2}
!69 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/adau1372.c", i32 219, i32 2}
!71 = !{ptr @.str.49, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/adau1372.c", i32 220, i32 2}
!73 = !{ptr @.str.51, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/adau1372.c", i32 222, i32 2}
!75 = !{ptr @.str.52, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/adau1372.c", i32 223, i32 2}
!77 = !{ptr @.str.53, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/adau1372.c", i32 224, i32 2}
!79 = !{ptr @.str.54, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/adau1372.c", i32 225, i32 2}
!81 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/adau1372.c", i32 226, i32 2}
!83 = !{ptr @.str.56, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/adau1372.c", i32 227, i32 2}
!85 = !{ptr @.str.57, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/adau1372.c", i32 228, i32 2}
!87 = !{ptr @adau1372_controls, !88, !"adau1372_controls", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/adau1372.c", i32 177, i32 38}
!89 = !{ptr @adau1372_digital_tlv, !90, !"adau1372_digital_tlv", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/adau1372.c", i32 127, i32 14}
!91 = !{ptr @adau1372_hpf0_1_enum, !92, !"adau1372_hpf0_1_enum", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/adau1372.c", i32 173, i32 8}
!93 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/adau1372.c", i32 167, i32 2}
!95 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/adau1372.c", i32 168, i32 2}
!97 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/adau1372.c", i32 169, i32 2}
!99 = !{ptr @.str.61, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/adau1372.c", i32 170, i32 2}
!101 = !{ptr @adau1372_hpf_text, !102, !"adau1372_hpf_text", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/adau1372.c", i32 166, i32 27}
!103 = !{ptr @adau1372_hpf2_3_enum, !104, !"adau1372_hpf2_3_enum", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/adau1372.c", i32 175, i32 8}
!105 = !{ptr @adau1372_pga_tlv, !106, !"adau1372_pga_tlv", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/adau1372.c", i32 128, i32 14}
!107 = !{ptr @adau1372_pga_boost_tlv, !108, !"adau1372_pga_boost_tlv", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/adau1372.c", i32 129, i32 14}
!109 = !{ptr @adau1372_bias_hp_enum, !110, !"adau1372_bias_hp_enum", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/adau1372.c", i32 149, i32 8}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/adau1372.c", i32 132, i32 2}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/adau1372.c", i32 132, i32 22}
!115 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/adau1372.c", i32 132, i32 46}
!117 = !{ptr @.str.65, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/adau1372.c", i32 133, i32 2}
!119 = !{ptr @adau1372_bias_text, !120, !"adau1372_bias_text", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/adau1372.c", i32 131, i32 27}
!121 = !{ptr @adau1372_bias_mic_enum, !122, !"adau1372_bias_mic_enum", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/adau1372.c", i32 161, i32 8}
!123 = !{ptr @adau1372_bias_afe0_1_enum, !124, !"adau1372_bias_afe0_1_enum", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/adau1372.c", i32 151, i32 8}
!125 = !{ptr @adau1372_bias_afe2_3_enum, !126, !"adau1372_bias_afe2_3_enum", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/adau1372.c", i32 159, i32 8}
!127 = !{ptr @adau1372_bias_adc0_1_enum, !128, !"adau1372_bias_adc0_1_enum", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/adau1372.c", i32 156, i32 8}
!129 = !{ptr @adau1372_bias_adc_text, !130, !"adau1372_bias_adc_text", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/adau1372.c", i32 140, i32 27}
!131 = !{ptr @adau1372_bias_adc_values, !132, !"adau1372_bias_adc_values", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/adau1372.c", i32 136, i32 27}
!133 = !{ptr @adau1372_bias_adc2_3_enum, !134, !"adau1372_bias_adc2_3_enum", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/adau1372.c", i32 153, i32 8}
!135 = !{ptr @adau1372_bias_dac_enum, !136, !"adau1372_bias_dac_enum", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/adau1372.c", i32 163, i32 8}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/adau1372.c", i32 145, i32 38}
!139 = !{ptr @adau1372_bias_dac_text, !140, !"adau1372_bias_dac_text", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/adau1372.c", i32 144, i32 27}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/adau1372.c", i32 363, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/adau1372.c", i32 364, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/adau1372.c", i32 365, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/adau1372.c", i32 366, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/adau1372.c", i32 367, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/adau1372.c", i32 368, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/adau1372.c", i32 370, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/adau1372.c", i32 371, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/adau1372.c", i32 373, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/adau1372.c", i32 374, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/adau1372.c", i32 375, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/adau1372.c", i32 376, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/adau1372.c", i32 377, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/adau1372.c", i32 378, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/adau1372.c", i32 379, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/adau1372.c", i32 380, i32 2}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/adau1372.c", i32 382, i32 2}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/adau1372.c", i32 383, i32 2}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/adau1372.c", i32 384, i32 2}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/adau1372.c", i32 385, i32 2}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/adau1372.c", i32 386, i32 2}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/adau1372.c", i32 387, i32 2}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/adau1372.c", i32 388, i32 2}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/adau1372.c", i32 389, i32 2}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/adau1372.c", i32 391, i32 2}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/adau1372.c", i32 392, i32 2}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/adau1372.c", i32 393, i32 2}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/adau1372.c", i32 394, i32 2}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/adau1372.c", i32 396, i32 2}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/adau1372.c", i32 397, i32 2}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/adau1372.c", i32 398, i32 2}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/adau1372.c", i32 399, i32 2}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/adau1372.c", i32 400, i32 2}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/adau1372.c", i32 402, i32 2}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/adau1372.c", i32 404, i32 2}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/adau1372.c", i32 406, i32 2}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/adau1372.c", i32 408, i32 2}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/adau1372.c", i32 410, i32 2}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/adau1372.c", i32 412, i32 2}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/adau1372.c", i32 414, i32 2}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/adau1372.c", i32 417, i32 2}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/adau1372.c", i32 418, i32 2}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/adau1372.c", i32 419, i32 2}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/adau1372.c", i32 420, i32 2}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/adau1372.c", i32 421, i32 2}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/adau1372.c", i32 422, i32 2}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/adau1372.c", i32 423, i32 2}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/adau1372.c", i32 424, i32 2}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/adau1372.c", i32 426, i32 2}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/adau1372.c", i32 427, i32 2}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/adau1372.c", i32 428, i32 2}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/adau1372.c", i32 429, i32 2}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/adau1372.c", i32 430, i32 2}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/adau1372.c", i32 431, i32 2}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/adau1372.c", i32 432, i32 2}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/adau1372.c", i32 433, i32 2}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/adau1372.c", i32 435, i32 2}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/adau1372.c", i32 436, i32 2}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/adau1372.c", i32 438, i32 2}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/adau1372.c", i32 439, i32 2}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/adau1372.c", i32 440, i32 2}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/adau1372.c", i32 441, i32 2}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/adau1372.c", i32 443, i32 2}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/adau1372.c", i32 444, i32 2}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/adau1372.c", i32 446, i32 2}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/adau1372.c", i32 447, i32 2}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/adau1372.c", i32 449, i32 2}
!275 = !{ptr @.str.134, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/adau1372.c", i32 450, i32 2}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/adau1372.c", i32 452, i32 2}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/adau1372.c", i32 453, i32 2}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/adau1372.c", i32 454, i32 2}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/adau1372.c", i32 455, i32 2}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/adau1372.c", i32 457, i32 2}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/adau1372.c", i32 458, i32 2}
!289 = !{ptr @adau1372_dapm_widgets, !290, !"adau1372_dapm_widgets", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/adau1372.c", i32 362, i32 41}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/adau1372.c", i32 240, i32 2}
!293 = !{ptr @adau1372_decimator0_1_mux_control, !294, !"adau1372_decimator0_1_mux_control", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/adau1372.c", i32 239, i32 38}
!295 = !{ptr @adau1372_decimator0_1_mux_enum, !296, !"adau1372_decimator0_1_mux_enum", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/adau1372.c", i32 236, i32 8}
!297 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/adau1372.c", i32 232, i32 2}
!299 = !{ptr @.str.144, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/adau1372.c", i32 233, i32 2}
!301 = !{ptr @adau1372_decimator_mux_text, !302, !"adau1372_decimator_mux_text", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/adau1372.c", i32 231, i32 27}
!303 = !{ptr @.str.145, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/adau1372.c", i32 246, i32 2}
!305 = !{ptr @adau1372_decimator2_3_mux_control, !306, !"adau1372_decimator2_3_mux_control", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/adau1372.c", i32 245, i32 38}
!307 = !{ptr @adau1372_decimator2_3_mux_enum, !308, !"adau1372_decimator2_3_mux_enum", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/adau1372.c", i32 242, i32 8}
!309 = !{ptr @.str.146, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/adau1372.c", i32 269, i32 2}
!311 = !{ptr @adau1372_asrco0_mux_control, !312, !"adau1372_asrco0_mux_control", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/adau1372.c", i32 268, i32 38}
!313 = !{ptr @adau1372_asrco0_mux_enum, !314, !"adau1372_asrco0_mux_enum", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/adau1372.c", i32 259, i32 8}
!315 = !{ptr @.str.147, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/adau1372.c", i32 253, i32 2}
!317 = !{ptr @.str.148, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/adau1372.c", i32 254, i32 2}
!319 = !{ptr @.str.149, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/adau1372.c", i32 255, i32 2}
!321 = !{ptr @.str.150, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/adau1372.c", i32 256, i32 2}
!323 = !{ptr @adau1372_asrco_mux_text, !324, !"adau1372_asrco_mux_text", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/adau1372.c", i32 252, i32 27}
!325 = !{ptr @adau1372_asrco_mux_values, !326, !"adau1372_asrco_mux_values", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/adau1372.c", i32 248, i32 27}
!327 = !{ptr @.str.151, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/adau1372.c", i32 271, i32 2}
!329 = !{ptr @adau1372_asrco1_mux_control, !330, !"adau1372_asrco1_mux_control", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/adau1372.c", i32 270, i32 38}
!331 = !{ptr @adau1372_asrco1_mux_enum, !332, !"adau1372_asrco1_mux_enum", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/adau1372.c", i32 261, i32 8}
!333 = !{ptr @.str.152, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/adau1372.c", i32 273, i32 2}
!335 = !{ptr @adau1372_asrco2_mux_control, !336, !"adau1372_asrco2_mux_control", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/adau1372.c", i32 272, i32 38}
!337 = !{ptr @adau1372_asrco2_mux_enum, !338, !"adau1372_asrco2_mux_enum", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/adau1372.c", i32 263, i32 8}
!339 = !{ptr @.str.153, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/adau1372.c", i32 275, i32 2}
!341 = !{ptr @adau1372_asrco3_mux_control, !342, !"adau1372_asrco3_mux_control", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/adau1372.c", i32 274, i32 38}
!343 = !{ptr @adau1372_asrco3_mux_enum, !344, !"adau1372_asrco3_mux_enum", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/adau1372.c", i32 265, i32 8}
!345 = !{ptr @adau1372_sout0_mux_control, !346, !"adau1372_sout0_mux_control", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/adau1372.c", i32 313, i32 38}
!347 = !{ptr @adau1372_sout0_mux_enum, !348, !"adau1372_sout0_mux_enum", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/adau1372.c", i32 296, i32 8}
!349 = !{ptr @.str.154, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/adau1372.c", i32 282, i32 2}
!351 = !{ptr @.str.155, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/adau1372.c", i32 283, i32 2}
!353 = !{ptr @.str.156, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/adau1372.c", i32 284, i32 2}
!355 = !{ptr @.str.157, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/adau1372.c", i32 285, i32 2}
!357 = !{ptr @adau1372_sout_mux_text, !358, !"adau1372_sout_mux_text", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/adau1372.c", i32 281, i32 27}
!359 = !{ptr @adau1372_sout_mux_values, !360, !"adau1372_sout_mux_values", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/adau1372.c", i32 277, i32 27}
!361 = !{ptr @adau1372_sout1_mux_control, !362, !"adau1372_sout1_mux_control", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/adau1372.c", i32 315, i32 38}
!363 = !{ptr @adau1372_sout1_mux_enum, !364, !"adau1372_sout1_mux_enum", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/adau1372.c", i32 298, i32 8}
!365 = !{ptr @adau1372_sout2_mux_control, !366, !"adau1372_sout2_mux_control", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/adau1372.c", i32 317, i32 38}
!367 = !{ptr @adau1372_sout2_mux_enum, !368, !"adau1372_sout2_mux_enum", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/adau1372.c", i32 300, i32 8}
!369 = !{ptr @adau1372_sout3_mux_control, !370, !"adau1372_sout3_mux_control", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/adau1372.c", i32 319, i32 38}
!371 = !{ptr @adau1372_sout3_mux_enum, !372, !"adau1372_sout3_mux_enum", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/adau1372.c", i32 302, i32 8}
!373 = !{ptr @adau1372_sout4_mux_control, !374, !"adau1372_sout4_mux_control", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/adau1372.c", i32 321, i32 38}
!375 = !{ptr @adau1372_sout4_mux_enum, !376, !"adau1372_sout4_mux_enum", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/adau1372.c", i32 304, i32 8}
!377 = !{ptr @adau1372_sout5_mux_control, !378, !"adau1372_sout5_mux_control", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/adau1372.c", i32 323, i32 38}
!379 = !{ptr @adau1372_sout5_mux_enum, !380, !"adau1372_sout5_mux_enum", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/adau1372.c", i32 306, i32 8}
!381 = !{ptr @adau1372_sout6_mux_control, !382, !"adau1372_sout6_mux_control", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/adau1372.c", i32 325, i32 38}
!383 = !{ptr @adau1372_sout6_mux_enum, !384, !"adau1372_sout6_mux_enum", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/adau1372.c", i32 308, i32 8}
!385 = !{ptr @adau1372_sout7_mux_control, !386, !"adau1372_sout7_mux_control", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/adau1372.c", i32 327, i32 38}
!387 = !{ptr @adau1372_sout7_mux_enum, !388, !"adau1372_sout7_mux_enum", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/adau1372.c", i32 310, i32 8}
!389 = !{ptr @.str.158, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/adau1372.c", i32 341, i32 2}
!391 = !{ptr @adau1372_asrci_mux_control, !392, !"adau1372_asrci_mux_control", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/adau1372.c", i32 340, i32 38}
!393 = !{ptr @adau1372_asrci_mux_enum, !394, !"adau1372_asrci_mux_enum", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/adau1372.c", i32 337, i32 8}
!395 = !{ptr @.str.159, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/adau1372.c", i32 331, i32 2}
!397 = !{ptr @.str.160, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/adau1372.c", i32 332, i32 2}
!399 = !{ptr @.str.161, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/adau1372.c", i32 333, i32 2}
!401 = !{ptr @.str.162, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/adau1372.c", i32 334, i32 2}
!403 = !{ptr @adau1372_asrci_mux_text, !404, !"adau1372_asrci_mux_text", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/adau1372.c", i32 330, i32 27}
!405 = !{ptr @.str.163, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/adau1372.c", i32 358, i32 2}
!407 = !{ptr @adau1372_dac0_mux_control, !408, !"adau1372_dac0_mux_control", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/adau1372.c", i32 357, i32 38}
!409 = !{ptr @adau1372_dac0_mux_enum, !410, !"adau1372_dac0_mux_enum", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/adau1372.c", i32 352, i32 8}
!411 = !{ptr @.str.164, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/adau1372.c", i32 348, i32 2}
!413 = !{ptr @.str.165, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/adau1372.c", i32 349, i32 2}
!415 = !{ptr @adau1372_dac_mux_text, !416, !"adau1372_dac_mux_text", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/adau1372.c", i32 347, i32 27}
!417 = !{ptr @adau1372_dac_mux_values, !418, !"adau1372_dac_mux_values", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/adau1372.c", i32 343, i32 27}
!419 = !{ptr @.str.166, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/adau1372.c", i32 360, i32 2}
!421 = !{ptr @adau1372_dac1_mux_control, !422, !"adau1372_dac1_mux_control", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/adau1372.c", i32 359, i32 38}
!423 = !{ptr @adau1372_dac1_mux_enum, !424, !"adau1372_dac1_mux_enum", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/adau1372.c", i32 354, i32 8}
!425 = !{ptr @.str.167, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/adau1372.c", i32 523, i32 2}
!427 = !{ptr @.str.168, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/adau1372.c", i32 532, i32 28}
!429 = !{ptr @adau1372_dapm_routes, !430, !"adau1372_dapm_routes", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/adau1372.c", i32 483, i32 40}
!431 = !{ptr @.str.169, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/adau1372.c", i32 781, i32 3}
!433 = !{ptr @.str.170, !432, !"<string literal>", i1 false, i1 false}
!434 = !{ptr @.str.171, !432, !"<string literal>", i1 false, i1 false}
!435 = !{ptr @.str.172, !432, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @.str.173, !432, !"<string literal>", i1 false, i1 false}
!437 = !{ptr @adau1372_enable_pll._entry, !432, !"_entry", i1 false, i1 false}
!438 = !{ptr @adau1372_enable_pll._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.174, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/adau1372.c", i32 875, i32 10}
!441 = !{ptr @adau1372_dai_driver, !442, !"adau1372_dai_driver", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/adau1372.c", i32 874, i32 34}
!443 = !{ptr @adau1372_dai_ops, !444, !"adau1372_dai_ops", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/adau1372.c", i32 864, i32 37}
!445 = !{ptr @adau1372_reg_defaults, !446, !"adau1372_reg_defaults", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/adau1372.c", i32 990, i32 33}
!447 = !{i32 1, !"wchar_size", i32 2}
!448 = !{i32 1, !"min_enum_size", i32 4}
!449 = !{i32 8, !"branch-target-enforcement", i32 0}
!450 = !{i32 8, !"sign-return-address", i32 0}
!451 = !{i32 8, !"sign-return-address-all", i32 0}
!452 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!453 = !{i32 7, !"uwtable", i32 1}
!454 = !{i32 7, !"frame-pointer", i32 2}
!455 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!456 = !{i8 0, i8 2}
!457 = !{!"auto-init"}
!458 = !{i32 0, i32 33}
