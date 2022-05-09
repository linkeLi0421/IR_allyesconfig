; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/twl6040.c_pt.bc'
source_filename = "../sound/soc/codecs/twl6040.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+twl6040_hs_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6040_hs_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_twl6040_hs_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6040_hs_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6040_hs_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_twl6040_hs_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+twl6040_get_dl1_gain\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6040_get_dl1_gain\09\09\09\09"
module asm "\09.long\09__crc_twl6040_get_dl1_gain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6040_get_dl1_gain:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6040_get_dl1_gain\22\09\09\09\09\09"
module asm "__kstrtabns_twl6040_get_dl1_gain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+twl6040_get_clk_id\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6040_get_clk_id\09\09\09\09"
module asm "\09.long\09__crc_twl6040_get_clk_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6040_get_clk_id:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6040_get_clk_id\22\09\09\09\09\09"
module asm "__kstrtabns_twl6040_get_clk_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+twl6040_get_trim_value\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6040_get_trim_value\09\09\09\09"
module asm "\09.long\09__crc_twl6040_get_trim_value\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6040_get_trim_value:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6040_get_trim_value\22\09\09\09\09\09"
module asm "__kstrtabns_twl6040_get_trim_value:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+twl6040_get_hs_step_size\22, \22a\22\09"
module asm "\09.weak\09__crc_twl6040_get_hs_step_size\09\09\09\09"
module asm "\09.long\09__crc_twl6040_get_hs_step_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl6040_get_hs_step_size:\09\09\09\09\09"
module asm "\09.asciz \09\22twl6040_get_hs_step_size\22\09\09\09\09\09"
module asm "__kstrtabns_twl6040_get_hs_step_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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
%struct.twl6040_data = type { i32, i32, i32, i32, i32, i32, i8, i8, [7 x i8], i32, i32, %struct.twl6040_jack_data, ptr, %struct.mutex }
%struct.twl6040_jack_data = type { ptr, %struct.delayed_work, i32 }
%struct.twl6040 = type { ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.mutex, %struct.mutex, [4 x %struct.mfd_cell], %struct.completion, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
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

@__kstrtab_twl6040_hs_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6040_hs_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6040_hs_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6040_hs_jack_detect to i32), ptr @__kstrtab_twl6040_hs_jack_detect, ptr @__kstrtabns_twl6040_hs_jack_detect }, section "___ksymtab_gpl+twl6040_hs_jack_detect", align 4
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EP\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HSOR\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HSOL\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_twl6040_get_dl1_gain = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6040_get_dl1_gain = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6040_get_dl1_gain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6040_get_dl1_gain to i32), ptr @__kstrtab_twl6040_get_dl1_gain, ptr @__kstrtabns_twl6040_get_dl1_gain }, section "___ksymtab_gpl+twl6040_get_dl1_gain", align 4
@__kstrtab_twl6040_get_clk_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6040_get_clk_id = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6040_get_clk_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6040_get_clk_id to i32), ptr @__kstrtab_twl6040_get_clk_id, ptr @__kstrtabns_twl6040_get_clk_id }, section "___ksymtab_gpl+twl6040_get_clk_id", align 4
@__kstrtab_twl6040_get_trim_value = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6040_get_trim_value = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6040_get_trim_value = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6040_get_trim_value to i32), ptr @__kstrtab_twl6040_get_trim_value, ptr @__kstrtabns_twl6040_get_trim_value }, section "___ksymtab_gpl+twl6040_get_trim_value", align 4
@__kstrtab_twl6040_get_hs_step_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl6040_get_hs_step_size = external dso_local constant [0 x i8], align 1
@__ksymtab_twl6040_get_hs_step_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl6040_get_hs_step_size to i32), ptr @__kstrtab_twl6040_get_hs_step_size, ptr @__kstrtabns_twl6040_get_hs_step_size }, section "___ksymtab_gpl+twl6040_get_hs_step_size", align 4
@__initcall__kmod_snd_soc_twl6040__294_1173_twl6040_codec_driver_init6 = internal global ptr @twl6040_codec_driver_init, section ".initcall6.init", align 4
@twl6040_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl6040_codec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl6040_codec_driver_exit = internal global ptr @twl6040_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [54 x i8] c"snd_soc_twl6040.description=ASoC TWL6040 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [41 x i8] c"snd_soc_twl6040.author=Misael Lopez Cruz\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [54 x i8] c"snd_soc_twl6040.file=sound/soc/codecs/snd-soc-twl6040\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"snd_soc_twl6040.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl6040-codec\00", [18 x i8] zeroinitializer }, align 32
@soc_component_dev_twl6040 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @twl6040_snd_controls, i32 10, ptr @twl6040_dapm_widgets, i32 52, ptr @intercon, i32 61, ptr @twl6040_probe, ptr @twl6040_remove, ptr null, ptr null, ptr @twl6040_read, ptr @twl6040_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 108, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@twl6040_dai = internal global { [5 x %struct.snd_soc_dai_driver], [216 x i8] } { [5 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.106, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.93, i64 1024, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.89, i64 1024, i32 2046, i32 0, i32 0, i32 1, i32 5, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.107, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.94, i64 1024, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.108, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.90, i64 1024, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.109, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.91, i64 1024, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.110, i32 4, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.92, i64 1024, i32 1073741824, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], [216 x i8] zeroinitializer }, align 32
@twl6040_snd_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mic_preamp_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mic_amp_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @afm_amp_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @hs_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @hf_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @ep_tlv }, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @twl6040_headset_power_get_enum, ptr @twl6040_headset_power_put_enum, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @twl6040_power_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @twl6040_pll_get_enum, ptr @twl6040_pll_put_enum, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @twl6040_power_mode_enum to i32) }], [96 x i8] zeroinitializer }, align 32
@intercon = internal constant { [61 x %struct.snd_soc_dapm_route], [796 x i8] } { [61 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr @.str.74, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr @.str.75, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr @.str.76, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.74, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.78, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr @.str.79, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.82, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.81, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.82, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.81, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.2, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.1, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.85, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.80, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.81, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.80, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.81, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.85, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.85, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.84, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.84, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }], [796 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Capture Preamplifier Volume\00", [36 x i8] zeroinitializer }, align 32
@mic_preamp_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 6, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@mic_amp_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 14, i32 14, i32 0, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Aux FM Volume\00", [18 x i8] zeroinitializer }, align 32
@afm_amp_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1800, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 15, i32 15, i32 0, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headset Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@hs_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3000, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 18, i32 18, i32 0, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Handsfree Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@hf_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5200, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 29, i32 29, i32 21, i32 23, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Earphone Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@ep_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2400, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 19, i32 19, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Power Mode\00", [45 x i8] zeroinitializer }, align 32
@twl6040_power_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @twl6040_power_mode_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Headset Mono to Stereo Playback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Handsfree Mono to Stereo Playback Switch\00", [55 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PLL Selection\00", [18 x i8] zeroinitializer }, align 32
@twl6040_power_mode_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Low-Power\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"High-Performance\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MAINMIC\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HSMIC\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUBMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AFML\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AFMR\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFL\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HFR\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXL\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXR\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VIBRAL\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VIBRAR\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Analog Left Capture Route\00", [38 x i8] zeroinitializer }, align 32
@amicl_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @twl6040_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Analog Right Capture Route\00", [37 x i8] zeroinitializer }, align 32
@amicr_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @twl6040_enum, i64 64) to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MicAmpL\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MicAmpR\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AFMAmpL\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AFMAmpR\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headset Mic Bias\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Main Mic Bias\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital Mic1 Bias\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital Mic2 Bias\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HSDAC Left\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HSDAC Right\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HFDAC Left\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HFDAC Right\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VIBRA DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Handsfree Left Playback\00", [40 x i8] zeroinitializer }, align 32
@hfl_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @twl6040_hf_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Handsfree Right Playback\00", [39 x i8] zeroinitializer }, align 32
@hfr_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @twl6040_hf_enum, i64 64) to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headset Left Playback\00", [42 x i8] zeroinitializer }, align 32
@hsl_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @twl6040_hs_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Headset Right Playback\00", [41 x i8] zeroinitializer }, align 32
@hsr_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @twl6040_hs_enum, i64 64) to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vibra Left Playback\00", [44 x i8] zeroinitializer }, align 32
@vibral_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @twl6040_soc_dapm_put_vibra_enum, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @twl6040_vibra_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Vibra Right Playback\00", [43 x i8] zeroinitializer }, align 32
@vibrar_mux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @twl6040_soc_dapm_put_vibra_enum, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @twl6040_vibra_enum, i64 64) to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Earphone Playback\00", [46 x i8] zeroinitializer }, align 32
@ep_path_enable_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AUXL Playback\00", [18 x i8] zeroinitializer }, align 32
@auxl_switch_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AUXR Playback\00", [18 x i8] zeroinitializer }, align 32
@auxr_switch_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HF Left Driver\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HF Right Driver\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HS Left Driver\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HS Right Driver\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Earphone Driver\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Vibra Left Driver\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vibra Right Driver\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vibra Left Control\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vibra Right Control\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HSDAC Power\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HF Left PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HF Right PGA\00", [19 x i8] zeroinitializer }, align 32
@twl6040_dapm_widgets = internal constant { [52 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2352 x i8] } { [52 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.1, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @amicl_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @amicr_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hfl_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hfr_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hsl_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hsr_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @vibral_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @vibrar_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ep_path_enable_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @auxl_switch_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @auxr_switch_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 16, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 17, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @twl6040_ep_drv_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 24, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 10, ptr @twl6040_hs_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 20, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2352 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@twl6040_enum = internal constant { [2 x %struct.soc_enum], [32 x i8] } { [2 x %struct.soc_enum] [%struct.soc_enum { i32 12, i8 3, i8 3, i32 4, i32 3, ptr @twl6040_amicl_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 13, i8 3, i8 3, i32 4, i32 3, ptr @twl6040_amicr_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@twl6040_amicl_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@twl6040_amicr_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.74, ptr @.str.78, ptr @.str.79, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main Mic\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Aux/FM Left\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub Mic\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Aux/FM Right\00", [19 x i8] zeroinitializer }, align 32
@twl6040_hf_enum = internal constant { [2 x %struct.soc_enum], [32 x i8] } { [2 x %struct.soc_enum] [%struct.soc_enum { i32 20, i8 2, i8 2, i32 3, i32 3, ptr @twl6040_hf_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 22, i8 2, i8 2, i32 3, i32 3, ptr @twl6040_hf_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@twl6040_hf_texts = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.77, ptr @.str.80, ptr @.str.81], [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HF DAC\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line-In amp\00", [20 x i8] zeroinitializer }, align 32
@twl6040_hs_enum = internal constant { [2 x %struct.soc_enum], [32 x i8] } { [2 x %struct.soc_enum] [%struct.soc_enum { i32 16, i8 5, i8 5, i32 3, i32 3, ptr @twl6040_hs_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 17, i8 5, i8 5, i32 3, i32 3, ptr @twl6040_hs_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@twl6040_hs_texts = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.77, ptr @.str.82, ptr @.str.81], [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HS DAC\00", [25 x i8] zeroinitializer }, align 32
@twl6040_vibra_enum = internal constant { [2 x %struct.soc_enum], [32 x i8] } { [2 x %struct.soc_enum] [%struct.soc_enum { i32 24, i8 1, i8 1, i32 2, i32 1, ptr @twl6040_vibrapath_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 26, i8 1, i8 1, i32 2, i32 1, ptr @twl6040_vibrapath_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@twl6040_vibrapath_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.83, ptr @.str.84], [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Input FF\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Audio PDM\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Legacy Playback\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headset Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Handsfree Playback\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Vibra Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Legacy Capture\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@twl6040_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->hs_jack.work)->work)\00", [48 x i8] zeroinitializer }, align 32
@twl6040_probe.__key.96 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->hs_jack.work)->timer\00", [34 x i8] zeroinitializer }, align 32
@twl6040_probe.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl6040_irq_plug\00", [47 x i8] zeroinitializer }, align 32
@twl6040_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.103, i32 1124, ptr @.str.104, ptr @.str.105 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PLUG IRQ request failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl6040_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/twl6040.c\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl6040_probe._entry_ptr = internal global ptr @twl6040_probe._entry, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"twl6040-legacy\00", [17 x i8] zeroinitializer }, align 32
@twl6040_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @twl6040_set_dai_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_mute_stream, ptr @twl6040_startup, ptr null, ptr @twl6040_hw_params, ptr null, ptr @twl6040_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"twl6040-ul\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl6040-dl1\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl6040-dl2\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"twl6040-vib\00", [20 x i8] zeroinitializer }, align 32
@twl6040_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.103, i32 945, ptr @.str.104, ptr @.str.105 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unknown clk_id %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"twl6040_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@twl6040_set_dai_sysclk._entry_ptr = internal global ptr @twl6040_set_dai_sysclk._entry, section ".printk_index", align 4
@sysclk_constraints = internal constant { [2 x %struct.snd_pcm_hw_constraint_list], [40 x i8] } { [2 x %struct.snd_pcm_hw_constraint_list] [%struct.snd_pcm_hw_constraint_list { ptr @lp_rates, i32 9, i32 0 }, %struct.snd_pcm_hw_constraint_list { ptr @hp_rates, i32 5, i32 0 }], [40 x i8] zeroinitializer }, align 32
@lp_rates = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8000, i32 11250, i32 16000, i32 22500, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000], [60 x i8] zeroinitializer }, align 32
@hp_rates = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8000, i32 16000, i32 32000, i32 48000, i32 96000], [44 x i8] zeroinitializer }, align 32
@twl6040_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.103, i32 889, ptr @.str.104, ptr @.str.105 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HPPLL does not support rate %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"twl6040_hw_params\00", [46 x i8] zeroinitializer }, align 32
@twl6040_hw_params._entry_ptr = internal global ptr @twl6040_hw_params._entry, section ".printk_index", align 4
@twl6040_hw_params._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.103, i32 902, ptr @.str.104, ptr @.str.105 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported rate %d\0A\00", [43 x i8] zeroinitializer }, align 32
@twl6040_hw_params._entry_ptr.117 = internal global ptr @twl6040_hw_params._entry.115, section ".printk_index", align 4
@twl6040_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.103, i32 919, ptr @.str.104, ptr @.str.105 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"no mclk configured, call set_sysclk() on init\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl6040_prepare\00", [16 x i8] zeroinitializer }, align 32
@twl6040_prepare._entry_ptr = internal global ptr @twl6040_prepare._entry, section ".printk_index", align 4
@twl6040_prepare._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.103, i32 925, ptr @.str.104, ptr @.str.105 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can not set PLL (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@twl6040_prepare._entry_ptr.122 = internal global ptr @twl6040_prepare._entry.120, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 17, i64 19, i64 20, i64 22]
@__sancov_gen_cov_switch_values.123 = internal global [7 x i64] [i64 5, i64 8, i64 16, i64 17, i64 19, i64 20, i64 22]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 17, i64 19, i64 20, i64 22]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.126 = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 17, i64 19, i64 20, i64 22]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [11 x i64] [i64 9, i64 32, i64 8000, i64 11250, i64 16000, i64 22500, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 526, i32 40 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 529, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 530, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"twl6040_codec_driver\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1166, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1168, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"soc_component_dev_twl6040\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1141, i32 46 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"twl6040_dai\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1027, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"twl6040_snd_controls\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 574, i32 38 }
@___asan_gen_.154 = private unnamed_addr constant [9 x i8] c"intercon\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 724, i32 40 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 576, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"mic_preamp_tlv\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 342, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 578, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"mic_amp_tlv\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 348, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 582, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [12 x i8] c"afm_amp_tlv\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 354, i32 8 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 586, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"hs_tlv\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 360, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 588, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"hf_tlv\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 366, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 590, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"ep_tlv\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 372, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 593, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"twl6040_power_mode_enum\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 469, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 598, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 602, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 605, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [25 x i8] c"twl6040_power_mode_texts\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 465, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 466, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 466, i32 15 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 611, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 612, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 613, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 614, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 615, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 620, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 621, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 623, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 624, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 625, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 626, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 629, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [14 x i8] c"amicl_control\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 424, i32 38 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 631, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [14 x i8] c"amicr_control\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 427, i32 38 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 635, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 637, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 641, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 643, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 647, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 648, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 651, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 653, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 655, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 657, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 661, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 662, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 663, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 664, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 666, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 668, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"hfl_mux_controls\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 438, i32 38 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 670, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"hfr_mux_controls\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 441, i32 38 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 673, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"hsl_mux_controls\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 431, i32 38 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 675, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"hsr_mux_controls\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 434, i32 38 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 678, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c"vibral_mux_controls\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 454, i32 38 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 680, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c"vibrar_mux_controls\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 459, i32 38 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 683, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [23 x i8] c"ep_path_enable_control\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 444, i32 38 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 685, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c"auxl_switch_control\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 447, i32 38 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 687, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c"auxr_switch_control\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 450, i32 38 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 691, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 693, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 695, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 697, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 699, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 703, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 705, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 708, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 710, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 712, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 717, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 719, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [21 x i8] c"twl6040_dapm_widgets\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 609, i32 41 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 425, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [13 x i8] c"twl6040_enum\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 382, i32 30 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c"twl6040_amicl_texts\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 375, i32 20 }
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c"twl6040_amicr_texts\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 379, i32 20 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 376, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 376, i32 18 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 376, i32 30 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 376, i32 45 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 380, i32 18 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 380, i32 29 }
@___asan_gen_.438 = private unnamed_addr constant [16 x i8] c"twl6040_hf_enum\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 404, i32 30 }
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"twl6040_hf_texts\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 400, i32 20 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 401, i32 9 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 401, i32 19 }
@___asan_gen_.450 = private unnamed_addr constant [16 x i8] c"twl6040_hs_enum\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 393, i32 30 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"twl6040_hs_texts\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 389, i32 20 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 390, i32 9 }
@___asan_gen_.459 = private unnamed_addr constant [19 x i8] c"twl6040_vibra_enum\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 415, i32 30 }
@___asan_gen_.462 = private unnamed_addr constant [24 x i8] c"twl6040_vibrapath_texts\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 411, i32 20 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 412, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 412, i32 14 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 445, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 726, i32 23 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 727, i32 23 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 732, i32 23 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 737, i32 22 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 740, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 741, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1115, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1117, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1122, i32 6 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1124, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1029, i32 10 }
@___asan_gen_.537 = private unnamed_addr constant [16 x i8] c"twl6040_dai_ops\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1018, i32 37 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1048, i32 10 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1060, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1072, i32 10 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 1084, i32 10 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 945, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant [19 x i8] c"sysclk_constraints\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 90, i32 48 }
@___asan_gen_.564 = private unnamed_addr constant [9 x i8] c"lp_rates\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 70, i32 27 }
@___asan_gen_.567 = private unnamed_addr constant [9 x i8] c"hp_rates\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 82, i32 27 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 888, i32 4 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 902, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 918, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.598 = private constant [30 x i8] c"../sound/soc/codecs/twl6040.c\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.598, i32 925, i32 3 }
@llvm.compiler.used = appending global [182 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_twl6040_codec_driver_exit, ptr @__initcall__kmod_snd_soc_twl6040__294_1173_twl6040_codec_driver_init6, ptr @__ksymtab_twl6040_get_clk_id, ptr @__ksymtab_twl6040_get_dl1_gain, ptr @__ksymtab_twl6040_get_hs_step_size, ptr @__ksymtab_twl6040_get_trim_value, ptr @__ksymtab_twl6040_hs_jack_detect, ptr @twl6040_codec_driver_exit, ptr @twl6040_hw_params._entry, ptr @twl6040_hw_params._entry.115, ptr @twl6040_hw_params._entry_ptr, ptr @twl6040_hw_params._entry_ptr.117, ptr @twl6040_prepare._entry, ptr @twl6040_prepare._entry.120, ptr @twl6040_prepare._entry_ptr, ptr @twl6040_prepare._entry_ptr.122, ptr @twl6040_probe._entry, ptr @twl6040_probe._entry_ptr, ptr @twl6040_set_dai_sysclk._entry, ptr @twl6040_set_dai_sysclk._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @twl6040_codec_driver, ptr @.str.3, ptr @soc_component_dev_twl6040, ptr @twl6040_dai, ptr @twl6040_snd_controls, ptr @intercon, ptr @.str.4, ptr @mic_preamp_tlv, ptr @.compoundliteral, ptr @.str.5, ptr @mic_amp_tlv, ptr @.compoundliteral.6, ptr @.str.7, ptr @afm_amp_tlv, ptr @.compoundliteral.8, ptr @.str.9, ptr @hs_tlv, ptr @.compoundliteral.10, ptr @.str.11, ptr @hf_tlv, ptr @.compoundliteral.12, ptr @.str.13, ptr @ep_tlv, ptr @.compoundliteral.14, ptr @.str.15, ptr @twl6040_power_mode_enum, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @twl6040_power_mode_texts, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @amicl_control, ptr @.str.35, ptr @amicr_control, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @hfl_mux_controls, ptr @.str.52, ptr @hfr_mux_controls, ptr @.str.53, ptr @hsl_mux_controls, ptr @.str.54, ptr @hsr_mux_controls, ptr @.str.55, ptr @vibral_mux_controls, ptr @.str.56, ptr @vibrar_mux_controls, ptr @.str.57, ptr @ep_path_enable_control, ptr @.str.58, ptr @auxl_switch_control, ptr @.str.59, ptr @auxr_switch_control, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @twl6040_dapm_widgets, ptr @.str.73, ptr @twl6040_enum, ptr @twl6040_amicl_texts, ptr @twl6040_amicr_texts, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @twl6040_hf_enum, ptr @twl6040_hf_texts, ptr @.str.80, ptr @.str.81, ptr @twl6040_hs_enum, ptr @twl6040_hs_texts, ptr @.str.82, ptr @twl6040_vibra_enum, ptr @twl6040_vibrapath_texts, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @twl6040_probe.__key, ptr @.str.95, ptr @twl6040_probe.__key.96, ptr @.str.97, ptr @twl6040_probe.__key.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @twl6040_dai_ops, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @sysclk_constraints, ptr @lp_rates, ptr @hp_rates, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121], section "llvm.metadata"
@0 = internal global [164 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_twl6040 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_dai to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_snd_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intercon to i32), i32 3172, i32 3968, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_preamp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_amp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afm_amp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hf_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_power_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_power_mode_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amicl_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amicr_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfl_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfr_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsl_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsr_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibral_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibrar_mux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep_path_enable_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxl_switch_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auxr_switch_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_dapm_widgets to i32), i32 9360, i32 11712, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_enum to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_amicl_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_amicr_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_hf_enum to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_hf_texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_hs_enum to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_hs_texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_enum to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibrapath_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_probe.__key.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_probe.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysclk_constraints to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_rates to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_rates to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_hw_params._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_prepare._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @twl6040_hs_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack, i32 noundef %report) #0 align 64 {
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
  %hs_jack1 = getelementptr inbounds %struct.twl6040_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %hs_jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %hs_jack1, align 4
  %report3 = getelementptr inbounds %struct.twl6040_data, ptr %3, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %report3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %report, ptr %report3, align 4
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %mutex.i = getelementptr inbounds %struct.twl6040_data, ptr %8, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i8.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i8.i, align 4
  %call2.i.i = tail call i32 @twl6040_reg_read(ptr noundef %14, i32 noundef 46) #6
  %and.i = and i32 %call2.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.report.i = select i1 %tobool.not.i, i32 0, i32 %report
  tail call void @snd_soc_jack_report(ptr noundef %jack, i32 noundef %.report.i, i32 noundef %report) #6
  tail call void @mutex_unlock(ptr noundef %mutex.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6040_get_dl1_gain(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %dapm.i, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup12_crit_edge

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %dapm.i, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @snd_soc_dapm_get_pin_status(ptr noundef %dapm.i, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup12_crit_edge, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false.cleanup12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.twl6040_data, ptr %3, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  %. = select i1 %tobool9.not, i32 -1, i32 -8
  br label %cleanup12

cleanup12:                                        ; preds = %if.then6, %lor.lhs.false.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  %retval.1 = phi i32 [ %., %if.then6 ], [ -1, %entry.cleanup12_crit_edge ], [ 0, %lor.lhs.false.cleanup12_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_read(ptr nocapture noundef readonly %component, i32 noundef %reg) #0 align 64 {
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
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %reg)
  %cmp = icmp ugt i32 %reg, 46
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 16, label %if.end.sw.bb_crit_edge
    i32 17, label %if.end.sw.bb_crit_edge10
    i32 19, label %if.end.sw.bb_crit_edge11
    i32 20, label %if.end.sw.bb_crit_edge12
    i32 22, label %if.end.sw.bb_crit_edge13
  ]

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge11:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge10:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge10, %if.end.sw.bb_crit_edge11, %if.end.sw.bb_crit_edge12, %if.end.sw.bb_crit_edge13
  %sub = add nsw i32 %reg, -16
  %arrayidx = getelementptr %struct.twl6040_data, ptr %3, i32 0, i32 8, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @twl6040_reg_read(ptr noundef %7, i32 noundef %reg) #6
  %conv = trunc i32 %call2 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %value.0 = phi i8 [ %conv, %sw.default ], [ %10, %sw.bb ]
  %conv3 = zext i8 %value.0 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv3, %sw.epilog ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @twl6040_get_clk_id(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %pll_power_mode = getelementptr inbounds %struct.twl6040_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pll_power_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pll_power_mode, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl6040_get_trim_value(ptr nocapture noundef readonly %component, i32 noundef %trim) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %trim)
  %cmp = icmp ugt i32 %trim, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end.i, !prof !324

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %trim, 40
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call2.i = tail call i32 @twl6040_reg_read(ptr noundef %5, i32 noundef %add) #6
  %conv3.i = and i32 %call2.i, 255
  br label %return

return:                                           ; preds = %if.end.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv3.i, %if.end.i ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @twl6040_get_hs_step_size(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %rev.i = getelementptr inbounds %struct.twl6040, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp slt i32 %7, 2
  %. = select i1 %cmp, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_codec_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl6040_codec_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl6040_codec_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl6040_codec_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_codec_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_twl6040, ptr noundef nonnull @twl6040_dai, i32 noundef 5) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 248, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %component2 = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 12
  %5 = ptrtoint ptr %component2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %component, ptr %component2, align 4
  %call3 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call3, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp5 = icmp slt i32 %call3, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %do.body9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body9:                                         ; preds = %if.end
  %work = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %7 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 11, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.95, ptr noundef nonnull @twl6040_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry20 = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 11, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 11, i32 1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry20, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 11, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @twl6040_accessory_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 11, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.97, ptr noundef nonnull @twl6040_probe.__key.96) #6
  %mutex = getelementptr inbounds %struct.twl6040_data, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.99, ptr noundef nonnull @twl6040_probe.__key.98) #6
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i, align 4
  %call35 = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef null, ptr noundef nonnull @twl6040_audio_handler, i32 noundef 24576, ptr noundef nonnull @.str.100, ptr noundef %component) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool.not = icmp eq i32 %call35, 0
  br i1 %tobool.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.101, i32 noundef %call35) #9
  br label %cleanup

