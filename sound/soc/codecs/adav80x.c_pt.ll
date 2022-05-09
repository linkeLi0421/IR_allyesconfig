; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adav80x.c_pt.bc'
source_filename = "../sound/soc/codecs/adav80x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adav80x_bus_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adav80x_bus_probe\09\09\09\09"
module asm "\09.long\09__crc_adav80x_bus_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adav80x_bus_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adav80x_bus_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adav80x_bus_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adav80x_regmap_config\22, \22a\22\09"
module asm "\09.weak\09__crc_adav80x_regmap_config\09\09\09\09"
module asm "\09.long\09__crc_adav80x_regmap_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adav80x_regmap_config:\09\09\09\09\09"
module asm "\09.asciz \09\22adav80x_regmap_config\22\09\09\09\09\09"
module asm "__kstrtabns_adav80x_regmap_config:\09\09\09\09\09"
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.adav80x = type { ptr, i32, i32, i32, [2 x i32], i32, i8, [3 x i8] }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
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

@adav80x_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @adav80x_controls, i32 7, ptr @adav80x_dapm_widgets, i32 19, ptr @adav80x_dapm_routes, i32 29, ptr @adav80x_probe, ptr null, ptr null, ptr @adav80x_resume, ptr null, ptr null, ptr null, ptr null, ptr @adav80x_set_sysclk, ptr @adav80x_set_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adav80x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@adav80x_dais = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.38, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adav80x_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.17, i64 1168231104580, i32 1152, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.19, i64 1168231104580, i32 2016, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.39, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adav80x_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.21, i64 1168231104580, i32 1152, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.23, i64 1168231104580, i32 2016, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@__kstrtab_adav80x_bus_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adav80x_bus_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adav80x_bus_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adav80x_bus_probe to i32), ptr @__kstrtab_adav80x_bus_probe, ptr @__kstrtabns_adav80x_bus_probe }, section "___ksymtab_gpl+adav80x_bus_probe", align 4
@adav80x_reg_defaults = internal constant { [23 x %struct.reg_default], [40 x i8] } { [23 x %struct.reg_default] [%struct.reg_default { i32 4, i32 1 }, %struct.reg_default { i32 5, i32 1 }, %struct.reg_default { i32 6, i32 2 }, %struct.reg_default { i32 7, i32 1 }, %struct.reg_default { i32 98, i32 192 }, %struct.reg_default { i32 99, i32 17 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 104, i32 255 }, %struct.reg_default { i32 105, i32 255 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 255 }, %struct.reg_default { i32 113, i32 255 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 122, i32 0 }], [40 x i8] zeroinitializer }, align 32
@adav80x_regmap_config = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 7, i32 0, i32 1, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 122, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adav80x_reg_defaults, i32 23, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_adav80x_regmap_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_adav80x_regmap_config = external dso_local constant [0 x i8], align 1
@__ksymtab_adav80x_regmap_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adav80x_regmap_config to i32), ptr @__kstrtab_adav80x_regmap_config, ptr @__kstrtabns_adav80x_regmap_config }, section "___ksymtab_gpl+adav80x_regmap_config", align 4
@__UNIQUE_ID_description238 = internal constant [48 x i8] c"snd_soc_adav80x.description=ASoC ADAV80x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [60 x i8] c"snd_soc_adav80x.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [49 x i8] c"snd_soc_adav80x.author=Yi Li <yi.li@analog.com>>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [54 x i8] c"snd_soc_adav80x.file=sound/soc/codecs/snd-soc-adav80x\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [28 x i8] c"snd_soc_adav80x.license=GPL\00", section ".modinfo", align 1
@adav80x_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adav80x_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adav80x_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @adav80x_inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @adav80x_get_deemph, ptr @adav80x_put_deemph, %union.anon.83 zeroinitializer, i32 0 }], [80 x i8] zeroinitializer }, align 32
@adav80x_dapm_routes = internal constant { [29 x %struct.snd_soc_dapm_route], [380 x i8] } { [29 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.26, ptr @.str.13, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr @.str.37, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr @.str.23, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr @.str.13, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr @.str.37, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr @.str.23, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.13, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.37, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr @.str.23, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.12, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.12, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr null, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.15, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.14, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.32, ptr @adav80x_dapm_sysclk_check, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.33, ptr @adav80x_dapm_sysclk_check, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.34, ptr @adav80x_dapm_sysclk_check, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.34, ptr @adav80x_dapm_pll_check, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.34, ptr @adav80x_dapm_pll_check, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.13, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.12, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }], [380 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@adav80x_digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -9563, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 104, i32 105, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 112, i32 113, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGA Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adav80x_inpga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 48, i32 48, i32 108, i32 109, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 100, i32 100, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 110, i32 110, i32 2, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADC High Pass Filter Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 110, i32 110, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Playback De-emphasis Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFIN\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIFAUXOUT\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Aux Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIFAUXIN\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Aux Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Select\00", [45 x i8] zeroinitializer }, align 32
@adav80x_aux_capture_mux_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adav80x_aux_capture_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Select\00", [17 x i8] zeroinitializer }, align 32
@adav80x_capture_mux_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adav80x_capture_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Select\00", [21 x i8] zeroinitializer }, align 32
@adav80x_dac_mux_ctrl = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @adav80x_dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VINR\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VINL\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VOUTR\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VOUTL\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSCLK\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL2\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OSC\00", [28 x i8] zeroinitializer }, align 32
@adav80x_dapm_widgets = internal constant { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [836 x i8] } { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.12, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 100, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 110, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.14, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 110, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.15, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 110, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.16, ptr @.str.17, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.18, ptr @.str.19, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.20, ptr @.str.21, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.22, ptr @.str.23, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adav80x_aux_capture_mux_ctrl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adav80x_capture_mux_ctrl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adav80x_dac_mux_ctrl, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 116, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 116, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 116, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [836 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@adav80x_aux_capture_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 98, i8 0, i8 7, i32 3, i32 3, ptr @adav80x_mux_text, ptr @adav80x_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adav80x_mux_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.13, ptr @.str.37, ptr @.str.23], [20 x i8] zeroinitializer }, align 32
@adav80x_mux_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 2, i32 3], [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@adav80x_capture_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 98, i8 3, i8 7, i32 3, i32 3, ptr @adav80x_mux_text, ptr @adav80x_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adav80x_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 99, i8 3, i8 7, i32 3, i32 3, ptr @adav80x_mux_text, ptr @adav80x_mux_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adav80x-hifi\00", [19 x i8] zeroinitializer }, align 32
@adav80x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @adav80x_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adav80x_dai_startup, ptr @adav80x_dai_shutdown, ptr @adav80x_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adav80x-aux\00", [20 x i8] zeroinitializer }, align 32
@adav80x_port_ctrl_regs = internal constant { [2 x [2 x i32]], [16 x i8] } { [2 x [2 x i32]] [[2 x i32] [i32 6, i32 4], [2 x i32] [i32 7, i32 5]], [16 x i8] zeroinitializer }, align 32
@switch.table.adav80x_hw_params = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 7, i32 7, i32 6, i32 7, i32 5, i32 7, i32 7, i32 7, i32 4], [60 x i8] zeroinitializer }, align 32
@switch.table.adav80x_hw_params.40 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 12, i32 12, i32 8, i32 12, i32 4, i32 12, i32 12, i32 12, i32 0], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 27000000, i64 54000000]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 8192000, i64 11289600, i64 12288000]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 32, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 32, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000]
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"adav80x_component_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 829, i32 46 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"adav80x_dais\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 762, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"adav80x_reg_defaults\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 115, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"adav80x_regmap_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 867, i32 28 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"adav80x_controls\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 342, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"adav80x_dapm_routes\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 245, i32 40 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 343, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"adav80x_digital_tlv\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 340, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 345, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 348, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"adav80x_inpga_tlv\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 339, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 351, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 352, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 354, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 356, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 184, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 185, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 187, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 188, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 190, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 191, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 193, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 194, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 196, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [29 x i8] c"adav80x_aux_capture_mux_ctrl\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 173, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 197, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"adav80x_capture_mux_ctrl\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 175, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 198, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"adav80x_dac_mux_ctrl\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 177, i32 38 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 200, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 201, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 202, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 203, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 205, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 206, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 207, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 208, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"adav80x_dapm_widgets\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 183, i32 41 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 174, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [25 x i8] c"adav80x_aux_capture_enum\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 169, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"adav80x_mux_text\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 154, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant [19 x i8] c"adav80x_mux_values\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 160, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 156, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"adav80x_capture_enum\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 170, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"adav80x_dac_enum\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 171, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 764, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"adav80x_dai_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 746, i32 37 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 783, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [23 x i8] c"adav80x_port_ctrl_regs\00", align 1
@___asan_gen_.212 = private constant [30 x i8] c"../sound/soc/codecs/adav80x.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 360, i32 21 }
@___asan_gen_.214 = private unnamed_addr constant [31 x i8] c"switch.table.adav80x_hw_params\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [34 x i8] c"switch.table.adav80x_hw_params.40\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__ksymtab_adav80x_bus_probe, ptr @__ksymtab_adav80x_regmap_config, ptr @adav80x_component_driver, ptr @adav80x_dais, ptr @adav80x_reg_defaults, ptr @adav80x_regmap_config, ptr @adav80x_controls, ptr @adav80x_dapm_routes, ptr @.str, ptr @adav80x_digital_tlv, ptr @.compoundliteral, ptr @.str.1, ptr @.compoundliteral.2, ptr @.str.3, ptr @adav80x_inpga_tlv, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @adav80x_aux_capture_mux_ctrl, ptr @.str.25, ptr @adav80x_capture_mux_ctrl, ptr @.str.26, ptr @adav80x_dac_mux_ctrl, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @adav80x_dapm_widgets, ptr @.str.36, ptr @adav80x_aux_capture_enum, ptr @adav80x_mux_text, ptr @adav80x_mux_values, ptr @.str.37, ptr @adav80x_capture_enum, ptr @adav80x_dac_enum, ptr @.str.38, ptr @adav80x_dai_ops, ptr @.str.39, ptr @adav80x_port_ctrl_regs, ptr @switch.table.adav80x_hw_params, ptr @switch.table.adav80x_hw_params.40], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_dais to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_reg_defaults to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_dapm_routes to i32), i32 1508, i32 1888, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_inpga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_aux_capture_mux_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_capture_mux_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_dac_mux_ctrl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_dapm_widgets to i32), i32 3420, i32 4256, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_aux_capture_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_mux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_mux_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_capture_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adav80x_port_ctrl_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adav80x_hw_params to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adav80x_hw_params.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adav80x_bus_probe(ptr noundef %dev, ptr noundef %regmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %regmap, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %regmap to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %regmap, ptr %call.i, align 4
  %call6 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @adav80x_component_driver, ptr noundef nonnull @adav80x_dais, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call6, %if.end4 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call2 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.32) #7
  %call3 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.33) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 122, i32 noundef 32) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 102, i32 noundef 6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_resume(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @regcache_sync(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_set_sysclk(ptr noundef %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp = icmp eq i32 %dir, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %if.then.cleanup50_crit_edge [
    i32 0, label %if.then.sw.epilog_crit_edge
    i32 6, label %if.then.sw.epilog_crit_edge90
    i32 1, label %if.then.sw.epilog_crit_edge91
    i32 2, label %if.then.sw.epilog_crit_edge92
    i32 3, label %if.then.sw.epilog_crit_edge93
  ]

if.then.sw.epilog_crit_edge93:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.sw.epilog_crit_edge92:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.sw.epilog_crit_edge91:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.sw.epilog_crit_edge90:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.cleanup50_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

sw.epilog:                                        ; preds = %if.then.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge90, %if.then.sw.epilog_crit_edge91, %if.then.sw.epilog_crit_edge92, %if.then.sw.epilog_crit_edge93
  %sysclk = getelementptr inbounds %struct.adav80x, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %freq, ptr %sysclk, align 4
  %clk_src = getelementptr inbounds %struct.adav80x, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clk_id)
  %cmp2.not = icmp eq i32 %7, %clk_id
  br i1 %cmp2.not, label %sw.epilog.cleanup50_crit_edge, label %if.then3

sw.epilog.cleanup50_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.then3:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clk_src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %clk_id, ptr %clk_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %clk_id)
  %cmp5 = icmp eq i32 %clk_id, 6
  %spec.store.select = select i1 %cmp5, i32 0, i32 %clk_id
  %shl = shl nuw nsw i32 %spec.store.select, 5
  %shl7 = shl nuw nsw i32 %spec.store.select, 2
  %or = or i32 %shl7, %spec.store.select
  %or8 = or i32 %or, %shl
  %shl9 = shl nuw nsw i32 %spec.store.select, 3
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 118, i32 noundef %or8) #7
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 119, i32 noundef %shl9) #7
  %call13 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  br label %cleanup50

if.else:                                          ; preds = %entry
  %clk_id.off = add i32 %clk_id, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id.off)
  %switch = icmp ult i32 %clk_id.off, 3
  br i1 %switch, label %sw.epilog17, label %if.else.cleanup50_crit_edge

if.else.cleanup50_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

sw.epilog17:                                      ; preds = %if.else
  %sub18 = sub nuw nsw i32 8, %clk_id
  %shl19 = shl nuw nsw i32 1, %sub18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %cmp20 = icmp eq i32 %freq, 0
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %shl19. = select i1 %cmp20, i32 %shl19, i32 0
  %. = zext i1 %cmp20 to i8
  %call.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 122, i32 noundef %shl19, i32 noundef %shl19., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = getelementptr %struct.adav80x, ptr %3, i32 0, i32 7, i32 %clk_id.off
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %., ptr %15, align 1
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17, i32 4
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %18, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #7
  %sysclk_pd30 = getelementptr inbounds %struct.adav80x, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %sysclk_pd30 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sysclk_pd30, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.32) #7
  br label %if.end36

if.else34:                                        ; preds = %sw.epilog17
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.32) #7
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then32
  %arrayidx38 = getelementptr %struct.adav80x, ptr %3, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool39.not = icmp eq i8 %22, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %if.end36.if.then43_crit_edge