if.end41:                                         ; preds = %do.body9
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 1) #6
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i, align 4
  %call2.i.i = tail call i32 @twl6040_reg_read(ptr noundef %20, i32 noundef 40) #6
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %parent.i25.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %parent.i25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i25.i, align 8
  %driver_data.i.i26.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i26.i, align 4
  %call2.i27.i = tail call i32 @twl6040_reg_read(ptr noundef %26, i32 noundef 41) #6
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %parent.i32.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %parent.i32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i32.i, align 8
  %driver_data.i.i33.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i33.i, align 4
  %call2.i34.i = tail call i32 @twl6040_reg_read(ptr noundef %32, i32 noundef 42) #6
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %parent.i39.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %parent.i39.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i39.i, align 8
  %driver_data.i.i40.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i40.i, align 4
  %call2.i41.i = tail call i32 @twl6040_reg_read(ptr noundef %38, i32 noundef 43) #6
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  %parent.i46.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %parent.i46.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent.i46.i, align 8
  %driver_data.i.i47.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i47.i, align 4
  %call2.i48.i = tail call i32 @twl6040_reg_read(ptr noundef %44, i32 noundef 44) #6
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %parent.i51.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %parent.i51.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent.i51.i, align 8
  %driver_data.i.i52.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %driver_data.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %driver_data.i.i52.i, align 4
  %call5.i.i = tail call i32 @twl6040_reg_write(ptr noundef %50, i32 noundef 12, i8 noundef zeroext 24) #6
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  %parent.i54.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %parent.i54.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %parent.i54.i, align 8
  %driver_data.i.i55.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i55.i, align 4
  %call5.i57.i = tail call i32 @twl6040_reg_write(ptr noundef %56, i32 noundef 13, i8 noundef zeroext 24) #6
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %parent.i59.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %parent.i59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent.i59.i, align 8
  %driver_data.i.i60.i = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %driver_data.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i60.i, align 4
  %call5.i62.i = tail call i32 @twl6040_reg_write(ptr noundef %62, i32 noundef 18, i8 noundef zeroext -1) #6
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  %parent.i64.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %parent.i64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %parent.i64.i, align 8
  %driver_data.i.i65.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %driver_data.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i65.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 8
  %69 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.twl6040_data, ptr %70, i32 0, i32 8, i32 3
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 30, ptr %arrayidx.i.i.i, align 1
  %72 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i13.i66.i = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %driver_data.i.i.i13.i66.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %driver_data.i.i.i13.i66.i, align 4
  %dl1_unmuted.i.i.i = getelementptr inbounds %struct.twl6040_data, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %dl1_unmuted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %dl1_unmuted.i.i.i, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.i.not.i.i = icmp eq i8 %76, 0
  br i1 %tobool.i.not.i.i, label %if.end41.twl6040_init_chip.exit_crit_edge, label %if.then3.i.i

if.end41.twl6040_init_chip.exit_crit_edge:        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_init_chip.exit

if.then3.i.i:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i67.i = tail call i32 @twl6040_reg_write(ptr noundef %68, i32 noundef 19, i8 noundef zeroext 30) #6
  br label %twl6040_init_chip.exit

twl6040_init_chip.exit:                           ; preds = %if.then3.i.i, %if.end41.twl6040_init_chip.exit_crit_edge
  %77 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev, align 4
  %parent.i69.i = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %parent.i69.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parent.i69.i, align 8
  %driver_data.i.i70.i = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %driver_data.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver_data.i.i70.i, align 4
  %call5.i72.i = tail call i32 @twl6040_reg_write(ptr noundef %82, i32 noundef 21, i8 noundef zeroext 29) #6
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %parent.i76.i = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %parent.i76.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %parent.i76.i, align 8
  %driver_data.i.i77.i = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %driver_data.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %driver_data.i.i77.i, align 4
  %call5.i79.i = tail call i32 @twl6040_reg_write(ptr noundef %88, i32 noundef 23, i8 noundef zeroext 29) #6
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 4
  %parent.i83.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %parent.i83.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent.i83.i, align 8
  %driver_data.i.i84.i = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %driver_data.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i84.i, align 4
  %call5.i86.i = tail call i32 @twl6040_reg_write(ptr noundef %94, i32 noundef 15, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %twl6040_init_chip.exit, %do.end39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %do.end39 ], [ 0, %twl6040_init_chip.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl6040_remove(ptr noundef %component) #0 align 64 {
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
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %component) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_write(ptr nocapture noundef readonly %component, i32 noundef %reg, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %reg)
  %cmp = icmp ugt i32 %reg, 46
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %reg to i8
  %conv1 = trunc i32 %value to i8
  %6 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %conv, label %if.end.twl6040_update_dl12_cache.exit_crit_edge [
    i8 16, label %if.end.sw.bb.i_crit_edge
    i8 17, label %if.end.sw.bb.i_crit_edge16
    i8 19, label %if.end.sw.bb.i_crit_edge17
    i8 20, label %if.end.sw.bb.i_crit_edge18
    i8 22, label %if.end.sw.bb.i_crit_edge19
  ]