if.end36.if.then43_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end36
  %arrayidx41 = getelementptr %struct.adav80x, ptr %3, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx41, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool42.not = icmp eq i8 %24, 0
  br i1 %tobool42.not, label %if.else45, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end36.if.then43_crit_edge
  %call44 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.33) #7
  br label %if.end47

if.else45:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef %dapm.i, ptr noundef nonnull @.str.33) #7
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then43
  %call48 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm.i) #7
  %25 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i88 = getelementptr inbounds %struct.snd_soc_card, ptr %26, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i88) #7
  br label %cleanup50

cleanup50:                                        ; preds = %if.end47, %if.else.cleanup50_crit_edge, %if.then3, %sw.epilog.cleanup50_crit_edge, %if.then.cleanup50_crit_edge
  %retval.1 = phi i32 [ -22, %if.then.cleanup50_crit_edge ], [ -22, %if.else.cleanup50_crit_edge ], [ 0, %if.end47 ], [ 0, %sw.epilog.cleanup50_crit_edge ], [ 0, %if.then3 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_set_pll(ptr noundef %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %source)
  %switch = icmp ult i32 %source, 3
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool.not = icmp eq i32 %freq_out, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %4 = zext i32 %freq_in to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %freq_in, label %if.end.cleanup_crit_edge [
    i32 27000000, label %if.end.sw.epilog6_crit_edge
    i32 54000000, label %sw.bb2
  ]

if.end.sw.epilog6_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %source)
  %cmp = icmp eq i32 %source, 0
  br i1 %cmp, label %sw.bb2.sw.epilog6_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.sw.epilog6_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb2.sw.epilog6_crit_edge, %if.end.sw.epilog6_crit_edge
  %pll_ctrl1.0 = phi i32 [ 0, %if.end.sw.epilog6_crit_edge ], [ 16, %sw.bb2.sw.epilog6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288000, i32 %freq_out)
  %cmp7 = icmp ugt i32 %freq_out, 12288000
  %mul = shl i32 %pll_id, 2
  %shl = shl nuw i32 1, %mul
  %div70 = zext i1 %cmp7 to i32
  %freq_out.addr.0 = lshr i32 %freq_out, %div70
  %pll_ctrl2.0 = select i1 %cmp7, i32 %shl, i32 0
  %5 = zext i32 %freq_out.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %freq_out.addr.0, label %sw.epilog6.cleanup_crit_edge [
    i32 8192000, label %sw.bb11
    i32 11289600, label %sw.bb15
    i32 12288000, label %sw.epilog6.sw.epilog24_crit_edge
  ]

sw.epilog6.sw.epilog24_crit_edge:                 ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog24

sw.epilog6.cleanup_crit_edge:                     ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %shl13 = shl i32 8, %mul
  %or14 = or i32 %pll_ctrl2.0, %shl13
  br label %sw.epilog24

sw.bb15:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %shl17 = shl i32 12, %mul
  %or18 = or i32 %pll_ctrl2.0, %shl17
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb15, %sw.bb11, %sw.epilog6.sw.epilog24_crit_edge
  %pll_ctrl2.1 = phi i32 [ %or18, %sw.bb15 ], [ %or14, %sw.bb11 ], [ %pll_ctrl2.0, %sw.epilog6.sw.epilog24_crit_edge ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 116, i32 noundef 16, i32 noundef %pll_ctrl1.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %shl28 = shl i32 15, %mul
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 117, i32 noundef %shl28, i32 noundef %pll_ctrl2.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %pll_src30 = getelementptr inbounds %struct.adav80x, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %pll_src30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_src30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %source)
  %cmp31.not = icmp eq i32 %11, %source
  br i1 %cmp31.not, label %sw.epilog24.cleanup_crit_edge, label %if.then32

sw.epilog24.cleanup_crit_edge:                    ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %source)
  %cmp33 = icmp eq i32 %source, 2
  %shl35 = shl i32 64, %pll_id
  %pll_src.0 = select i1 %cmp33, i32 %shl35, i32 0
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 120, i32 noundef %shl35, i32 noundef %pll_src.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = ptrtoint ptr %pll_src30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %source, ptr %pll_src30, align 4
  %call41 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %sw.epilog24.cleanup_crit_edge, %sw.epilog6.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog6.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %sw.epilog24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink9 = phi i32 [ 128, %sw.bb2 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 100, i32 noundef 128, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adav80x_get_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %deemph = getelementptr inbounds %struct.adav80x, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %deemph to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %deemph, align 4, !range !124
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_put_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool = icmp ne i32 %1, 0
  %deemph2 = getelementptr inbounds %struct.adav80x, ptr %7, i32 0, i32 6
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %deemph2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %deemph2, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.adav80x, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %deemph.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.adav80x_set_deemph.exit_crit_edge, label %if.then.i

if.end.adav80x_set_deemph.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

if.then.i:                                        ; preds = %if.end
  %rate.i = getelementptr inbounds %struct.adav80x, ptr %12, i32 0, i32 5
  %15 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %16, label %sw.default.i [
    i32 32000, label %if.then.i.adav80x_set_deemph.exit_crit_edge
    i32 44100, label %sw.bb1.i
    i32 48000, label %if.then.i.sw.bb2.i_crit_edge
    i32 64000, label %if.then.i.sw.bb2.i_crit_edge8
    i32 88200, label %if.then.i.sw.bb2.i_crit_edge9
    i32 96000, label %if.then.i.sw.bb2.i_crit_edge10
  ]

if.then.i.sw.bb2.i_crit_edge10:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge9:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge8:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.then.i.sw.bb2.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.then.i.adav80x_set_deemph.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

sw.bb2.i:                                         ; preds = %if.then.i.sw.bb2.i_crit_edge, %if.then.i.sw.bb2.i_crit_edge8, %if.then.i.sw.bb2.i_crit_edge9, %if.then.i.sw.bb2.i_crit_edge10
  br label %adav80x_set_deemph.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

adav80x_set_deemph.exit:                          ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.then.i.adav80x_set_deemph.exit_crit_edge, %if.end.adav80x_set_deemph.exit_crit_edge
  %val.0.i = phi i32 [ 0, %sw.default.i ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 2, %if.then.i.adav80x_set_deemph.exit_crit_edge ], [ 0, %if.end.adav80x_set_deemph.exit_crit_edge ]
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 101, i32 noundef 1, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %adav80x_set_deemph.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %adav80x_set_deemph.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adav80x_dapm_sysclk_check(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %clk_src = getelementptr inbounds %struct.adav80x, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_src, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %sw.bb2
    i32 6, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %clk.0 = phi ptr [ @.str.34, %sw.bb3 ], [ @.str.33, %sw.bb2 ], [ @.str.32, %entry.sw.epilog_crit_edge ]
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull %clk.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adav80x_dapm_pll_check(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %pll_src = getelementptr inbounds %struct.adav80x, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pll_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pll_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %capture.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 32, %sw.bb ]
  %playback.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 16, %sw.bb ]
  %and3 = and i32 %fmt, 15
  %8 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %and3, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 3, label %sw.epilog.sw.epilog14_crit_edge
    i32 2, label %sw.bb10
  ]