if.end.sw.bb.i_crit_edge19:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge18:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge16:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.twl6040_update_dl12_cache.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_update_dl12_cache.exit

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge16, %if.end.sw.bb.i_crit_edge17, %if.end.sw.bb.i_crit_edge18, %if.end.sw.bb.i_crit_edge19
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %sub.i = add nsw i32 %reg, -16
  %arrayidx.i = getelementptr %struct.twl6040_data, ptr %8, i32 0, i32 8, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1, ptr %arrayidx.i, align 1
  br label %twl6040_update_dl12_cache.exit

twl6040_update_dl12_cache.exit:                   ; preds = %sw.bb.i, %if.end.twl6040_update_dl12_cache.exit_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %driver_data.i.i.i13 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i13, align 4
  %14 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %reg, label %twl6040_update_dl12_cache.exit.if.then3_crit_edge [
    i32 16, label %twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge
    i32 17, label %twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge20
    i32 19, label %twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge21
    i32 20, label %twl6040_update_dl12_cache.exit.sw.bb1.i_crit_edge
    i32 22, label %twl6040_update_dl12_cache.exit.sw.bb1.i_crit_edge22
  ]

twl6040_update_dl12_cache.exit.sw.bb1.i_crit_edge22: ; preds = %twl6040_update_dl12_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

twl6040_update_dl12_cache.exit.sw.bb1.i_crit_edge: ; preds = %twl6040_update_dl12_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i

twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge21: ; preds = %twl6040_update_dl12_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_can_write_to_chip.exit

twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge20: ; preds = %twl6040_update_dl12_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_can_write_to_chip.exit

twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge: ; preds = %twl6040_update_dl12_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_can_write_to_chip.exit

twl6040_update_dl12_cache.exit.if.then3_crit_edge: ; preds = %twl6040_update_dl12_cache.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

sw.bb1.i:                                         ; preds = %twl6040_update_dl12_cache.exit.sw.bb1.i_crit_edge, %twl6040_update_dl12_cache.exit.sw.bb1.i_crit_edge22
  %dl2_unmuted.i = getelementptr inbounds %struct.twl6040_data, ptr %13, i32 0, i32 7
  %15 = ptrtoint ptr %dl2_unmuted.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %dl2_unmuted.i, align 1, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool2.i.not = icmp eq i8 %16, 0
  br i1 %tobool2.i.not, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.if.then3_crit_edge

sw.bb1.i.if.then3_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

twl6040_can_write_to_chip.exit:                   ; preds = %twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge, %twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge20, %twl6040_update_dl12_cache.exit.twl6040_can_write_to_chip.exit_crit_edge21
  %dl1_unmuted.i = getelementptr inbounds %struct.twl6040_data, ptr %13, i32 0, i32 6
  %17 = ptrtoint ptr %dl1_unmuted.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dl1_unmuted.i, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.not = icmp eq i8 %18, 0
  br i1 %tobool.i.not, label %twl6040_can_write_to_chip.exit.cleanup_crit_edge, label %twl6040_can_write_to_chip.exit.if.then3_crit_edge

twl6040_can_write_to_chip.exit.if.then3_crit_edge: ; preds = %twl6040_can_write_to_chip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