sw.epilog.sw.epilog14_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or5 = or i32 %capture.0, 1
  %or6 = or i32 %playback.0, 1
  br label %sw.epilog14

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %capture.0, 3
  %or12 = or i32 %playback.0, 4
  br label %sw.epilog14

sw.epilog14:                                      ; preds = %sw.bb10, %sw.bb4, %sw.epilog.sw.epilog14_crit_edge
  %capture.1 = phi i32 [ %or11, %sw.bb10 ], [ %or5, %sw.bb4 ], [ %capture.0, %sw.epilog.sw.epilog14_crit_edge ]
  %playback.1 = phi i32 [ %or12, %sw.bb10 ], [ %or6, %sw.bb4 ], [ %playback.0, %sw.epilog.sw.epilog14_crit_edge ]
  %and15 = and i32 %fmt, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cond = icmp eq i32 %and15, 0
  br i1 %cond, label %sw.epilog17, label %sw.epilog14.cleanup_crit_edge

sw.epilog14.cleanup_crit_edge:                    ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog17:                                      ; preds = %sw.epilog14
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [2 x [2 x i32]], ptr @adav80x_port_ctrl_regs, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %14, i32 noundef 35, i32 noundef %capture.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %arrayidx23 = getelementptr [2 x [2 x i32]], ptr @adav80x_port_ctrl_regs, i32 0, i32 %18, i32 1
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %20, i32 noundef %playback.1) #7
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %arrayidx27 = getelementptr %struct.adav80x, ptr %5, i32 0, i32 4, i32 %22
  %23 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and3, ptr %arrayidx27, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog17, %sw.epilog14.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog17 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %rate = getelementptr inbounds %struct.adav80x, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %11, i32 noundef 11, i32 noundef %9, i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @adav80x_dai_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %rate = getelementptr inbounds %struct.adav80x, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adav80x_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %7, 8
  %sysclk = getelementptr inbounds %struct.adav80x, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %9)
  %cmp.not = icmp eq i32 %mul, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %arrayidx.i = getelementptr %struct.adav80x, ptr %5, i32 0, i32 4, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then4.adav80x_set_playback_pcm_format.exit_crit_edge

if.then4.adav80x_set_playback_pcm_format.exit_crit_edge: ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_playback_pcm_format.exit

if.end.i:                                         ; preds = %if.then4
  %arrayidx.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.end.i.if.then.i.i.i.i_crit_edge

if.end.i.if.then.i.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %if.end.i.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %17, %if.end.i.if.then.i.i.i.i_crit_edge ], [ %20, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #7, !range !125
  %add.i.i.i.i = or i32 %18, %i.09.lcssa.i.i.i.i
  br label %params_width.exit.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_width.exit.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_width.exit.i_crit_edge:    ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit.i

params_width.exit.i:                              ; preds = %for.inc.i.i.i.i.params_width.exit.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_width.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i) #7
  %switch.tableidx = add i32 %call1.i.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %21 = icmp ult i32 %switch.tableidx, 9
  br i1 %21, label %switch.hole_check, label %params_width.exit.i.adav80x_set_playback_pcm_format.exit_crit_edge

params_width.exit.i.adav80x_set_playback_pcm_format.exit_crit_edge: ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_playback_pcm_format.exit

switch.hole_check:                                ; preds = %params_width.exit.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %22 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %switch.lobit.not = icmp eq i16 %22, 0
  br i1 %switch.lobit.not, label %switch.hole_check.adav80x_set_playback_pcm_format.exit_crit_edge, label %switch.lookup

switch.hole_check.adav80x_set_playback_pcm_format.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_playback_pcm_format.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.adav80x_hw_params, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %arrayidx7.i = getelementptr [2 x [2 x i32]], ptr @adav80x_port_ctrl_regs, i32 0, i32 %27, i32 1
  %28 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef %29, i32 noundef 7, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %adav80x_set_playback_pcm_format.exit

adav80x_set_playback_pcm_format.exit:             ; preds = %switch.lookup, %switch.hole_check.adav80x_set_playback_pcm_format.exit_crit_edge, %params_width.exit.i.adav80x_set_playback_pcm_format.exit_crit_edge, %if.then4.adav80x_set_playback_pcm_format.exit_crit_edge
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i28 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %driver_data.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %7)
  %cmp.i = icmp ult i32 %7, 48001
  %..i = select i1 %cmp.i, i32 0, i32 96
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call.i.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 101, i32 noundef 240, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end9

if.else:                                          ; preds = %if.end
  %arrayidx.i.i.i.i32 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i.i33 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i.i33, label %for.inc.i.i.i.i40, label %if.else.if.then.i.i.i.i37_crit_edge

if.else.if.then.i.i.i.i37_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i37

if.then.i.i.i.i37:                                ; preds = %for.inc.i.i.i.i40.if.then.i.i.i.i37_crit_edge, %if.else.if.then.i.i.i.i37_crit_edge
  %i.09.lcssa.i.i.i.i34 = phi i32 [ 0, %if.else.if.then.i.i.i.i37_crit_edge ], [ 32, %for.inc.i.i.i.i40.if.then.i.i.i.i37_crit_edge ]
  %.lcssa.i.i.i.i35 = phi i32 [ %37, %if.else.if.then.i.i.i.i37_crit_edge ], [ %40, %for.inc.i.i.i.i40.if.then.i.i.i.i37_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i35, i1 true) #7, !range !125
  %add.i.i.i.i36 = or i32 %38, %i.09.lcssa.i.i.i.i34
  br label %params_width.exit.i43

for.inc.i.i.i.i40:                                ; preds = %if.else
  %arrayidx.1.i.i.i.i38 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i.i.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i.i.i39 = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i.i.i.i39, label %for.inc.i.i.i.i40.params_width.exit.i43_crit_edge, label %for.inc.i.i.i.i40.if.then.i.i.i.i37_crit_edge

for.inc.i.i.i.i40.if.then.i.i.i.i37_crit_edge:    ; preds = %for.inc.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i37

for.inc.i.i.i.i40.params_width.exit.i43_crit_edge: ; preds = %for.inc.i.i.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit.i43

params_width.exit.i43:                            ; preds = %for.inc.i.i.i.i40.params_width.exit.i43_crit_edge, %if.then.i.i.i.i37
  %retval.0.i.i.i.i41 = phi i32 [ %add.i.i.i.i36, %if.then.i.i.i.i37 ], [ 0, %for.inc.i.i.i.i40.params_width.exit.i43_crit_edge ]
  %call1.i.i42 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i41) #7
  %switch.tableidx64 = add i32 %call1.i.i42, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx64)
  %41 = icmp ult i32 %switch.tableidx64, 9
  br i1 %41, label %switch.hole_check65, label %params_width.exit.i43.adav80x_set_capture_pcm_format.exit_crit_edge

params_width.exit.i43.adav80x_set_capture_pcm_format.exit_crit_edge: ; preds = %params_width.exit.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_capture_pcm_format.exit