twl6040_can_write_to_chip.exit.cleanup_crit_edge: ; preds = %twl6040_can_write_to_chip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %twl6040_can_write_to_chip.exit.if.then3_crit_edge, %sw.bb1.i.if.then3_crit_edge, %twl6040_update_dl12_cache.exit.if.then3_crit_edge
  %call5 = tail call i32 @twl6040_reg_write(ptr noundef %5, i32 noundef %reg, i8 noundef zeroext %conv1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %twl6040_can_write_to_chip.exit.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then3 ], [ -5, %entry.cleanup_crit_edge ], [ 0, %twl6040_can_write_to_chip.exit.cleanup_crit_edge ], [ 0, %sw.bb1.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %8 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb9
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %codec_powered = getelementptr inbounds %struct.twl6040_data, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %codec_powered to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %codec_powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @twl6040_set_pll(ptr noundef %5, i32 noundef 0, i32 noundef 32768, i32 noundef 19200000) #6
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %call3 = tail call i32 @twl6040_power(ptr noundef %5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %codec_powered to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %codec_powered, align 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i25 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i25, align 4
  %call5.i = tail call i32 @twl6040_reg_write(ptr noundef %17, i32 noundef 30, i8 noundef zeroext 2) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %codec_powered10 = getelementptr inbounds %struct.twl6040_data, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %codec_powered10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %codec_powered10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool11.not = icmp eq i32 %19, 0
  br i1 %tobool11.not, label %sw.bb9.sw.epilog_crit_edge, label %if.end13

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @twl6040_power(ptr noundef %5, i32 noundef 0) #6
  %20 = ptrtoint ptr %codec_powered10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %codec_powered10, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13, %sw.bb9.sw.epilog_crit_edge, %if.end6, %if.end.sw.epilog_crit_edge, %if.then, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call2, %if.then ], [ %call3, %if.end.sw.epilog_crit_edge ], [ 0, %if.end6 ], [ 0, %if.end13 ], [ 0, %sw.bb9.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl6040_headset_power_get_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %hs_power_mode = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %hs_power_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hs_power_mode, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_headset_power_put_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %hs_power_mode_locked = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %hs_power_mode_locked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hs_power_mode_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.then4_crit_edge

entry.if.then4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then:                                          ; preds = %entry
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %arrayidx.i.i = getelementptr %struct.twl6040_data, ptr %5, i32 0, i32 8, i32 0
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx.i5.i = getelementptr %struct.twl6040_data, ptr %5, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %and.i = and i8 %13, -11
  %and3.i = and i8 %15, -11
  %masksel.i = select i1 %tobool.not.i, i8 10, i8 0
  %hslctl.0.i = or i8 %and.i, %masksel.i
  %hsrctl.0.i = or i8 %and3.i, %masksel.i
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %hslctl.0.i, ptr %arrayidx.i.i, align 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i13.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i13.i.i, align 4
  %dl1_unmuted.i.i.i = getelementptr inbounds %struct.twl6040_data, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %dl1_unmuted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dl1_unmuted.i.i.i, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.not.i.i = icmp eq i8 %24, 0
  br i1 %tobool.i.not.i.i, label %if.then.twl6040_write.exit.i_crit_edge, label %if.then3.i.i

if.then.twl6040_write.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_write.exit.i

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i = tail call i32 @twl6040_reg_write(ptr noundef %17, i32 noundef 16, i8 noundef zeroext %hslctl.0.i) #6
  br label %twl6040_write.exit.i

twl6040_write.exit.i:                             ; preds = %if.then3.i.i, %if.then.twl6040_write.exit.i_crit_edge
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %parent.i10.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %parent.i10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i10.i, align 8
  %driver_data.i.i11.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i11.i, align 4
  %driver_data.i.i.i.i13.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i.i13.i, align 4
  %arrayidx.i.i14.i = getelementptr %struct.twl6040_data, ptr %32, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i14.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %hsrctl.0.i, ptr %arrayidx.i.i14.i, align 1
  %34 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i13.i15.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %driver_data.i.i.i13.i15.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %driver_data.i.i.i13.i15.i, align 4
  %dl1_unmuted.i.i16.i = getelementptr inbounds %struct.twl6040_data, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %dl1_unmuted.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dl1_unmuted.i.i16.i, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not.i17.i = icmp eq i8 %38, 0
  br i1 %tobool.i.not.i17.i, label %twl6040_write.exit.i.if.then4_crit_edge, label %if.then3.i19.i

twl6040_write.exit.i.if.then4_crit_edge:          ; preds = %twl6040_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then3.i19.i:                                   ; preds = %twl6040_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i18.i = tail call i32 @twl6040_reg_write(ptr noundef %30, i32 noundef 17, i8 noundef zeroext %hsrctl.0.i) #6
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i19.i, %twl6040_write.exit.i.if.then4_crit_edge, %entry.if.then4_crit_edge
  %hs_power_mode = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 4
  %39 = ptrtoint ptr %hs_power_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %7, ptr %hs_power_mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl6040_pll_get_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %pll_power_mode = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pll_power_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pll_power_mode, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl6040_pll_put_enum(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %pll_power_mode = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %pll_power_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pll_power_mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_ep_drv_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %hs_power_mode_locked3 = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 5
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %hs_power_mode_locked3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %hs_power_mode_locked3, align 4
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %arrayidx.i.i = getelementptr %struct.twl6040_data, ptr %10, i32 0, i32 8, i32 0
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx.i5.i = getelementptr %struct.twl6040_data, ptr %10, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i5.i, align 1
  %and.i = and i8 %14, -11
  %and3.i = and i8 %16, -11
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i, align 4
  store i8 %and.i, ptr %arrayidx.i.i, align 1
  %19 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i13.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i13.i.i, align 4
  %dl1_unmuted.i.i.i = getelementptr inbounds %struct.twl6040_data, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %dl1_unmuted.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dl1_unmuted.i.i.i, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.not.i.i, label %if.then.twl6040_write.exit.i_crit_edge, label %if.then3.i.i

if.then.twl6040_write.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_write.exit.i

if.then3.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i = tail call i32 @twl6040_reg_write(ptr noundef %18, i32 noundef 16, i8 noundef zeroext %and.i) #6
  br label %twl6040_write.exit.i

twl6040_write.exit.i:                             ; preds = %if.then3.i.i, %if.then.twl6040_write.exit.i_crit_edge
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %parent.i10.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent.i10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i10.i, align 8
  %driver_data.i.i11.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i11.i, align 4
  %driver_data.i.i.i.i13.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i.i13.i, align 4
  %arrayidx.i.i14.i = getelementptr %struct.twl6040_data, ptr %31, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i14.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %and3.i, ptr %arrayidx.i.i14.i, align 1
  %33 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i13.i15.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.i13.i15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.i13.i15.i, align 4
  %dl1_unmuted.i.i16.i = getelementptr inbounds %struct.twl6040_data, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %dl1_unmuted.i.i16.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dl1_unmuted.i.i16.i, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.not.i17.i = icmp eq i8 %37, 0
  br i1 %tobool.i.not.i17.i, label %twl6040_write.exit.i.if.end_crit_edge, label %if.then3.i19.i

twl6040_write.exit.i.if.end_crit_edge:            ; preds = %twl6040_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i19.i:                                   ; preds = %twl6040_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i18.i = tail call i32 @twl6040_reg_write(ptr noundef %29, i32 noundef 17, i8 noundef zeroext %and3.i) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %38 = ptrtoint ptr %hs_power_mode_locked3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %hs_power_mode_locked3, align 4
  %hs_power_mode = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 4
  %39 = ptrtoint ptr %hs_power_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hs_power_mode, align 4
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i10 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i.i10, align 4
  %parent.i.i11 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %parent.i.i11 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i.i11, align 8
  %driver_data.i.i.i12 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  %arrayidx.i.i13 = getelementptr %struct.twl6040_data, ptr %44, i32 0, i32 8, i32 0
  %47 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i13, align 1
  %arrayidx.i5.i14 = getelementptr %struct.twl6040_data, ptr %44, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %arrayidx.i5.i14 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i5.i14, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i = icmp eq i32 %40, 0
  %and.i15 = and i8 %48, -11
  %and3.i16 = and i8 %50, -11
  %masksel.i = select i1 %tobool.not.i, i8 10, i8 0
  %hslctl.0.i = or i8 %and.i15, %masksel.i
  %hsrctl.0.i = or i8 %and3.i16, %masksel.i
  %51 = ptrtoint ptr %driver_data.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i.i12, align 4
  %53 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %hslctl.0.i, ptr %arrayidx.i.i13, align 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i13.i.i17 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %driver_data.i.i.i13.i.i17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver_data.i.i.i13.i.i17, align 4
  %dl1_unmuted.i.i.i18 = getelementptr inbounds %struct.twl6040_data, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %dl1_unmuted.i.i.i18 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %dl1_unmuted.i.i.i18, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.i.not.i.i19 = icmp eq i8 %59, 0
  br i1 %tobool.i.not.i.i19, label %if.else.twl6040_write.exit.i29_crit_edge, label %if.then3.i.i21

if.else.twl6040_write.exit.i29_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_write.exit.i29

if.then3.i.i21:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i.i20 = tail call i32 @twl6040_reg_write(ptr noundef %52, i32 noundef 16, i8 noundef zeroext %hslctl.0.i) #6
  br label %twl6040_write.exit.i29

twl6040_write.exit.i29:                           ; preds = %if.then3.i.i21, %if.else.twl6040_write.exit.i29_crit_edge
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %parent.i10.i22 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %parent.i10.i22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %parent.i10.i22, align 8
  %driver_data.i.i11.i23 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %driver_data.i.i11.i23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i11.i23, align 4
  %driver_data.i.i.i.i13.i24 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 8
  %66 = ptrtoint ptr %driver_data.i.i.i.i13.i24 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i.i.i.i13.i24, align 4
  %arrayidx.i.i14.i25 = getelementptr %struct.twl6040_data, ptr %67, i32 0, i32 8, i32 1
  %68 = ptrtoint ptr %arrayidx.i.i14.i25 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %hsrctl.0.i, ptr %arrayidx.i.i14.i25, align 1
  %69 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i13.i15.i26 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %driver_data.i.i.i13.i15.i26 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i.i13.i15.i26, align 4
  %dl1_unmuted.i.i16.i27 = getelementptr inbounds %struct.twl6040_data, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %dl1_unmuted.i.i16.i27 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %dl1_unmuted.i.i16.i27, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.i.not.i17.i28 = icmp eq i8 %73, 0
  br i1 %tobool.i.not.i17.i28, label %twl6040_write.exit.i29.if.end_crit_edge, label %if.then3.i19.i31

twl6040_write.exit.i29.if.end_crit_edge:          ; preds = %twl6040_write.exit.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3.i19.i31:                                 ; preds = %twl6040_write.exit.i29
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i18.i30 = tail call i32 @twl6040_reg_write(ptr noundef %65, i32 noundef 17, i8 noundef zeroext %hsrctl.0.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then3.i19.i31, %twl6040_write.exit.i29.if.end_crit_edge, %if.then3.i19.i, %twl6040_write.exit.i.if.end_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_hs_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %arrayidx.i = getelementptr %struct.twl6040_data, ptr %5, i32 0, i32 8, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx.i30 = getelementptr %struct.twl6040_data, ptr %5, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i30, align 1
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %conv11 = and i8 %9, -2
  %conv14 = and i8 %11, -2
  %masksel = zext i1 %tobool.not to i8
  %hslctl.0 = or i8 %conv11, %masksel
  %hsrctl.0 = or i8 %conv14, %masksel
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %hslctl.0, ptr %arrayidx.i, align 1
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i13.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i.i13.i, align 4
  %dl1_unmuted.i.i = getelementptr inbounds %struct.twl6040_data, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %dl1_unmuted.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dl1_unmuted.i.i, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not.i = icmp eq i8 %20, 0
  br i1 %tobool.i.not.i, label %entry.twl6040_write.exit_crit_edge, label %if.then3.i

entry.twl6040_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_write.exit

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call i32 @twl6040_reg_write(ptr noundef %13, i32 noundef 16, i8 noundef zeroext %hslctl.0) #6
  br label %twl6040_write.exit

twl6040_write.exit:                               ; preds = %if.then3.i, %entry.twl6040_write.exit_crit_edge
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %parent.i35 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %parent.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i35, align 8
  %driver_data.i.i36 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i36, align 4
  %driver_data.i.i.i.i38 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i.i38, align 4
  %arrayidx.i.i39 = getelementptr %struct.twl6040_data, ptr %28, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %arrayidx.i.i39 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %hsrctl.0, ptr %arrayidx.i.i39, align 1
  %30 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i13.i40 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %driver_data.i.i.i13.i40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver_data.i.i.i13.i40, align 4
  %dl1_unmuted.i.i41 = getelementptr inbounds %struct.twl6040_data, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %dl1_unmuted.i.i41 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %dl1_unmuted.i.i41, align 4, !range !325
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.i.not.i42 = icmp eq i8 %34, 0
  br i1 %tobool.i.not.i42, label %twl6040_write.exit.twl6040_write.exit46_crit_edge, label %if.then3.i44

twl6040_write.exit.twl6040_write.exit46_crit_edge: ; preds = %twl6040_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %twl6040_write.exit46

if.then3.i44:                                     ; preds = %twl6040_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i43 = tail call i32 @twl6040_reg_write(ptr noundef %26, i32 noundef 17, i8 noundef zeroext %hsrctl.0) #6
  br label %twl6040_write.exit46

twl6040_write.exit46:                             ; preds = %if.then3.i44, %twl6040_write.exit.twl6040_write.exit46_crit_edge
  tail call void @msleep(i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_soc_dapm_put_vibra_enum(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #6
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %dev.i.i = getelementptr i8, ptr %call.i, i32 -164
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 46, i32 %4)
  %cmp.i = icmp ugt i32 %4, 46
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %13 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %4, label %sw.default.i [
    i32 16, label %if.end.i.sw.bb.i_crit_edge
    i32 17, label %if.end.i.sw.bb.i_crit_edge10
    i32 19, label %if.end.i.sw.bb.i_crit_edge11
    i32 20, label %if.end.i.sw.bb.i_crit_edge12
    i32 22, label %if.end.i.sw.bb.i_crit_edge13
  ]

if.end.i.sw.bb.i_crit_edge13:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge12:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge11:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge10:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge10, %if.end.i.sw.bb.i_crit_edge11, %if.end.i.sw.bb.i_crit_edge12, %if.end.i.sw.bb.i_crit_edge13
  %sub.i = add nsw i32 %4, -16
  %arrayidx.i = getelementptr %struct.twl6040_data, ptr %8, i32 0, i32 8, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @twl6040_reg_read(ptr noundef %12, i32 noundef %4) #6
  %conv.i = trunc i32 %call2.i to i8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  %value.0.i = phi i8 [ %conv.i, %sw.default.i ], [ %15, %sw.bb.i ]
  %16 = and i8 %value.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %phi.cmp = icmp eq i8 %16, 1
  br i1 %phi.cmp, label %sw.epilog.i.cleanup_crit_edge, label %sw.epilog.i.if.end_crit_edge

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.epilog.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @snd_soc_dapm_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -16, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl6040_accessory_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %hs_jack2 = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %hs_jack2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hs_jack2, align 4
  %report = getelementptr i8, ptr %work, i32 100
  %4 = ptrtoint ptr %report to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %report, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %mutex.i = getelementptr inbounds %struct.twl6040_data, ptr %9, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #6
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i8.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i8.i, align 4
  %call2.i.i = tail call i32 @twl6040_reg_read(ptr noundef %15, i32 noundef 46) #6
  %and.i = and i32 %call2.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %.report.i = select i1 %tobool.not.i, i32 0, i32 %5
  tail call void @snd_soc_jack_report(ptr noundef %3, i32 noundef %.report.i, i32 noundef %5) #6
  tail call void @mutex_unlock(ptr noundef %mutex.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_audio_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %4 = load ptr, ptr @system_power_efficient_wq, align 4
  %work = getelementptr inbounds %struct.twl6040_data, ptr %3, i32 0, i32 11, i32 1
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef 20) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clk_id)
  %switch = icmp ult i32 %clk_id, 2
  br i1 %switch, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %pll = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clk_id, ptr %pll, align 4
  %clk_in = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 9
  %7 = ptrtoint ptr %clk_in to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %clk_in, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.111, i32 noundef %clk_id) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge45
  ]

entry.sw.bb2_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %3 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.twl6040_data, ptr %12, i32 0, i32 8, i32 0
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx.i52.i = getelementptr %struct.twl6040_data, ptr %12, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i52.i, align 1
  %arrayidx.i58.i = getelementptr %struct.twl6040_data, ptr %12, i32 0, i32 8, i32 3
  %17 = ptrtoint ptr %arrayidx.i58.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i58.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not.i = icmp eq i32 %mute, 0
  %and.i = and i8 %18, -2
  %and5.i = and i8 %14, -6
  %and6.i = and i8 %16, -6
  %hslctl.0.i = select i1 %tobool.not.i, i8 %14, i8 %and5.i
  %hsrctl.0.i = select i1 %tobool.not.i, i8 %16, i8 %and6.i
  %earctl.0.i = select i1 %tobool.not.i, i8 %18, i8 %and.i
  %call7.i = tail call i32 @twl6040_reg_write(ptr noundef %10, i32 noundef 19, i8 noundef zeroext %earctl.0.i) #6
  %call9.i = tail call i32 @twl6040_reg_write(ptr noundef %10, i32 noundef 16, i8 noundef zeroext %hslctl.0.i) #6
  %call11.i = tail call i32 @twl6040_reg_write(ptr noundef %10, i32 noundef 17, i8 noundef zeroext %hsrctl.0.i) #6
  %dl1_unmuted.i = getelementptr inbounds %struct.twl6040_data, ptr %12, i32 0, i32 6
  %frombool.i = zext i1 %tobool.not.i to i8
  %19 = ptrtoint ptr %dl1_unmuted.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %dl1_unmuted.i, align 4
  %20 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component, align 4
  %dev.i11 = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i11, align 4
  %parent.i12 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %parent.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i12, align 8
  %driver_data.i.i13 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %driver_data.i.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i13, align 4
  %driver_data.i.i.i14 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i14, align 4
  %arrayidx.i64.i = getelementptr %struct.twl6040_data, ptr %29, i32 0, i32 8, i32 4
  %30 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i64.i, align 1
  %arrayidx.i70.i = getelementptr %struct.twl6040_data, ptr %29, i32 0, i32 8, i32 6
  %32 = ptrtoint ptr %arrayidx.i70.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i70.i, align 1
  %and18.i = and i8 %31, -84
  %and19.i = and i8 %33, -84
  %hflctl.0.i = select i1 %tobool.not.i, i8 %31, i8 %and18.i
  %hfrctl.0.i = select i1 %tobool.not.i, i8 %33, i8 %and19.i
  %call22.i = tail call i32 @twl6040_reg_write(ptr noundef %27, i32 noundef 20, i8 noundef zeroext %hflctl.0.i) #6
  %call24.i = tail call i32 @twl6040_reg_write(ptr noundef %27, i32 noundef 22, i8 noundef zeroext %hfrctl.0.i) #6
  %dl2_unmuted.i = getelementptr inbounds %struct.twl6040_data, ptr %29, i32 0, i32 7
  %34 = ptrtoint ptr %dl2_unmuted.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool.i, ptr %dl2_unmuted.i, align 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge45
  %component3 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %35 = ptrtoint ptr %component3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %component3, align 4
  %dev.i15 = getelementptr inbounds %struct.snd_soc_component, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dev.i15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i15, align 4
  %parent.i16 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i16, align 8
  %driver_data.i.i17 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %driver_data.i.i17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %driver_data.i.i17, align 4
  %driver_data.i.i.i18 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i18, align 4
  %45 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %1, label %sw.bb2.sw.epilog_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb13.i
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i19 = getelementptr %struct.twl6040_data, ptr %44, i32 0, i32 8, i32 0
  %46 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i19, align 1
  %arrayidx.i52.i20 = getelementptr %struct.twl6040_data, ptr %44, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %arrayidx.i52.i20 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i52.i20, align 1
  %arrayidx.i58.i21 = getelementptr %struct.twl6040_data, ptr %44, i32 0, i32 8, i32 3
  %50 = ptrtoint ptr %arrayidx.i58.i21 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i58.i21, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not.i22 = icmp eq i32 %mute, 0
  %and.i23 = and i8 %51, -2
  %and5.i24 = and i8 %47, -6
  %and6.i25 = and i8 %49, -6
  %hslctl.0.i26 = select i1 %tobool.not.i22, i8 %47, i8 %and5.i24
  %hsrctl.0.i27 = select i1 %tobool.not.i22, i8 %49, i8 %and6.i25
  %earctl.0.i28 = select i1 %tobool.not.i22, i8 %51, i8 %and.i23
  %call7.i29 = tail call i32 @twl6040_reg_write(ptr noundef %42, i32 noundef 19, i8 noundef zeroext %earctl.0.i28) #6
  %call9.i30 = tail call i32 @twl6040_reg_write(ptr noundef %42, i32 noundef 16, i8 noundef zeroext %hslctl.0.i26) #6
  %call11.i31 = tail call i32 @twl6040_reg_write(ptr noundef %42, i32 noundef 17, i8 noundef zeroext %hsrctl.0.i27) #6
  %dl1_unmuted.i32 = getelementptr inbounds %struct.twl6040_data, ptr %44, i32 0, i32 6
  %frombool.i33 = zext i1 %tobool.not.i22 to i8
  %52 = ptrtoint ptr %dl1_unmuted.i32 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %frombool.i33, ptr %dl1_unmuted.i32, align 4
  br label %sw.epilog

sw.bb13.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i64.i34 = getelementptr %struct.twl6040_data, ptr %44, i32 0, i32 8, i32 4
  %53 = ptrtoint ptr %arrayidx.i64.i34 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i64.i34, align 1
  %arrayidx.i70.i35 = getelementptr %struct.twl6040_data, ptr %44, i32 0, i32 8, i32 6
  %55 = ptrtoint ptr %arrayidx.i70.i35 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i70.i35, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool16.not.i36 = icmp eq i32 %mute, 0
  %and18.i37 = and i8 %54, -84
  %and19.i38 = and i8 %56, -84
  %hflctl.0.i39 = select i1 %tobool16.not.i36, i8 %54, i8 %and18.i37
  %hfrctl.0.i40 = select i1 %tobool16.not.i36, i8 %56, i8 %and19.i38
  %call22.i41 = tail call i32 @twl6040_reg_write(ptr noundef %42, i32 noundef 20, i8 noundef zeroext %hflctl.0.i39) #6
  %call24.i42 = tail call i32 @twl6040_reg_write(ptr noundef %42, i32 noundef 22, i8 noundef zeroext %hfrctl.0.i40) #6
  %dl2_unmuted.i43 = getelementptr inbounds %struct.twl6040_data, ptr %44, i32 0, i32 7
  %frombool27.i44 = zext i1 %tobool16.not.i36 to i8
  %57 = ptrtoint ptr %dl2_unmuted.i43 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %frombool27.i44, ptr %dl2_unmuted.i43, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13.i, %sw.bb.i, %sw.bb2.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %pll_power_mode = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %pll_power_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll_power_mode, align 4
  %arrayidx = getelementptr [2 x %struct.snd_pcm_hw_constraint_list], ptr @sysclk_constraints, i32 0, i32 %9
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %7, i32 noundef 0, i32 noundef 11, ptr noundef %arrayidx) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %7, label %do.end8 [
    i32 11250, label %entry.sw.bb_crit_edge
    i32 22500, label %entry.sw.bb_crit_edge18
    i32 44100, label %entry.sw.bb_crit_edge19
    i32 88200, label %entry.sw.bb_crit_edge20
    i32 8000, label %entry.sw.bb4_crit_edge
    i32 16000, label %entry.sw.bb4_crit_edge21
    i32 32000, label %entry.sw.bb4_crit_edge22
    i32 48000, label %entry.sw.bb4_crit_edge23
    i32 96000, label %entry.sw.bb4_crit_edge24
  ]

entry.sw.bb4_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge19:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge18, %entry.sw.bb_crit_edge19, %entry.sw.bb_crit_edge20
  %pll = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %do.end, label %if.end, !prof !324

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.113, i32 noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %sysclk = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 10
  %11 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 17640000, ptr %sysclk, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge21, %entry.sw.bb4_crit_edge22, %entry.sw.bb4_crit_edge23, %entry.sw.bb4_crit_edge24
  %sysclk5 = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %sysclk5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 19200000, ptr %sysclk5, align 4
  br label %cleanup

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.116, i32 noundef %7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %sw.bb4, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -22, %do.end ], [ 0, %sw.bb4 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.118) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %pll = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pll, align 4
  %clk_in = getelementptr inbounds %struct.twl6040_data, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %clk_in to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_in, align 4
  %call5 = tail call i32 @twl6040_set_pll(ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.121, i32 noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end10 ], [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 164)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !257, !258, !259, !261, !262, !264, !266, !267, !268, !269, !270, !271, !272, !274, !276, !278, !280, !282, !284, !286, !288, !289, !290, !291, !293, !295, !297, !299, !300, !301, !302, !304, !305, !306, !308, !309, !310, !311, !313, !314}