switch.hole_check65:                              ; preds = %params_width.exit.i43
  %switch.maskindex67 = trunc i32 %switch.tableidx64 to i16
  %switch.shifted68 = lshr i16 277, %switch.maskindex67
  %42 = and i16 %switch.shifted68, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %switch.lobit69.not = icmp eq i16 %42, 0
  br i1 %switch.lobit69.not, label %switch.hole_check65.adav80x_set_capture_pcm_format.exit_crit_edge, label %switch.lookup66

switch.hole_check65.adav80x_set_capture_pcm_format.exit_crit_edge: ; preds = %switch.hole_check65
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_capture_pcm_format.exit

switch.lookup66:                                  ; preds = %switch.hole_check65
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep70 = getelementptr inbounds [9 x i32], ptr @switch.table.adav80x_hw_params.40, i32 0, i32 %switch.tableidx64
  %43 = ptrtoint ptr %switch.gep70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load71 = load i32, ptr %switch.gep70, align 4
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %5, align 4
  %id.i48 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %46 = ptrtoint ptr %id.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id.i48, align 4
  %arrayidx.i49 = getelementptr [2 x [2 x i32]], ptr @adav80x_port_ctrl_regs, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i49, align 4
  %call.i.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %49, i32 noundef 12, i32 noundef %switch.load71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %adav80x_set_capture_pcm_format.exit

adav80x_set_capture_pcm_format.exit:              ; preds = %switch.lookup66, %switch.hole_check65.adav80x_set_capture_pcm_format.exit_crit_edge, %params_width.exit.i43.adav80x_set_capture_pcm_format.exit_crit_edge
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i53 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %driver_data.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %7)
  %cmp.i54 = icmp ult i32 %7, 48001
  %..i55 = select i1 %cmp.i54, i32 0, i32 128
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call.i.i56 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 110, i32 noundef 128, i32 noundef %..i55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end9

if.end9:                                          ; preds = %adav80x_set_capture_pcm_format.exit, %adav80x_set_playback_pcm_format.exit
  %rate10 = getelementptr inbounds %struct.adav80x, ptr %5, i32 0, i32 5
  %56 = ptrtoint ptr %rate10 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %7, ptr %rate10, align 4
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i58 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %driver_data.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %driver_data.i.i.i58, align 4
  %deemph.i = getelementptr inbounds %struct.adav80x, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %deemph.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i, label %if.end9.adav80x_set_deemph.exit_crit_edge, label %if.then.i

if.end9.adav80x_set_deemph.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

if.then.i:                                        ; preds = %if.end9
  %rate.i = getelementptr inbounds %struct.adav80x, ptr %60, i32 0, i32 5
  %63 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rate.i, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %64, label %sw.default.i [
    i32 32000, label %if.then.i.adav80x_set_deemph.exit_crit_edge
    i32 44100, label %sw.bb1.i
    i32 48000, label %if.then.i.sw.bb2.i59_crit_edge
    i32 64000, label %if.then.i.sw.bb2.i59_crit_edge72
    i32 88200, label %if.then.i.sw.bb2.i59_crit_edge73
    i32 96000, label %if.then.i.sw.bb2.i59_crit_edge74
  ]

if.then.i.sw.bb2.i59_crit_edge74:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i59

if.then.i.sw.bb2.i59_crit_edge73:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i59

if.then.i.sw.bb2.i59_crit_edge72:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i59

if.then.i.sw.bb2.i59_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i59

if.then.i.adav80x_set_deemph.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

sw.bb1.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

sw.bb2.i59:                                       ; preds = %if.then.i.sw.bb2.i59_crit_edge, %if.then.i.sw.bb2.i59_crit_edge72, %if.then.i.sw.bb2.i59_crit_edge73, %if.then.i.sw.bb2.i59_crit_edge74
  br label %adav80x_set_deemph.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adav80x_set_deemph.exit

adav80x_set_deemph.exit:                          ; preds = %sw.default.i, %sw.bb2.i59, %sw.bb1.i, %if.then.i.adav80x_set_deemph.exit_crit_edge, %if.end9.adav80x_set_deemph.exit_crit_edge
  %val.0.i60 = phi i32 [ 0, %sw.default.i ], [ 3, %sw.bb2.i59 ], [ 1, %sw.bb1.i ], [ 2, %if.then.i.adav80x_set_deemph.exit_crit_edge ], [ 0, %if.end9.adav80x_set_deemph.exit_crit_edge ]
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %60, align 4
  %call.i.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 101, i32 noundef 1, i32 noundef %val.0.i60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %adav80x_set_deemph.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %adav80x_set_deemph.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__ksymtab_adav80x_bus_probe, !1, !"__ksymtab_adav80x_bus_probe", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adav80x.c", i32 865, i32 1}
!2 = !{ptr @adav80x_regmap_config, !3, !"adav80x_regmap_config", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/adav80x.c", i32 867, i32 28}
!4 = !{ptr @__ksymtab_adav80x_regmap_config, !5, !"__ksymtab_adav80x_regmap_config", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/adav80x.c", i32 878, i32 1}
!6 = !{ptr @__UNIQUE_ID_description238, !7, !"__UNIQUE_ID_description238", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/adav80x.c", i32 880, i32 1}
!8 = !{ptr @__UNIQUE_ID_author239, !9, !"__UNIQUE_ID_author239", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/adav80x.c", i32 881, i32 1}
!10 = !{ptr @__UNIQUE_ID_author240, !11, !"__UNIQUE_ID_author240", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/adav80x.c", i32 882, i32 1}
!12 = !{ptr @__UNIQUE_ID_file241, !13, !"__UNIQUE_ID_file241", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/adav80x.c", i32 883, i32 1}
!14 = !{ptr @__UNIQUE_ID_license242, !13, !"__UNIQUE_ID_license242", i1 false, i1 false}
!15 = !{ptr @adav80x_component_driver, !16, !"adav80x_component_driver", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/adav80x.c", i32 829, i32 46}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/adav80x.c", i32 343, i32 2}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/adav80x.c", i32 345, i32 2}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/adav80x.c", i32 348, i32 2}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/adav80x.c", i32 351, i32 2}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/adav80x.c", i32 352, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/adav80x.c", i32 354, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/adav80x.c", i32 356, i32 2}
!31 = !{ptr @adav80x_controls, !32, !"adav80x_controls", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/adav80x.c", i32 342, i32 38}
!33 = !{ptr @adav80x_digital_tlv, !34, !"adav80x_digital_tlv", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/adav80x.c", i32 340, i32 14}
!35 = !{ptr @adav80x_inpga_tlv, !36, !"adav80x_inpga_tlv", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/adav80x.c", i32 339, i32 14}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/adav80x.c", i32 184, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/adav80x.c", i32 185, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/adav80x.c", i32 187, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/adav80x.c", i32 188, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/adav80x.c", i32 190, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/adav80x.c", i32 191, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/adav80x.c", i32 193, i32 2}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/adav80x.c", i32 194, i32 2}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/adav80x.c", i32 196, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/adav80x.c", i32 197, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/adav80x.c", i32 198, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/adav80x.c", i32 200, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/adav80x.c", i32 201, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/adav80x.c", i32 202, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/adav80x.c", i32 203, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/adav80x.c", i32 205, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/adav80x.c", i32 206, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/adav80x.c", i32 207, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/adav80x.c", i32 208, i32 2}
!79 = !{ptr @adav80x_dapm_widgets, !80, !"adav80x_dapm_widgets", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/adav80x.c", i32 183, i32 41}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/adav80x.c", i32 174, i32 2}
!83 = !{ptr @adav80x_aux_capture_mux_ctrl, !84, !"adav80x_aux_capture_mux_ctrl", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/adav80x.c", i32 173, i32 38}
!85 = !{ptr @adav80x_aux_capture_enum, !86, !"adav80x_aux_capture_enum", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/adav80x.c", i32 169, i32 8}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/adav80x.c", i32 156, i32 2}
!89 = !{ptr @adav80x_mux_text, !90, !"adav80x_mux_text", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/adav80x.c", i32 154, i32 20}
!91 = !{ptr @adav80x_mux_values, !92, !"adav80x_mux_values", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/adav80x.c", i32 160, i32 27}
!93 = !{ptr @adav80x_capture_mux_ctrl, !94, !"adav80x_capture_mux_ctrl", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/adav80x.c", i32 175, i32 38}
!95 = !{ptr @adav80x_capture_enum, !96, !"adav80x_capture_enum", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/adav80x.c", i32 170, i32 8}
!97 = !{ptr @adav80x_dac_mux_ctrl, !98, !"adav80x_dac_mux_ctrl", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/adav80x.c", i32 177, i32 38}
!99 = !{ptr @adav80x_dac_enum, !100, !"adav80x_dac_enum", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/adav80x.c", i32 171, i32 8}
!101 = !{ptr @adav80x_dapm_routes, !102, !"adav80x_dapm_routes", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/adav80x.c", i32 245, i32 40}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/adav80x.c", i32 764, i32 11}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/adav80x.c", i32 783, i32 11}
!107 = !{ptr @adav80x_dais, !108, !"adav80x_dais", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/adav80x.c", i32 762, i32 34}
!109 = !{ptr @adav80x_dai_ops, !110, !"adav80x_dai_ops", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/adav80x.c", i32 746, i32 37}
!111 = !{ptr @adav80x_port_ctrl_regs, !112, !"adav80x_port_ctrl_regs", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/adav80x.c", i32 360, i32 21}
!113 = !{ptr @adav80x_reg_defaults, !114, !"adav80x_reg_defaults", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/adav80x.c", i32 115, i32 33}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{i32 0, i32 33}