!llvm.module.flags = !{!315, !316, !317, !318, !319, !320, !321, !322}
!llvm.ident = !{!323}

!0 = !{ptr @__ksymtab_twl6040_hs_jack_detect, !1, !"__ksymtab_twl6040_hs_jack_detect", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/twl6040.c", i32 299, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/twl6040.c", i32 526, i32 40}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/twl6040.c", i32 529, i32 40}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/twl6040.c", i32 530, i32 37}
!8 = !{ptr @__ksymtab_twl6040_get_dl1_gain, !9, !"__ksymtab_twl6040_get_dl1_gain", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/twl6040.c", i32 542, i32 1}
!10 = !{ptr @__ksymtab_twl6040_get_clk_id, !11, !"__ksymtab_twl6040_get_clk_id", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/twl6040.c", i32 550, i32 1}
!12 = !{ptr @__ksymtab_twl6040_get_trim_value, !13, !"__ksymtab_twl6040_get_trim_value", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/twl6040.c", i32 559, i32 1}
!14 = !{ptr @__ksymtab_twl6040_get_hs_step_size, !15, !"__ksymtab_twl6040_get_hs_step_size", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/twl6040.c", i32 572, i32 1}
!16 = !{ptr @__initcall__kmod_snd_soc_twl6040__294_1173_twl6040_codec_driver_init6, !17, !"__initcall__kmod_snd_soc_twl6040__294_1173_twl6040_codec_driver_init6", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/twl6040.c", i32 1173, i32 1}
!18 = !{ptr @__exitcall_twl6040_codec_driver_exit, !17, !"__exitcall_twl6040_codec_driver_exit", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description295, !20, !"__UNIQUE_ID_description295", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/twl6040.c", i32 1175, i32 1}
!21 = !{ptr @__UNIQUE_ID_author296, !22, !"__UNIQUE_ID_author296", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/twl6040.c", i32 1176, i32 1}
!23 = !{ptr @__UNIQUE_ID_file297, !24, !"__UNIQUE_ID_file297", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/twl6040.c", i32 1177, i32 1}
!25 = !{ptr @__UNIQUE_ID_license298, !24, !"__UNIQUE_ID_license298", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/twl6040.c", i32 1168, i32 11}
!28 = !{ptr @twl6040_codec_driver, !29, !"twl6040_codec_driver", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/twl6040.c", i32 1166, i32 31}
!30 = !{ptr @soc_component_dev_twl6040, !31, !"soc_component_dev_twl6040", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/twl6040.c", i32 1141, i32 46}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/twl6040.c", i32 576, i32 2}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/twl6040.c", i32 578, i32 2}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/twl6040.c", i32 582, i32 2}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/twl6040.c", i32 586, i32 2}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/twl6040.c", i32 588, i32 2}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/twl6040.c", i32 590, i32 2}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/twl6040.c", i32 593, i32 2}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/twl6040.c", i32 598, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/twl6040.c", i32 602, i32 2}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/twl6040.c", i32 605, i32 2}
!52 = !{ptr @twl6040_snd_controls, !53, !"twl6040_snd_controls", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/twl6040.c", i32 574, i32 38}
!54 = !{ptr @mic_preamp_tlv, !55, !"mic_preamp_tlv", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/twl6040.c", i32 342, i32 8}
!56 = !{ptr @mic_amp_tlv, !57, !"mic_amp_tlv", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/twl6040.c", i32 348, i32 8}
!58 = !{ptr @afm_amp_tlv, !59, !"afm_amp_tlv", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/twl6040.c", i32 354, i32 8}
!60 = !{ptr @hs_tlv, !61, !"hs_tlv", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/twl6040.c", i32 360, i32 8}
!62 = !{ptr @hf_tlv, !63, !"hf_tlv", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/twl6040.c", i32 366, i32 8}
!64 = !{ptr @ep_tlv, !65, !"ep_tlv", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/twl6040.c", i32 372, i32 8}
!66 = !{ptr @twl6040_power_mode_enum, !67, !"twl6040_power_mode_enum", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/twl6040.c", i32 469, i32 8}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/twl6040.c", i32 466, i32 2}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/twl6040.c", i32 466, i32 15}
!72 = !{ptr @twl6040_power_mode_texts, !73, !"twl6040_power_mode_texts", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/twl6040.c", i32 465, i32 20}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/twl6040.c", i32 611, i32 2}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/twl6040.c", i32 612, i32 2}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/twl6040.c", i32 613, i32 2}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/twl6040.c", i32 614, i32 2}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/twl6040.c", i32 615, i32 2}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/twl6040.c", i32 620, i32 2}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/twl6040.c", i32 621, i32 2}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/twl6040.c", i32 623, i32 2}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/twl6040.c", i32 624, i32 2}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/twl6040.c", i32 625, i32 2}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/twl6040.c", i32 626, i32 2}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/twl6040.c", i32 629, i32 2}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/twl6040.c", i32 631, i32 2}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/twl6040.c", i32 635, i32 2}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/twl6040.c", i32 637, i32 2}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/twl6040.c", i32 641, i32 2}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/twl6040.c", i32 643, i32 2}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/twl6040.c", i32 647, i32 2}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/twl6040.c", i32 648, i32 2}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/twl6040.c", i32 651, i32 2}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/twl6040.c", i32 653, i32 2}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/twl6040.c", i32 655, i32 2}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/twl6040.c", i32 657, i32 2}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/twl6040.c", i32 661, i32 2}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/twl6040.c", i32 662, i32 2}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/twl6040.c", i32 663, i32 2}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/twl6040.c", i32 664, i32 2}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/twl6040.c", i32 666, i32 2}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/twl6040.c", i32 668, i32 2}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/twl6040.c", i32 670, i32 2}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/twl6040.c", i32 673, i32 2}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/twl6040.c", i32 675, i32 2}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/twl6040.c", i32 678, i32 2}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/twl6040.c", i32 680, i32 2}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/twl6040.c", i32 683, i32 2}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/twl6040.c", i32 685, i32 2}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/twl6040.c", i32 687, i32 2}
!148 = !{ptr @.str.60, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/twl6040.c", i32 691, i32 2}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/twl6040.c", i32 693, i32 2}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/twl6040.c", i32 695, i32 2}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/twl6040.c", i32 697, i32 2}
!156 = !{ptr @.str.64, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/twl6040.c", i32 699, i32 2}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/twl6040.c", i32 703, i32 2}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/twl6040.c", i32 705, i32 2}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/twl6040.c", i32 708, i32 2}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/twl6040.c", i32 710, i32 2}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/twl6040.c", i32 712, i32 2}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/twl6040.c", i32 717, i32 2}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/twl6040.c", i32 719, i32 2}
!172 = !{ptr @twl6040_dapm_widgets, !173, !"twl6040_dapm_widgets", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/twl6040.c", i32 609, i32 41}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/twl6040.c", i32 425, i32 2}
!176 = !{ptr @amicl_control, !177, !"amicl_control", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/twl6040.c", i32 424, i32 38}
!178 = !{ptr @twl6040_enum, !179, !"twl6040_enum", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/twl6040.c", i32 382, i32 30}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/twl6040.c", i32 376, i32 3}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/twl6040.c", i32 376, i32 18}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/twl6040.c", i32 376, i32 30}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/twl6040.c", i32 376, i32 45}
!188 = !{ptr @twl6040_amicl_texts, !189, !"twl6040_amicl_texts", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/twl6040.c", i32 375, i32 20}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/twl6040.c", i32 380, i32 18}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/twl6040.c", i32 380, i32 29}
!194 = !{ptr @twl6040_amicr_texts, !195, !"twl6040_amicr_texts", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/twl6040.c", i32 379, i32 20}
!196 = !{ptr @amicr_control, !197, !"amicr_control", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/twl6040.c", i32 427, i32 38}
!198 = !{ptr @hfl_mux_controls, !199, !"hfl_mux_controls", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/twl6040.c", i32 438, i32 38}
!200 = !{ptr @twl6040_hf_enum, !201, !"twl6040_hf_enum", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/twl6040.c", i32 404, i32 30}
!202 = !{ptr @.str.80, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/twl6040.c", i32 401, i32 9}
!204 = !{ptr @.str.81, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/twl6040.c", i32 401, i32 19}
!206 = !{ptr @twl6040_hf_texts, !207, !"twl6040_hf_texts", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/twl6040.c", i32 400, i32 20}
!208 = !{ptr @hfr_mux_controls, !209, !"hfr_mux_controls", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/twl6040.c", i32 441, i32 38}
!210 = !{ptr @hsl_mux_controls, !211, !"hsl_mux_controls", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/twl6040.c", i32 431, i32 38}
!212 = !{ptr @twl6040_hs_enum, !213, !"twl6040_hs_enum", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/twl6040.c", i32 393, i32 30}
!214 = !{ptr @.str.82, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/twl6040.c", i32 390, i32 9}
!216 = !{ptr @twl6040_hs_texts, !217, !"twl6040_hs_texts", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/twl6040.c", i32 389, i32 20}
!218 = !{ptr @hsr_mux_controls, !219, !"hsr_mux_controls", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/twl6040.c", i32 434, i32 38}
!220 = !{ptr @vibral_mux_controls, !221, !"vibral_mux_controls", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/twl6040.c", i32 454, i32 38}
!222 = !{ptr @twl6040_vibra_enum, !223, !"twl6040_vibra_enum", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/twl6040.c", i32 415, i32 30}
!224 = !{ptr @.str.83, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/twl6040.c", i32 412, i32 2}
!226 = !{ptr @.str.84, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/twl6040.c", i32 412, i32 14}
!228 = !{ptr @twl6040_vibrapath_texts, !229, !"twl6040_vibrapath_texts", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/twl6040.c", i32 411, i32 20}
!230 = !{ptr @vibrar_mux_controls, !231, !"vibrar_mux_controls", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/twl6040.c", i32 459, i32 38}
!232 = !{ptr @.str.85, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/twl6040.c", i32 445, i32 2}
!234 = !{ptr @ep_path_enable_control, !235, !"ep_path_enable_control", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/twl6040.c", i32 444, i32 38}
!236 = !{ptr @auxl_switch_control, !237, !"auxl_switch_control", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/twl6040.c", i32 447, i32 38}
!238 = !{ptr @auxr_switch_control, !239, !"auxr_switch_control", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/twl6040.c", i32 450, i32 38}
!240 = !{ptr @.str.89, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/twl6040.c", i32 726, i32 23}
!242 = !{ptr @.str.90, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/twl6040.c", i32 727, i32 23}
!244 = !{ptr @.str.91, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/twl6040.c", i32 732, i32 23}
!246 = !{ptr @.str.92, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/twl6040.c", i32 737, i32 22}
!248 = !{ptr @.str.93, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/twl6040.c", i32 740, i32 3}
!250 = !{ptr @.str.94, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/twl6040.c", i32 741, i32 3}
!252 = !{ptr @intercon, !253, !"intercon", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/twl6040.c", i32 724, i32 40}
!254 = !{ptr @twl6040_probe.__key, !255, !"__key", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/twl6040.c", i32 1115, i32 2}
!256 = !{ptr @.str.95, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @twl6040_probe.__key.96, !255, !"__key", i1 false, i1 false}
!258 = !{ptr @.str.97, !255, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @twl6040_probe.__key.98, !260, !"__key", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/twl6040.c", i32 1117, i32 2}
!261 = !{ptr @.str.99, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.100, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/twl6040.c", i32 1122, i32 6}
!264 = !{ptr @.str.101, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/twl6040.c", i32 1124, i32 3}
!266 = !{ptr @.str.102, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.103, !265, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.104, !265, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.105, !265, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @twl6040_probe._entry, !265, !"_entry", i1 false, i1 false}
!271 = !{ptr @twl6040_probe._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.106, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/twl6040.c", i32 1029, i32 10}
!274 = !{ptr @.str.107, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/twl6040.c", i32 1048, i32 10}
!276 = !{ptr @.str.108, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/twl6040.c", i32 1060, i32 10}
!278 = !{ptr @.str.109, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/twl6040.c", i32 1072, i32 10}
!280 = !{ptr @.str.110, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/twl6040.c", i32 1084, i32 10}
!282 = !{ptr @twl6040_dai, !283, !"twl6040_dai", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/twl6040.c", i32 1027, i32 34}
!284 = !{ptr @twl6040_dai_ops, !285, !"twl6040_dai_ops", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/twl6040.c", i32 1018, i32 37}
!286 = !{ptr @.str.111, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/twl6040.c", i32 945, i32 3}
!288 = !{ptr @.str.112, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @twl6040_set_dai_sysclk._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @twl6040_set_dai_sysclk._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @sysclk_constraints, !292, !"sysclk_constraints", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/twl6040.c", i32 90, i32 48}
!293 = !{ptr @lp_rates, !294, !"lp_rates", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/twl6040.c", i32 70, i32 27}
!295 = !{ptr @hp_rates, !296, !"hp_rates", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/twl6040.c", i32 82, i32 27}
!297 = !{ptr @.str.113, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/twl6040.c", i32 888, i32 4}
!299 = !{ptr @.str.114, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @twl6040_hw_params._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @twl6040_hw_params._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.116, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/twl6040.c", i32 902, i32 3}
!304 = !{ptr @twl6040_hw_params._entry.115, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @twl6040_hw_params._entry_ptr.117, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.118, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/twl6040.c", i32 918, i32 3}
!308 = !{ptr @.str.119, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @twl6040_prepare._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @twl6040_prepare._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.121, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/twl6040.c", i32 925, i32 3}
!313 = !{ptr @twl6040_prepare._entry.120, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @twl6040_prepare._entry_ptr.122, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{i32 1, !"wchar_size", i32 2}
!316 = !{i32 1, !"min_enum_size", i32 4}
!317 = !{i32 8, !"branch-target-enforcement", i32 0}
!318 = !{i32 8, !"sign-return-address", i32 0}
!319 = !{i32 8, !"sign-return-address-all", i32 0}
!320 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!321 = !{i32 7, !"uwtable", i32 1}
!322 = !{i32 7, !"frame-pointer", i32 2}
!323 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!324 = !{!"branch_weights", i32 1, i32 2000}
!325 = !{i8 0, i8 2}
