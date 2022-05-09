; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/88pm860x-codec.c_pt.bc'
source_filename = "../sound/soc/codecs/88pm860x-codec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pm860x_hs_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_pm860x_hs_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_pm860x_hs_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm860x_hs_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22pm860x_hs_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_pm860x_hs_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm860x_mic_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_pm860x_mic_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_pm860x_mic_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm860x_mic_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22pm860x_mic_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_pm860x_mic_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.st_gain = type { i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.pm860x_priv = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.pm860x_det, [4 x i32], [4 x [21 x i8]] }
%struct.pm860x_det = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pm860x_chip = type { ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, i32, i16, i32, i32, i32, i32, i8, i8, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__kstrtab_pm860x_hs_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm860x_hs_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_pm860x_hs_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm860x_hs_jack_detect to i32), ptr @__kstrtab_pm860x_hs_jack_detect, ptr @__kstrtabns_pm860x_hs_jack_detect }, section "___ksymtab_gpl+pm860x_hs_jack_detect", align 4
@__kstrtab_pm860x_mic_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm860x_mic_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_pm860x_mic_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm860x_mic_jack_detect to i32), ptr @__kstrtab_pm860x_mic_jack_detect, ptr @__kstrtabns_pm860x_mic_jack_detect }, section "___ksymtab_gpl+pm860x_mic_jack_detect", align 4
@__initcall__kmod_snd_soc_88pm860x__323_1403_pm860x_codec_driver_init6 = internal global ptr @pm860x_codec_driver_init, section ".initcall6.init", align 4
@pm860x_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm860x_codec_probe, ptr @pm860x_codec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm860x_codec_driver_exit = internal global ptr @pm860x_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description324 = internal constant [50 x i8] c"snd_soc_88pm860x.description=ASoC 88PM860x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author325 = internal constant [68 x i8] c"snd_soc_88pm860x.author=Haojian Zhuang <haojian.zhuang@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [56 x i8] c"snd_soc_88pm860x.file=sound/soc/codecs/snd-soc-88pm860x\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [29 x i8] c"snd_soc_88pm860x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias328 = internal constant [47 x i8] c"snd_soc_88pm860x.alias=platform:88pm860x-codec\00", section ".modinfo", align 1
@pm860x_component_handler.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_88pm860x\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pm860x_component_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/codecs/88pm860x-codec.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"headphone report:0x%x, mask:%x\0A\00", [32 x i8] zeroinitializer }, align 32
@pm860x_component_handler.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"microphone report:0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_snd_soc_jack_irq = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/asoc.h\00", [36 x i8] zeroinitializer }, align 32
@trace_snd_soc_jack_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"88pm860x-codec\00", [17 x i8] zeroinitializer }, align 32
@pm860x_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1373, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get IRQ resources\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pm860x_codec_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm860x_codec_probe._entry_ptr = internal global ptr @pm860x_codec_probe._entry, section ".printk_index", align 4
@soc_component_dev_pm860x = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @pm860x_snd_controls, i32 22, ptr @pm860x_dapm_widgets, i32 65, ptr @pm860x_dapm_routes, i32 82, ptr @pm860x_probe, ptr @pm860x_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pm860x_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.149, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_pcm_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.58, i64 1099511627780, i32 170, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.56, i64 1099511627780, i32 170, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.150, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.63, i64 1099511627780, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.60, i64 1099511627780, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@pm860x_codec_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 1384, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register component\0A\00", [34 x i8] zeroinitializer }, align 32
@pm860x_codec_probe._entry_ptr.15 = internal global ptr @pm860x_codec_probe._entry.13, section ".printk_index", align 4
@pm860x_snd_controls = internal constant { [22 x %struct.snd_kcontrol_new], [256 x i8] } { [22 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @aux_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @mic_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_2r_st, ptr @snd_soc_put_volsw_2r_st, %union.anon.94 { ptr @st_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_2r_out, ptr @snd_soc_put_volsw_2r_out, %union.anon.94 { ptr @dpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_2r_out, ptr @snd_soc_put_volsw_2r_out, %union.anon.94 { ptr @dpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw_2r_out, ptr @snd_soc_put_volsw_2r_out, %union.anon.94 { ptr @dpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_hs1_opamp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_hs2_opamp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_hs1_pa_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_hs2_pa_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_lo1_opamp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_lo2_opamp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_lo1_pa_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_lo2_pa_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_spk_ear_opamp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_spk_pa_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pm860x_ear_pa_enum to i32) }], [256 x i8] zeroinitializer }, align 32
@pm860x_dapm_routes = internal constant { [82 x %struct.snd_soc_dapm_route], [1080 x i8] } { [82 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.138, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.138, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.139, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.139, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.128, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.128, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.127, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.133, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.133, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.129, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.130, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.131, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.131, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.127, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.132, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.125, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.125, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.126, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.126, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.140, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr @.str.141, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.129, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.130, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.129, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.130, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.129, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.130, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.129, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.130, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.143, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.143, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.143, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.143, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.129, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.130, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.146, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1080 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -900, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 209, i32 210, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AUX Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@aux_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 2, i32 1, i32 8, i32 0, i32 0, i32 3, i32 7, i32 1, i32 8, i32 -600, i32 600], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 210, i32 210, i32 0, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MIC1 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@mic_tlv = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 120, i32 0, i32 0, i32 1, i32 8, i32 -2300, i32 0, i32 1, i32 1, i32 1, i32 8, i32 -1700, i32 0, i32 2, i32 2, i32 1, i32 8, i32 -1350, i32 0, i32 3, i32 3, i32 1, i32 8, i32 -1100, i32 0, i32 4, i32 7, i32 1, i32 8, i32 -900, i32 300], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 209, i32 209, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MIC3 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 209, i32 209, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Volume\00", [16 x i8] zeroinitializer }, align 32
@st_tlv = internal constant { [50 x i32], [56 x i8] } { [50 x i32] [i32 3, i32 192, i32 0, i32 1, i32 1, i32 8, i32 -12041, i32 602, i32 2, i32 3, i32 1, i32 8, i32 -11087, i32 250, i32 4, i32 5, i32 1, i32 8, i32 -10643, i32 158, i32 6, i32 7, i32 1, i32 8, i32 -10351, i32 116, i32 8, i32 9, i32 1, i32 8, i32 -10133, i32 92, i32 10, i32 13, i32 1, i32 8, i32 -9958, i32 70, i32 14, i32 17, i32 1, i32 8, i32 -9689, i32 53, i32 18, i32 271, i32 1, i32 8, i32 -9484, i32 37], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 271, i32 271, i32 181, i32 182, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 3, i32 1, i32 8, i32 -1600, i32 65836, i32 4, i32 4, i32 1, i32 8, i32 -520, i32 0, i32 5, i32 5, i32 1, i32 8, i32 -330, i32 0, i32 6, i32 7, i32 1, i32 8, i32 -220, i32 220], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 217, i32 217, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 215, i32 216, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headset Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 213, i32 214, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hifi Left Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@dpga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9450, i32 65686], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 199, i32 200, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hifi Right Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 201, i32 202, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Lofi Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 197, i32 198, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Headset1 Operational Amplifier Current\00", [57 x i8] zeroinitializer }, align 32
@pm860x_hs1_opamp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 213, i8 5, i8 5, i32 4, i32 3, ptr @pm860x_opamp_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Headset2 Operational Amplifier Current\00", [57 x i8] zeroinitializer }, align 32
@pm860x_hs2_opamp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 214, i8 5, i8 5, i32 4, i32 3, ptr @pm860x_opamp_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headset1 Amplifier Current\00", [37 x i8] zeroinitializer }, align 32
@pm860x_hs1_pa_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 213, i8 3, i8 3, i32 4, i32 3, ptr @pm860x_pa_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headset2 Amplifier Current\00", [37 x i8] zeroinitializer }, align 32
@pm860x_hs2_pa_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 214, i8 3, i8 3, i32 4, i32 3, ptr @pm860x_pa_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Lineout1 Operational Amplifier Current\00", [57 x i8] zeroinitializer }, align 32
@pm860x_lo1_opamp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 215, i8 5, i8 5, i32 4, i32 3, ptr @pm860x_opamp_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Lineout2 Operational Amplifier Current\00", [57 x i8] zeroinitializer }, align 32
@pm860x_lo2_opamp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 216, i8 5, i8 5, i32 4, i32 3, ptr @pm860x_opamp_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Lineout1 Amplifier Current\00", [37 x i8] zeroinitializer }, align 32
@pm860x_lo1_pa_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 215, i8 3, i8 3, i32 4, i32 3, ptr @pm860x_pa_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Lineout2 Amplifier Current\00", [37 x i8] zeroinitializer }, align 32
@pm860x_lo2_pa_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 216, i8 3, i8 3, i32 4, i32 3, ptr @pm860x_pa_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Speaker Operational Amplifier Current\00", [58 x i8] zeroinitializer }, align 32
@pm860x_spk_ear_opamp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 217, i8 3, i8 3, i32 4, i32 3, ptr @pm860x_opamp_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speaker Amplifier Current\00", [38 x i8] zeroinitializer }, align 32
@pm860x_spk_pa_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 217, i8 5, i8 5, i32 4, i32 3, ptr @pm860x_pa_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Earpiece Amplifier Current\00", [37 x i8] zeroinitializer }, align 32
@pm860x_ear_pa_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 218, i8 0, i8 0, i32 4, i32 3, ptr @pm860x_pa_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@st_table = internal constant { [272 x %struct.st_gain], [800 x i8] } { [272 x %struct.st_gain] [%struct.st_gain { i32 -12041, i32 1, i32 15 }, %struct.st_gain { i32 -11439, i32 1, i32 14 }, %struct.st_gain { i32 -11087, i32 3, i32 15 }, %struct.st_gain { i32 -10837, i32 1, i32 13 }, %struct.st_gain { i32 -10643, i32 5, i32 15 }, %struct.st_gain { i32 -10485, i32 3, i32 14 }, %struct.st_gain { i32 -10351, i32 7, i32 15 }, %struct.st_gain { i32 -10235, i32 1, i32 12 }, %struct.st_gain { i32 -10133, i32 9, i32 15 }, %struct.st_gain { i32 -10041, i32 5, i32 14 }, %struct.st_gain { i32 -9958, i32 11, i32 15 }, %struct.st_gain { i32 -9883, i32 3, i32 13 }, %struct.st_gain { i32 -9813, i32 13, i32 15 }, %struct.st_gain { i32 -9749, i32 7, i32 14 }, %struct.st_gain { i32 -9689, i32 15, i32 15 }, %struct.st_gain { i32 -9633, i32 1, i32 11 }, %struct.st_gain { i32 -9580, i32 17, i32 15 }, %struct.st_gain { i32 -9531, i32 9, i32 14 }, %struct.st_gain { i32 -9484, i32 19, i32 15 }, %struct.st_gain { i32 -9439, i32 5, i32 13 }, %struct.st_gain { i32 -9397, i32 21, i32 15 }, %struct.st_gain { i32 -9356, i32 11, i32 14 }, %struct.st_gain { i32 -9318, i32 23, i32 15 }, %struct.st_gain { i32 -9281, i32 3, i32 12 }, %struct.st_gain { i32 -9245, i32 25, i32 15 }, %struct.st_gain { i32 -9211, i32 13, i32 14 }, %struct.st_gain { i32 -9178, i32 27, i32 15 }, %struct.st_gain { i32 -9147, i32 7, i32 13 }, %struct.st_gain { i32 -9116, i32 29, i32 15 }, %struct.st_gain { i32 -9087, i32 15, i32 14 }, %struct.st_gain { i32 -9058, i32 31, i32 15 }, %struct.st_gain { i32 -9031, i32 1, i32 10 }, %struct.st_gain { i32 -8978, i32 17, i32 14 }, %struct.st_gain { i32 -8929, i32 9, i32 13 }, %struct.st_gain { i32 -8882, i32 19, i32 14 }, %struct.st_gain { i32 -8837, i32 5, i32 12 }, %struct.st_gain { i32 -8795, i32 21, i32 14 }, %struct.st_gain { i32 -8754, i32 11, i32 13 }, %struct.st_gain { i32 -8716, i32 23, i32 14 }, %struct.st_gain { i32 -8679, i32 3, i32 11 }, %struct.st_gain { i32 -8643, i32 25, i32 14 }, %struct.st_gain { i32 -8609, i32 13, i32 13 }, %struct.st_gain { i32 -8576, i32 27, i32 14 }, %struct.st_gain { i32 -8545, i32 7, i32 12 }, %struct.st_gain { i32 -8514, i32 29, i32 14 }, %struct.st_gain { i32 -8485, i32 15, i32 13 }, %struct.st_gain { i32 -8456, i32 31, i32 14 }, %struct.st_gain { i32 -8429, i32 1, i32 9 }, %struct.st_gain { i32 -8376, i32 17, i32 13 }, %struct.st_gain { i32 -8327, i32 9, i32 12 }, %struct.st_gain { i32 -8280, i32 19, i32 13 }, %struct.st_gain { i32 -8235, i32 5, i32 11 }, %struct.st_gain { i32 -8193, i32 21, i32 13 }, %struct.st_gain { i32 -8152, i32 11, i32 12 }, %struct.st_gain { i32 -8114, i32 23, i32 13 }, %struct.st_gain { i32 -8077, i32 3, i32 10 }, %struct.st_gain { i32 -8041, i32 25, i32 13 }, %struct.st_gain { i32 -8007, i32 13, i32 12 }, %struct.st_gain { i32 -7974, i32 27, i32 13 }, %struct.st_gain { i32 -7943, i32 7, i32 11 }, %struct.st_gain { i32 -7912, i32 29, i32 13 }, %struct.st_gain { i32 -7883, i32 15, i32 12 }, %struct.st_gain { i32 -7854, i32 31, i32 13 }, %struct.st_gain { i32 -7827, i32 1, i32 8 }, %struct.st_gain { i32 -7774, i32 17, i32 12 }, %struct.st_gain { i32 -7724, i32 9, i32 11 }, %struct.st_gain { i32 -7678, i32 19, i32 12 }, %struct.st_gain { i32 -7633, i32 5, i32 10 }, %struct.st_gain { i32 -7591, i32 21, i32 12 }, %struct.st_gain { i32 -7550, i32 11, i32 11 }, %struct.st_gain { i32 -7512, i32 23, i32 12 }, %struct.st_gain { i32 -7475, i32 3, i32 9 }, %struct.st_gain { i32 -7439, i32 25, i32 12 }, %struct.st_gain { i32 -7405, i32 13, i32 11 }, %struct.st_gain { i32 -7372, i32 27, i32 12 }, %struct.st_gain { i32 -7341, i32 7, i32 10 }, %struct.st_gain { i32 -7310, i32 29, i32 12 }, %struct.st_gain { i32 -7281, i32 15, i32 11 }, %struct.st_gain { i32 -7252, i32 31, i32 12 }, %struct.st_gain { i32 -7225, i32 1, i32 7 }, %struct.st_gain { i32 -7172, i32 17, i32 11 }, %struct.st_gain { i32 -7122, i32 9, i32 10 }, %struct.st_gain { i32 -7075, i32 19, i32 11 }, %struct.st_gain { i32 -7031, i32 5, i32 9 }, %struct.st_gain { i32 -6989, i32 21, i32 11 }, %struct.st_gain { i32 -6948, i32 11, i32 10 }, %struct.st_gain { i32 -6910, i32 23, i32 11 }, %struct.st_gain { i32 -6873, i32 3, i32 8 }, %struct.st_gain { i32 -6837, i32 25, i32 11 }, %struct.st_gain { i32 -6803, i32 13, i32 10 }, %struct.st_gain { i32 -6770, i32 27, i32 11 }, %struct.st_gain { i32 -6739, i32 7, i32 9 }, %struct.st_gain { i32 -6708, i32 29, i32 11 }, %struct.st_gain { i32 -6679, i32 15, i32 10 }, %struct.st_gain { i32 -6650, i32 31, i32 11 }, %struct.st_gain { i32 -6623, i32 1, i32 6 }, %struct.st_gain { i32 -6570, i32 17, i32 10 }, %struct.st_gain { i32 -6520, i32 9, i32 9 }, %struct.st_gain { i32 -6473, i32 19, i32 10 }, %struct.st_gain { i32 -6429, i32 5, i32 8 }, %struct.st_gain { i32 -6386, i32 21, i32 10 }, %struct.st_gain { i32 -6346, i32 11, i32 9 }, %struct.st_gain { i32 -6307, i32 23, i32 10 }, %struct.st_gain { i32 -6270, i32 3, i32 7 }, %struct.st_gain { i32 -6235, i32 25, i32 10 }, %struct.st_gain { i32 -6201, i32 13, i32 9 }, %struct.st_gain { i32 -6168, i32 27, i32 10 }, %struct.st_gain { i32 -6137, i32 7, i32 8 }, %struct.st_gain { i32 -6106, i32 29, i32 10 }, %struct.st_gain { i32 -6077, i32 15, i32 9 }, %struct.st_gain { i32 -6048, i32 31, i32 10 }, %struct.st_gain { i32 -6021, i32 1, i32 5 }, %struct.st_gain { i32 -5968, i32 17, i32 9 }, %struct.st_gain { i32 -5918, i32 9, i32 8 }, %struct.st_gain { i32 -5871, i32 19, i32 9 }, %struct.st_gain { i32 -5827, i32 5, i32 7 }, %struct.st_gain { i32 -5784, i32 21, i32 9 }, %struct.st_gain { i32 -5744, i32 11, i32 8 }, %struct.st_gain { i32 -5705, i32 23, i32 9 }, %struct.st_gain { i32 -5668, i32 3, i32 6 }, %struct.st_gain { i32 -5633, i32 25, i32 9 }, %struct.st_gain { i32 -5599, i32 13, i32 8 }, %struct.st_gain { i32 -5566, i32 27, i32 9 }, %struct.st_gain { i32 -5535, i32 7, i32 7 }, %struct.st_gain { i32 -5504, i32 29, i32 9 }, %struct.st_gain { i32 -5475, i32 15, i32 8 }, %struct.st_gain { i32 -5446, i32 31, i32 9 }, %struct.st_gain { i32 -5419, i32 1, i32 4 }, %struct.st_gain { i32 -5366, i32 17, i32 8 }, %struct.st_gain { i32 -5316, i32 9, i32 7 }, %struct.st_gain { i32 -5269, i32 19, i32 8 }, %struct.st_gain { i32 -5225, i32 5, i32 6 }, %struct.st_gain { i32 -5182, i32 21, i32 8 }, %struct.st_gain { i32 -5142, i32 11, i32 7 }, %struct.st_gain { i32 -5103, i32 23, i32 8 }, %struct.st_gain { i32 -5066, i32 3, i32 5 }, %struct.st_gain { i32 -5031, i32 25, i32 8 }, %struct.st_gain { i32 -4997, i32 13, i32 7 }, %struct.st_gain { i32 -4964, i32 27, i32 8 }, %struct.st_gain { i32 -4932, i32 7, i32 6 }, %struct.st_gain { i32 -4902, i32 29, i32 8 }, %struct.st_gain { i32 -4873, i32 15, i32 7 }, %struct.st_gain { i32 -4844, i32 31, i32 8 }, %struct.st_gain { i32 -4816, i32 1, i32 3 }, %struct.st_gain { i32 -4764, i32 17, i32 7 }, %struct.st_gain { i32 -4714, i32 9, i32 6 }, %struct.st_gain { i32 -4667, i32 19, i32 7 }, %struct.st_gain { i32 -4623, i32 5, i32 5 }, %struct.st_gain { i32 -4580, i32 21, i32 7 }, %struct.st_gain { i32 -4540, i32 11, i32 6 }, %struct.st_gain { i32 -4501, i32 23, i32 7 }, %struct.st_gain { i32 -4464, i32 3, i32 4 }, %struct.st_gain { i32 -4429, i32 25, i32 7 }, %struct.st_gain { i32 -4395, i32 13, i32 6 }, %struct.st_gain { i32 -4362, i32 27, i32 7 }, %struct.st_gain { i32 -4330, i32 7, i32 5 }, %struct.st_gain { i32 -4300, i32 29, i32 7 }, %struct.st_gain { i32 -4270, i32 15, i32 6 }, %struct.st_gain { i32 -4242, i32 31, i32 7 }, %struct.st_gain { i32 -4214, i32 1, i32 2 }, %struct.st_gain { i32 -4162, i32 17, i32 6 }, %struct.st_gain { i32 -4112, i32 9, i32 5 }, %struct.st_gain { i32 -4065, i32 19, i32 6 }, %struct.st_gain { i32 -4021, i32 5, i32 4 }, %struct.st_gain { i32 -3978, i32 21, i32 6 }, %struct.st_gain { i32 -3938, i32 11, i32 5 }, %struct.st_gain { i32 -3899, i32 23, i32 6 }, %struct.st_gain { i32 -3862, i32 3, i32 3 }, %struct.st_gain { i32 -3827, i32 25, i32 6 }, %struct.st_gain { i32 -3793, i32 13, i32 5 }, %struct.st_gain { i32 -3760, i32 27, i32 6 }, %struct.st_gain { i32 -3728, i32 7, i32 4 }, %struct.st_gain { i32 -3698, i32 29, i32 6 }, %struct.st_gain { i32 -3668, i32 15, i32 5 }, %struct.st_gain { i32 -3640, i32 31, i32 6 }, %struct.st_gain { i32 -3612, i32 1, i32 1 }, %struct.st_gain { i32 -3560, i32 17, i32 5 }, %struct.st_gain { i32 -3510, i32 9, i32 4 }, %struct.st_gain { i32 -3463, i32 19, i32 5 }, %struct.st_gain { i32 -3419, i32 5, i32 3 }, %struct.st_gain { i32 -3376, i32 21, i32 5 }, %struct.st_gain { i32 -3336, i32 11, i32 4 }, %struct.st_gain { i32 -3297, i32 23, i32 5 }, %struct.st_gain { i32 -3260, i32 3, i32 2 }, %struct.st_gain { i32 -3225, i32 25, i32 5 }, %struct.st_gain { i32 -3191, i32 13, i32 4 }, %struct.st_gain { i32 -3158, i32 27, i32 5 }, %struct.st_gain { i32 -3126, i32 7, i32 3 }, %struct.st_gain { i32 -3096, i32 29, i32 5 }, %struct.st_gain { i32 -3066, i32 15, i32 4 }, %struct.st_gain { i32 -3038, i32 31, i32 5 }, %struct.st_gain { i32 -3010, i32 1, i32 0 }, %struct.st_gain { i32 -2958, i32 17, i32 4 }, %struct.st_gain { i32 -2908, i32 9, i32 3 }, %struct.st_gain { i32 -2861, i32 19, i32 4 }, %struct.st_gain { i32 -2816, i32 5, i32 2 }, %struct.st_gain { i32 -2774, i32 21, i32 4 }, %struct.st_gain { i32 -2734, i32 11, i32 3 }, %struct.st_gain { i32 -2695, i32 23, i32 4 }, %struct.st_gain { i32 -2658, i32 3, i32 1 }, %struct.st_gain { i32 -2623, i32 25, i32 4 }, %struct.st_gain { i32 -2589, i32 13, i32 3 }, %struct.st_gain { i32 -2556, i32 27, i32 4 }, %struct.st_gain { i32 -2524, i32 7, i32 2 }, %struct.st_gain { i32 -2494, i32 29, i32 4 }, %struct.st_gain { i32 -2464, i32 15, i32 3 }, %struct.st_gain { i32 -2436, i32 31, i32 4 }, %struct.st_gain { i32 -2408, i32 2, i32 0 }, %struct.st_gain { i32 -2356, i32 17, i32 3 }, %struct.st_gain { i32 -2306, i32 9, i32 2 }, %struct.st_gain { i32 -2259, i32 19, i32 3 }, %struct.st_gain { i32 -2214, i32 5, i32 1 }, %struct.st_gain { i32 -2172, i32 21, i32 3 }, %struct.st_gain { i32 -2132, i32 11, i32 2 }, %struct.st_gain { i32 -2093, i32 23, i32 3 }, %struct.st_gain { i32 -2056, i32 3, i32 0 }, %struct.st_gain { i32 -2021, i32 25, i32 3 }, %struct.st_gain { i32 -1987, i32 13, i32 2 }, %struct.st_gain { i32 -1954, i32 27, i32 3 }, %struct.st_gain { i32 -1922, i32 7, i32 1 }, %struct.st_gain { i32 -1892, i32 29, i32 3 }, %struct.st_gain { i32 -1862, i32 15, i32 2 }, %struct.st_gain { i32 -1834, i32 31, i32 3 }, %struct.st_gain { i32 -1806, i32 4, i32 0 }, %struct.st_gain { i32 -1754, i32 17, i32 2 }, %struct.st_gain { i32 -1704, i32 9, i32 1 }, %struct.st_gain { i32 -1657, i32 19, i32 2 }, %struct.st_gain { i32 -1612, i32 5, i32 0 }, %struct.st_gain { i32 -1570, i32 21, i32 2 }, %struct.st_gain { i32 -1530, i32 11, i32 1 }, %struct.st_gain { i32 -1491, i32 23, i32 2 }, %struct.st_gain { i32 -1454, i32 6, i32 0 }, %struct.st_gain { i32 -1419, i32 25, i32 2 }, %struct.st_gain { i32 -1384, i32 13, i32 1 }, %struct.st_gain { i32 -1352, i32 27, i32 2 }, %struct.st_gain { i32 -1320, i32 7, i32 0 }, %struct.st_gain { i32 -1290, i32 29, i32 2 }, %struct.st_gain { i32 -1260, i32 15, i32 1 }, %struct.st_gain { i32 -1232, i32 31, i32 2 }, %struct.st_gain { i32 -1204, i32 8, i32 0 }, %struct.st_gain { i32 -1151, i32 17, i32 1 }, %struct.st_gain { i32 -1102, i32 9, i32 0 }, %struct.st_gain { i32 -1055, i32 19, i32 1 }, %struct.st_gain { i32 -1010, i32 10, i32 0 }, %struct.st_gain { i32 -968, i32 21, i32 1 }, %struct.st_gain { i32 -928, i32 11, i32 0 }, %struct.st_gain { i32 -889, i32 23, i32 1 }, %struct.st_gain { i32 -852, i32 12, i32 0 }, %struct.st_gain { i32 -816, i32 25, i32 1 }, %struct.st_gain { i32 -782, i32 13, i32 0 }, %struct.st_gain { i32 -750, i32 27, i32 1 }, %struct.st_gain { i32 -718, i32 14, i32 0 }, %struct.st_gain { i32 -688, i32 29, i32 1 }, %struct.st_gain { i32 -658, i32 15, i32 0 }, %struct.st_gain { i32 -630, i32 31, i32 1 }, %struct.st_gain { i32 -602, i32 16, i32 0 }, %struct.st_gain { i32 -549, i32 17, i32 0 }, %struct.st_gain { i32 -500, i32 18, i32 0 }, %struct.st_gain { i32 -453, i32 19, i32 0 }, %struct.st_gain { i32 -408, i32 20, i32 0 }, %struct.st_gain { i32 -366, i32 21, i32 0 }, %struct.st_gain { i32 -325, i32 22, i32 0 }, %struct.st_gain { i32 -287, i32 23, i32 0 }, %struct.st_gain { i32 -250, i32 24, i32 0 }, %struct.st_gain { i32 -214, i32 25, i32 0 }, %struct.st_gain { i32 -180, i32 26, i32 0 }, %struct.st_gain { i32 -148, i32 27, i32 0 }, %struct.st_gain { i32 -116, i32 28, i32 0 }, %struct.st_gain { i32 -86, i32 29, i32 0 }, %struct.st_gain { i32 -56, i32 30, i32 0 }, %struct.st_gain { i32 -28, i32 31, i32 0 }, %struct.st_gain zeroinitializer], [800 x i8] zeroinitializer }, align 32
@pm860x_opamp_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-50%\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-25%\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0%\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"75%\00", [28 x i8] zeroinitializer }, align 32
@pm860x_pa_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.52, ptr @.str.50, ptr @.str.53, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"-33%\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"33%\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"66%\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM SDI\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCM Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM SDO\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCM Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S DIN\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S DIN1\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S DOUT\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S Mic Mux\00", [20 x i8] zeroinitializer }, align 32
@i2s_mic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @i2s_mic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC Left Mux\00", [19 x i8] zeroinitializer }, align 32
@adcl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adcl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC Right Mux\00", [18 x i8] zeroinitializer }, align 32
@adcr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adcr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EC Mux\00", [25 x i8] zeroinitializer }, align 32
@ec_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @ec_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADCR EC Mux\00", [20 x i8] zeroinitializer }, align 32
@adcr_ec_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adcr_ec_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left EPA\00", [23 x i8] zeroinitializer }, align 32
@lepa_switch_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right EPA\00", [22 x i8] zeroinitializer }, align 32
@repa_switch_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left ADC MOD\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right ADC MOD\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AUX1 Switch\00", [20 x i8] zeroinitializer }, align 32
@aux1_switch_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AUX2 Switch\00", [20 x i8] zeroinitializer }, align 32
@aux2_switch_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MIC Mux\00", [24 x i8] zeroinitializer }, align 32
@mic_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @mic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic1 Bias\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic3 Bias\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MIC3 Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AUX1 Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AUX2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sidetone PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Lofi PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUX1\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUX2\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC1P\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC1N\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC2P\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC2N\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC3P\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MIC3N\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S DIN Mux\00", [20 x i8] zeroinitializer }, align 32
@i2s_din_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @i2s_din_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC HS1 Mux\00", [20 x i8] zeroinitializer }, align 32
@dac_hs1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_hs1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC HS2 Mux\00", [20 x i8] zeroinitializer }, align 32
@dac_hs2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_hs2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC LO1 Mux\00", [20 x i8] zeroinitializer }, align 32
@dac_lo1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_lo1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC LO2 Mux\00", [20 x i8] zeroinitializer }, align 32
@dac_lo2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_lo2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC SP Mux\00", [21 x i8] zeroinitializer }, align 32
@dac_spk_ear_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_spk_ear_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset1 Mux\00", [19 x i8] zeroinitializer }, align 32
@hs1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hs1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset2 Mux\00", [19 x i8] zeroinitializer }, align 32
@hs2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hs2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lineout1 Mux\00", [19 x i8] zeroinitializer }, align 32
@lo1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lo1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lineout2 Mux\00", [19 x i8] zeroinitializer }, align 32
@lo2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lo2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Speaker Earpiece Demux\00", [41 x i8] zeroinitializer }, align 32
@spk_demux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @spk_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset1 PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset2 PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HS1\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HS2\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lineout1 PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Lineout2 PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINEOUT1\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINEOUT2\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Earpiece PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EARP\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EARN\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Speaker PGA\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LSP\00", [28 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LSN\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VCODEC\00", [25 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RSYNC\00", [26 x i8] zeroinitializer }, align 32
@pm860x_dapm_widgets = internal constant { [65 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2924 x i8] } { [65 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.55, ptr @.str.56, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 222, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.57, ptr @.str.58, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 178, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.59, ptr @.str.60, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.61, ptr @.str.60, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.62, ptr @.str.63, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 189, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 225, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s_mic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ec_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcr_ec_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lepa_switch_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @repa_switch_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 221, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 221, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 222, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 222, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aux1_switch_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aux2_switch_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mic_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 208, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 208, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 221, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 221, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 221, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 221, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 222, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 222, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @pm860x_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @pm860x_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @i2s_din_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_hs1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_hs2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_lo1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_lo2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_spk_ear_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hs1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hs2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lo1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lo2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk_demux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 223, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 223, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 223, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 223, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 223, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 223, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 220, i8 0, i32 11, i32 11, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @pm860x_rsync_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2924 x i8] zeroinitializer }, align 32
@i2s_mic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 189, i8 4, i8 4, i32 2, i32 1, ptr @i2s_mic_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@i2s_mic_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.125, ptr @.str.126], [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Ex PA\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@adcl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 178, i8 4, i8 4, i32 2, i32 1, ptr @adcl_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adcl_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.127, ptr @.str.128], [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@adcr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 178, i8 2, i8 2, i32 2, i32 1, ptr @adcr_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adcr_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.128, ptr @.str.127], [24 x i8] zeroinitializer }, align 32
@ec_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 180, i8 1, i8 1, i32 3, i32 3, ptr @ec_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ec_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.129, ptr @.str.130, ptr @.str.131], [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left + Right\00", [19 x i8] zeroinitializer }, align 32
@adcr_ec_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 222, i8 3, i8 3, i32 2, i32 1, ptr @adcr_ec_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adcr_ec_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.127, ptr @.str.132], [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EC\00", [29 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 225, i32 225, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 225, i32 225, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 212, i32 212, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 212, i32 212, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 211, i8 4, i8 4, i32 2, i32 1, ptr @mic_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.138, ptr @.str.139], [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mic 1\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mic 2\00", [26 x i8] zeroinitializer }, align 32
@i2s_din_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 189, i8 1, i8 1, i32 2, i32 1, ptr @i2s_din_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@i2s_din_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIN\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DIN1\00", [27 x i8] zeroinitializer }, align 32
@dac_hs1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 231, i8 0, i8 0, i32 4, i32 3, ptr @dac_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.142, ptr @.str.130, ptr @.str.129, ptr @.str.142], [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No input\00", [23 x i8] zeroinitializer }, align 32
@dac_hs2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 231, i8 2, i8 2, i32 4, i32 3, ptr @dac_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_lo1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 231, i8 4, i8 4, i32 4, i32 3, ptr @dac_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_lo2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 231, i8 6, i8 6, i32 4, i32 3, ptr @dac_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_spk_ear_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 232, i8 0, i8 0, i32 4, i32 3, ptr @dac_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hs1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 212, i8 0, i8 0, i32 2, i32 1, ptr @in_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@in_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.143, ptr @.str.144], [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Analog\00", [25 x i8] zeroinitializer }, align 32
@hs2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 212, i8 1, i8 1, i32 2, i32 1, ptr @in_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lo1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 212, i8 2, i8 2, i32 2, i32 1, ptr @in_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lo2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 212, i8 3, i8 3, i32 2, i32 1, ptr @in_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@spk_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 212, i8 6, i8 6, i32 2, i32 1, ptr @spk_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@spk_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.145, ptr @.str.146], [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Earpiece\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@pm860x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.148, ptr @.str.2, i32 1313, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to request IRQ!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pm860x_probe\00", [19 x i8] zeroinitializer }, align 32
@pm860x_probe._entry_ptr = internal global ptr @pm860x_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"88pm860x-pcm\00", [19 x i8] zeroinitializer }, align 32
@pm860x_pcm_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @pm860x_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @pm860x_pcm_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_mute_stream, ptr null, ptr null, ptr @pm860x_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"88pm860x-i2s\00", [19 x i8] zeroinitializer }, align 32
@pm860x_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @pm860x_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @pm860x_i2s_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm860x_mute_stream, ptr null, ptr null, ptr @pm860x_i2s_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 16, i64 4096, i64 12288, i64 16384]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 18]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 32000, i64 48000]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 18]
@__sancov_gen_cov_switch_values.157 = internal global [9 x i64] [i64 7, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000]
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"pm860x_codec_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1395, i32 31 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1243, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1245, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [31 x i8] c"../include/trace/events/asoc.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 211, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 108, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1397, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1373, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [25 x i8] c"soc_component_dev_pm860x\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1335, i32 46 }
@___asan_gen_.206 = private unnamed_addr constant [11 x i8] c"pm860x_dai\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1157, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1384, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"pm860x_snd_controls\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 477, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant [19 x i8] c"pm860x_dapm_routes\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 803, i32 40 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 478, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 153, i32 14 }
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 480, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [8 x i8] c"aux_tlv\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 165, i32 14 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 482, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [8 x i8] c"mic_tlv\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 156, i32 14 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 484, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 486, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [7 x i8] c"st_tlv\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 178, i32 14 }
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 490, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 171, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 492, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 494, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 496, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [9 x i8] c"dpga_tlv\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 150, i32 14 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 501, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 506, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 510, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [22 x i8] c"pm860x_hs1_opamp_enum\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 444, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 512, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [22 x i8] c"pm860x_hs2_opamp_enum\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 447, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 514, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [19 x i8] c"pm860x_hs1_pa_enum\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 450, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 515, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [19 x i8] c"pm860x_hs2_pa_enum\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 453, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 516, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [22 x i8] c"pm860x_lo1_opamp_enum\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 456, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 518, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [22 x i8] c"pm860x_lo2_opamp_enum\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 459, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 520, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c"pm860x_lo1_pa_enum\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 462, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 521, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [19 x i8] c"pm860x_lo2_pa_enum\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 465, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 522, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [26 x i8] c"pm860x_spk_ear_opamp_enum\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 474, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 524, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [19 x i8] c"pm860x_spk_pa_enum\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 468, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 525, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [19 x i8] c"pm860x_ear_pa_enum\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 471, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant [9 x i8] c"st_table\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 196, i32 23 }
@___asan_gen_.352 = private unnamed_addr constant [19 x i8] c"pm860x_opamp_texts\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 440, i32 20 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 440, i32 44 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 440, i32 52 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 440, i32 60 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 440, i32 66 }
@___asan_gen_.367 = private unnamed_addr constant [16 x i8] c"pm860x_pa_texts\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 442, i32 20 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 442, i32 41 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 442, i32 55 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 442, i32 62 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 708, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 710, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 714, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 716, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 718, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 720, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 721, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [12 x i8] c"i2s_mic_mux\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 567, i32 38 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 722, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [9 x i8] c"adcl_mux\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 578, i32 38 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 723, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [9 x i8] c"adcr_mux\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 589, i32 38 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 724, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [7 x i8] c"ec_mux\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 611, i32 38 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 725, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant [12 x i8] c"adcr_ec_mux\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 600, i32 38 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 726, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [21 x i8] c"lepa_switch_controls\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 541, i32 38 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 728, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [21 x i8] c"repa_switch_controls\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 545, i32 38 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 731, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 733, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 735, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 736, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 738, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [21 x i8] c"aux1_switch_controls\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 533, i32 38 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 740, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [21 x i8] c"aux2_switch_controls\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 537, i32 38 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 743, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [8 x i8] c"mic_mux\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 704, i32 38 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 744, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 745, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 746, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 747, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 748, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 749, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 750, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 751, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 753, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 754, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 755, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 756, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 757, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 758, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 759, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 760, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 762, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 765, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 769, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant [12 x i8] c"i2s_din_mux\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 556, i32 38 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 770, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [12 x i8] c"dac_hs1_mux\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 622, i32 38 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 771, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [12 x i8] c"dac_hs2_mux\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 629, i32 38 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 772, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant [12 x i8] c"dac_lo1_mux\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 636, i32 38 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 773, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [12 x i8] c"dac_lo2_mux\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 643, i32 38 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 774, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant [16 x i8] c"dac_spk_ear_mux\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 650, i32 38 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 775, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant [8 x i8] c"hs1_mux\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 661, i32 38 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 776, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [8 x i8] c"hs2_mux\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 668, i32 38 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 777, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [8 x i8] c"lo1_mux\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 675, i32 38 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 778, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [8 x i8] c"lo2_mux\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 682, i32 38 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 779, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [10 x i8] c"spk_demux\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 693, i32 38 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 783, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 784, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 785, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 786, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 787, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 788, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 789, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 790, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 791, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 792, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 793, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 794, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 795, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 796, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 797, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 800, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [20 x i8] c"pm860x_dapm_widgets\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 707, i32 41 }
@___asan_gen_.652 = private unnamed_addr constant [13 x i8] c"i2s_mic_enum\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 564, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant [13 x i8] c"i2s_mic_text\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 560, i32 20 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 561, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 561, i32 11 }
@___asan_gen_.664 = private unnamed_addr constant [10 x i8] c"adcl_enum\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 575, i32 8 }
@___asan_gen_.667 = private unnamed_addr constant [10 x i8] c"adcl_text\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 571, i32 20 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 572, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 572, i32 10 }
@___asan_gen_.676 = private unnamed_addr constant [10 x i8] c"adcr_enum\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 586, i32 8 }
@___asan_gen_.679 = private unnamed_addr constant [10 x i8] c"adcr_text\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 582, i32 20 }
@___asan_gen_.682 = private unnamed_addr constant [8 x i8] c"ec_enum\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 608, i32 8 }
@___asan_gen_.685 = private unnamed_addr constant [8 x i8] c"ec_text\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 604, i32 20 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 605, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 605, i32 10 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 605, i32 19 }
@___asan_gen_.697 = private unnamed_addr constant [13 x i8] c"adcr_ec_enum\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 597, i32 8 }
@___asan_gen_.700 = private unnamed_addr constant [13 x i8] c"adcr_ec_text\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 593, i32 20 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 594, i32 10 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 542, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.712 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.713 = private unnamed_addr constant [9 x i8] c"mic_enum\00", align 1
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 701, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant [9 x i8] c"mic_text\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 697, i32 20 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 698, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 698, i32 11 }
@___asan_gen_.725 = private unnamed_addr constant [13 x i8] c"i2s_din_enum\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 553, i32 8 }
@___asan_gen_.728 = private unnamed_addr constant [13 x i8] c"i2s_din_text\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 549, i32 20 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 550, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 550, i32 9 }
@___asan_gen_.737 = private unnamed_addr constant [13 x i8] c"dac_hs1_enum\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 619, i32 8 }
@___asan_gen_.740 = private unnamed_addr constant [9 x i8] c"dac_text\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 614, i32 20 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 615, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [13 x i8] c"dac_hs2_enum\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 626, i32 8 }
@___asan_gen_.749 = private unnamed_addr constant [13 x i8] c"dac_lo1_enum\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 633, i32 8 }
@___asan_gen_.752 = private unnamed_addr constant [13 x i8] c"dac_lo2_enum\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 640, i32 8 }
@___asan_gen_.755 = private unnamed_addr constant [17 x i8] c"dac_spk_ear_enum\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 647, i32 8 }
@___asan_gen_.758 = private unnamed_addr constant [9 x i8] c"hs1_enum\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 658, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant [8 x i8] c"in_text\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 654, i32 20 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 655, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 655, i32 13 }
@___asan_gen_.770 = private unnamed_addr constant [9 x i8] c"hs2_enum\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 665, i32 8 }
@___asan_gen_.773 = private unnamed_addr constant [9 x i8] c"lo1_enum\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 672, i32 8 }
@___asan_gen_.776 = private unnamed_addr constant [9 x i8] c"lo2_enum\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 679, i32 8 }
@___asan_gen_.779 = private unnamed_addr constant [9 x i8] c"spk_enum\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 690, i32 8 }
@___asan_gen_.782 = private unnamed_addr constant [9 x i8] c"spk_text\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 686, i32 20 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 687, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 687, i32 14 }
@___asan_gen_.791 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1313, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1160, i32 11 }
@___asan_gen_.803 = private unnamed_addr constant [19 x i8] c"pm860x_pcm_dai_ops\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1138, i32 37 }
@___asan_gen_.806 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1181, i32 11 }
@___asan_gen_.809 = private unnamed_addr constant [19 x i8] c"pm860x_i2s_dai_ops\00", align 1
@___asan_gen_.810 = private constant [37 x i8] c"../sound/soc/codecs/88pm860x-codec.c\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.810, i32 1146, i32 37 }
@llvm.compiler.used = appending global [241 x ptr] [ptr @__UNIQUE_ID_alias328, ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__exitcall_pm860x_codec_driver_exit, ptr @__initcall__kmod_snd_soc_88pm860x__323_1403_pm860x_codec_driver_init6, ptr @__ksymtab_pm860x_hs_jack_detect, ptr @__ksymtab_pm860x_mic_jack_detect, ptr @pm860x_codec_driver_exit, ptr @pm860x_codec_probe._entry, ptr @pm860x_codec_probe._entry.13, ptr @pm860x_codec_probe._entry_ptr, ptr @pm860x_codec_probe._entry_ptr.15, ptr @pm860x_probe._entry, ptr @pm860x_probe._entry_ptr, ptr @pm860x_codec_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @soc_component_dev_pm860x, ptr @pm860x_dai, ptr @.str.14, ptr @pm860x_snd_controls, ptr @pm860x_dapm_routes, ptr @.str.16, ptr @adc_tlv, ptr @.compoundliteral, ptr @.str.17, ptr @aux_tlv, ptr @.compoundliteral.18, ptr @.str.19, ptr @mic_tlv, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @st_tlv, ptr @.compoundliteral.24, ptr @.str.25, ptr @out_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @dpga_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @pm860x_hs1_opamp_enum, ptr @.str.38, ptr @pm860x_hs2_opamp_enum, ptr @.str.39, ptr @pm860x_hs1_pa_enum, ptr @.str.40, ptr @pm860x_hs2_pa_enum, ptr @.str.41, ptr @pm860x_lo1_opamp_enum, ptr @.str.42, ptr @pm860x_lo2_opamp_enum, ptr @.str.43, ptr @pm860x_lo1_pa_enum, ptr @.str.44, ptr @pm860x_lo2_pa_enum, ptr @.str.45, ptr @pm860x_spk_ear_opamp_enum, ptr @.str.46, ptr @pm860x_spk_pa_enum, ptr @.str.47, ptr @pm860x_ear_pa_enum, ptr @st_table, ptr @pm860x_opamp_texts, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @pm860x_pa_texts, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @i2s_mic_mux, ptr @.str.66, ptr @adcl_mux, ptr @.str.67, ptr @adcr_mux, ptr @.str.68, ptr @ec_mux, ptr @.str.69, ptr @adcr_ec_mux, ptr @.str.70, ptr @lepa_switch_controls, ptr @.str.71, ptr @repa_switch_controls, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @aux1_switch_controls, ptr @.str.77, ptr @aux2_switch_controls, ptr @.str.78, ptr @mic_mux, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @i2s_din_mux, ptr @.str.98, ptr @dac_hs1_mux, ptr @.str.99, ptr @dac_hs2_mux, ptr @.str.100, ptr @dac_lo1_mux, ptr @.str.101, ptr @dac_lo2_mux, ptr @.str.102, ptr @dac_spk_ear_mux, ptr @.str.103, ptr @hs1_mux, ptr @.str.104, ptr @hs2_mux, ptr @.str.105, ptr @lo1_mux, ptr @.str.106, ptr @lo2_mux, ptr @.str.107, ptr @spk_demux, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @pm860x_dapm_widgets, ptr @i2s_mic_enum, ptr @i2s_mic_text, ptr @.str.125, ptr @.str.126, ptr @adcl_enum, ptr @adcl_text, ptr @.str.127, ptr @.str.128, ptr @adcr_enum, ptr @adcr_text, ptr @ec_enum, ptr @ec_text, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @adcr_ec_enum, ptr @adcr_ec_text, ptr @.str.132, ptr @.str.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.compoundliteral.137, ptr @mic_enum, ptr @mic_text, ptr @.str.138, ptr @.str.139, ptr @i2s_din_enum, ptr @i2s_din_text, ptr @.str.140, ptr @.str.141, ptr @dac_hs1_enum, ptr @dac_text, ptr @.str.142, ptr @dac_hs2_enum, ptr @dac_lo1_enum, ptr @dac_lo2_enum, ptr @dac_spk_ear_enum, ptr @hs1_enum, ptr @in_text, ptr @.str.143, ptr @.str.144, ptr @hs2_enum, ptr @lo1_enum, ptr @lo2_enum, ptr @spk_enum, ptr @spk_text, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @pm860x_pcm_dai_ops, ptr @.str.150, ptr @pm860x_i2s_dai_ops], section "llvm.metadata"
@0 = internal global [228 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_pm860x to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_codec_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_snd_controls to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_dapm_routes to i32), i32 4264, i32 5344, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_tlv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_tlv to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_hs1_opamp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_hs2_opamp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_hs1_pa_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_hs2_pa_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_lo1_opamp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_lo2_opamp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_lo1_pa_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_lo2_pa_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_spk_ear_opamp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_spk_pa_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_ear_pa_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_table to i32), i32 3264, i32 4064, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_opamp_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_pa_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_mic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcr_ec_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lepa_switch_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @repa_switch_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux1_switch_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux2_switch_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_din_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_hs1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_hs2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_lo1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_lo2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_spk_ear_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_demux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_dapm_widgets to i32), i32 11700, i32 14624, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_mic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_mic_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcl_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcr_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ec_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcr_ec_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcr_ec_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_din_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_din_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_hs1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_hs2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_lo1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_lo2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_spk_ear_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_pcm_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm860x_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm860x_hs_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack, i32 noundef %det, i32 noundef %hook, i32 noundef %hs_shrt, i32 noundef %lo_shrt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %det1 = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %det1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %det1, align 4
  %hp_det = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %hp_det to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %det, ptr %hp_det, align 4
  %hook_det = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %hook_det to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %hook, ptr %hook_det, align 4
  %hs_shrt5 = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 8, i32 5
  %7 = ptrtoint ptr %hs_shrt5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %hs_shrt, ptr %hs_shrt5, align 4
  %lo_shrt7 = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %lo_shrt7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lo_shrt, ptr %lo_shrt7, align 4
  %and = and i32 %det, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i2c = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 4
  %call8 = tail call i32 @pm860x_set_bits(ptr noundef %10, i32 noundef 56, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hs_shrt)
  %tobool9.not = icmp eq i32 %hs_shrt, 0
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %i2c11 = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %i2c11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c11, align 4
  %call13 = tail call i32 @pm860x_set_bits(ptr noundef %12, i32 noundef 235, i8 noundef zeroext 10, i8 noundef zeroext 10) #11
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lo_shrt)
  %tobool15.not = icmp eq i32 %lo_shrt, 0
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %i2c17 = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 5
  %13 = ptrtoint ptr %i2c17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c17, align 4
  %call20 = tail call i32 @pm860x_set_bits(ptr noundef %14, i32 noundef 235, i8 noundef zeroext -96, i8 noundef zeroext -96) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14.if.end21_crit_edge
  %call22 = tail call i32 @pm860x_component_handler(i32 noundef 0, ptr noundef %3)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_component_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @pm860x_reg_read(ptr noundef %1, i32 noundef 1) #11
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %call2 = tail call i32 @pm860x_reg_read(ptr noundef %3, i32 noundef 235) #11
  %det = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 8
  %hs_shrt = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 8, i32 5
  %4 = ptrtoint ptr %hs_shrt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hs_shrt, align 4
  %hook_det = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %hook_det to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hook_det, align 4
  %or = or i32 %7, %5
  %lo_shrt = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %lo_shrt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lo_shrt, align 4
  %or5 = or i32 %or, %9
  %hp_det = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %hp_det to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hp_det, align 4
  %or7 = or i32 %or5, %11
  %and = and i32 %call, 245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %component = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 4
  %12 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %component, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i135 = phi ptr [ %19, %if.end.i ], [ %17, %if.then.dev_name.exit_crit_edge ]
  tail call fastcc void @trace_snd_soc_jack_irq(ptr noundef %retval.0.i135)
  br label %if.end

if.end:                                           ; preds = %dev_name.exit, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %hp_det to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hp_det, align 4
  %and11 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  %and13 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp ne i32 %and13, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool14.not, i1 false
  %report.0 = zext i1 %or.cond to i32
  %mic_det = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 8, i32 3
  %22 = ptrtoint ptr %mic_det to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mic_det, align 4
  %and19 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %and22 = and i32 %call, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %or.cond127 = select i1 %tobool20.not, i1 true, i1 %tobool23.not
  %spec.select131 = select i1 %or.cond127, i32 0, i32 2
  %24 = ptrtoint ptr %hs_shrt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hs_shrt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool29.not = icmp eq i32 %25, 0
  %and31 = and i32 %call2, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %or.cond128 = select i1 %tobool29.not, i1 true, i1 %tobool32.not
  %or36 = select i1 %or.cond128, i32 0, i32 %25
  %report.1 = or i32 %or36, %report.0
  %26 = ptrtoint ptr %hook_det to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hook_det, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool40.not = icmp eq i32 %27, 0
  %and42 = and i32 %call, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %or.cond129 = select i1 %tobool40.not, i1 true, i1 %tobool43.not
  %or47 = select i1 %or.cond129, i32 0, i32 %27
  %report.2 = or i32 %report.1, %or47
  %28 = ptrtoint ptr %lo_shrt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lo_shrt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool51.not = icmp eq i32 %29, 0
  %and53 = and i32 %call2, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  %or.cond130 = select i1 %tobool51.not, i1 true, i1 %tobool54.not
  %or58 = select i1 %or.cond130, i32 0, i32 %29
  %report.3 = or i32 %report.2, %or58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %report.3)
  %tobool60.not = icmp eq i32 %report.3, 0
  br i1 %tobool60.not, label %if.end.if.end63_crit_edge, label %if.then61

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %det to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %det, align 4
  tail call void @snd_soc_jack_report(ptr noundef %31, i32 noundef %report.3, i32 noundef %or7) #11
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %if.end.if.end63_crit_edge
  br i1 %or.cond127, label %if.end63.do.body_crit_edge, label %if.then65

if.end63.do.body_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %mic_jack = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %mic_jack to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mic_jack, align 4
  tail call void @snd_soc_jack_report(ptr noundef %33, i32 noundef 2, i32 noundef 2) #11
  br label %do.body

do.body:                                          ; preds = %if.then65, %if.end63.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_component_handler.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_component_handler, %if.then72)) #11
          to label %do.body76 [label %if.then72], !srcloc !445

if.then72:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %component73 = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %component73 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %component73, align 4
  %dev74 = getelementptr inbounds %struct.snd_soc_component, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_component_handler.__UNIQUE_ID_ddebug321, ptr noundef %37, ptr noundef nonnull @.str.3, i32 noundef %report.3, i32 noundef %or7) #11
  br label %do.body76

do.body76:                                        ; preds = %if.then72, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm860x_component_handler.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm860x_component_handler, %if.then88)) #11
          to label %do.end93 [label %if.then88], !srcloc !445

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  %component89 = getelementptr inbounds %struct.pm860x_priv, ptr %data, i32 0, i32 4
  %38 = ptrtoint ptr %component89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %component89, align 4
  %dev90 = getelementptr inbounds %struct.snd_soc_component, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev90, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm860x_component_handler.__UNIQUE_ID_ddebug322, ptr noundef %41, ptr noundef nonnull @.str.4, i32 noundef %spec.select131) #11
  br label %do.end93

do.end93:                                         ; preds = %if.then88, %do.body76
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm860x_mic_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack, i32 noundef %det) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mic_jack = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %mic_jack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %mic_jack, align 4
  %mic_det = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 8, i32 3
  %5 = ptrtoint ptr %mic_det to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %det, ptr %mic_det, align 4
  %and = and i32 %det, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i2c = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %call3 = tail call i32 @pm860x_set_bits(ptr noundef %7, i32 noundef 55, i8 noundef zeroext 7, i8 noundef zeroext 7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @pm860x_component_handler(i32 noundef 0, ptr noundef %3)
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_codec_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm860x_codec_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_codec_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm860x_codec_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_snd_soc_jack_irq(ptr noundef %name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 1), ptr blockaddress(@trace_snd_soc_jack_irq, %do.body)) #11
          to label %if.end48 [label %do.body], !srcloc !445

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !435) #11
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !446

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !435) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !447
  %call42 = tail call i32 @__traceiter_snd_soc_jack_irq(ptr noundef null, ptr noundef %name) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !448
  %13 = tail call i32 @llvm.read_register.i32(metadata !435) #11
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !435) #11
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !446

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #11
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !435) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !449
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_snd_soc_jack_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_snd_soc_jack_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 226, ptr noundef nonnull @.str.6) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !450
  %31 = tail call i32 @llvm.read_register.i32(metadata !435) #11
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_snd_soc_jack_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_codec_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip3 = getelementptr inbounds %struct.pm860x_priv, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %chip3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %chip3, align 4
  %id = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp4 = icmp eq i32 %6, 2
  %client = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 3
  %companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 4
  %cond.in = select i1 %cmp4, ptr %client, ptr %companion
  %7 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cond = load ptr, ptr %cond.in, align 4
  %i2c = getelementptr inbounds %struct.pm860x_priv, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cond, ptr %i2c, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp6 = icmp eq i32 %10, 2
  %regmap = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 5
  %regmap_companion = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 6
  %cond10.in = select i1 %cmp6, ptr %regmap, ptr %regmap_companion
  %11 = ptrtoint ptr %cond10.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond10 = load ptr, ptr %cond10.in, align 4
  %regmap11 = getelementptr inbounds %struct.pm860x_priv, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %regmap11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %cond10, ptr %regmap11, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq_base = getelementptr inbounds %struct.pm860x_chip, ptr %3, i32 0, i32 12
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call13, null
  br i1 %tobool.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end16

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end
  %14 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call13, align 4
  %16 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_base, align 4
  %add = add i32 %17, %15
  %arrayidx = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 9, i32 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %arrayidx, align 4
  %arrayidx17 = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 10, i32 0
  %name18 = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 2
  %19 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name18, align 4
  %call19 = tail call ptr @strncpy(ptr noundef %arrayidx17, ptr noundef %20, i32 noundef 20)
  %call13.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 1) #11
  %tobool.not.1 = icmp eq ptr %call13.1, null
  br i1 %tobool.not.1, label %if.end16.cleanup.sink.split_crit_edge, label %if.end16.1

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16.1:                                       ; preds = %if.end16
  %21 = ptrtoint ptr %call13.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call13.1, align 4
  %23 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_base, align 4
  %add.1 = add i32 %24, %22
  %arrayidx.1 = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.1, ptr %arrayidx.1, align 4
  %arrayidx17.1 = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 10, i32 1
  %name18.1 = getelementptr inbounds %struct.resource, ptr %call13.1, i32 0, i32 2
  %26 = ptrtoint ptr %name18.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name18.1, align 4
  %call19.1 = tail call ptr @strncpy(ptr noundef %arrayidx17.1, ptr noundef %27, i32 noundef 20)
  %call13.2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 2) #11
  %tobool.not.2 = icmp eq ptr %call13.2, null
  br i1 %tobool.not.2, label %if.end16.1.cleanup.sink.split_crit_edge, label %if.end16.2

if.end16.1.cleanup.sink.split_crit_edge:          ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16.2:                                       ; preds = %if.end16.1
  %28 = ptrtoint ptr %call13.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call13.2, align 4
  %30 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_base, align 4
  %add.2 = add i32 %31, %29
  %arrayidx.2 = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.2, ptr %arrayidx.2, align 4
  %arrayidx17.2 = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 10, i32 2
  %name18.2 = getelementptr inbounds %struct.resource, ptr %call13.2, i32 0, i32 2
  %33 = ptrtoint ptr %name18.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name18.2, align 4
  %call19.2 = tail call ptr @strncpy(ptr noundef %arrayidx17.2, ptr noundef %34, i32 noundef 20)
  %call13.3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 3) #11
  %tobool.not.3 = icmp eq ptr %call13.3, null
  br i1 %tobool.not.3, label %if.end16.2.cleanup.sink.split_crit_edge, label %if.end16.3

if.end16.2.cleanup.sink.split_crit_edge:          ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16.3:                                       ; preds = %if.end16.2
  %35 = ptrtoint ptr %call13.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call13.3, align 4
  %37 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq_base, align 4
  %add.3 = add i32 %38, %36
  %arrayidx.3 = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 9, i32 3
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add.3, ptr %arrayidx.3, align 4
  %arrayidx17.3 = getelementptr %struct.pm860x_priv, ptr %call.i, i32 0, i32 10, i32 3
  %name18.3 = getelementptr inbounds %struct.resource, ptr %call13.3, i32 0, i32 2
  %40 = ptrtoint ptr %name18.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name18.3, align 4
  %call19.3 = tail call ptr @strncpy(ptr noundef %arrayidx17.3, ptr noundef %41, i32 noundef 20)
  %call21 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_pm860x, ptr noundef nonnull @pm860x_dai, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end16.3.cleanup_crit_edge, label %if.end16.3.cleanup.sink.split_crit_edge

if.end16.3.cleanup.sink.split_crit_edge:          ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end16.3.cleanup_crit_edge:                     ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end16.3.cleanup.sink.split_crit_edge, %if.end16.2.cleanup.sink.split_crit_edge, %if.end16.1.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.9, %if.end16.2.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end16.1.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end16.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end.cleanup.sink.split_crit_edge ], [ @.str.14, %if.end16.3.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.14.sink) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end16.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.3.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm860x_codec_remove(ptr nocapture noundef readnone %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %component1 = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %component1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %component1, align 4
  %regmap = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %6) #11
  %arrayidx = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 10, i32 0
  %call3 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef null, ptr noundef nonnull @pm860x_component_handler, i32 noundef 8192, ptr noundef %arrayidx2, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end, label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.147) #14
  br label %cleanup

while.body.preheader:                             ; preds = %for.inc.2.while.body.preheader_crit_edge, %for.inc.1.while.body.preheader_crit_edge, %for.inc.while.body.preheader_crit_edge
  %i.028.lcssa.ph = phi i32 [ 2, %for.inc.2.while.body.preheader_crit_edge ], [ 1, %for.inc.1.while.body.preheader_crit_edge ], [ 0, %for.inc.while.body.preheader_crit_edge ]
  %call3.lcssa.ph = phi i32 [ %call3.3, %for.inc.2.while.body.preheader_crit_edge ], [ %call3.2, %for.inc.1.while.body.preheader_crit_edge ], [ %call3.1, %for.inc.while.body.preheader_crit_edge ]
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.147) #14
  %arrayidx7 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 %i.028.lcssa.ph
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %14, ptr noundef %3) #11
  br i1 %cmp4.1, label %while.body.preheader.cleanup_crit_edge, label %while.body.1

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 10, i32 1
  %call3.1 = tail call i32 @request_threaded_irq(i32 noundef %16, ptr noundef null, ptr noundef nonnull @pm860x_component_handler, i32 noundef 8192, ptr noundef %arrayidx2.1, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %for.inc.while.body.preheader_crit_edge, label %for.inc.1

for.inc.while.body.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 10, i32 2
  %call3.2 = tail call i32 @request_threaded_irq(i32 noundef %18, ptr noundef null, ptr noundef nonnull @pm860x_component_handler, i32 noundef 8192, ptr noundef %arrayidx2.2, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %for.inc.1.while.body.preheader_crit_edge, label %for.inc.2

for.inc.1.while.body.preheader_crit_edge:         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 10, i32 3
  %call3.3 = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef null, ptr noundef nonnull @pm860x_component_handler, i32 noundef 8192, ptr noundef %arrayidx2.3, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp slt i32 %call3.3, 0
  br i1 %cmp4.3, label %for.inc.2.while.body.preheader_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.2.while.body.preheader_crit_edge:         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.preheader

while.body.1:                                     ; preds = %while.body.preheader
  %dec = add nsw i32 %i.028.lcssa.ph, -1
  %arrayidx7.1 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 %dec
  %21 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx7.1, align 4
  %call8.1 = tail call ptr @free_irq(i32 noundef %22, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5.not.1 = icmp eq i32 %dec, 0
  br i1 %cmp5.not.1, label %while.body.1.cleanup_crit_edge, label %while.body.2

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  %dec.1 = add nsw i32 %i.028.lcssa.ph, -2
  %arrayidx7.2 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 %dec.1
  %23 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.2, align 4
  %call8.2 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.2, %while.body.1.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %for.inc.2.cleanup_crit_edge ], [ %call3.lcssa.ph, %while.body.2 ], [ %call3.lcssa.ph, %while.body.1.cleanup_crit_edge ], [ %call3.lcssa.ph, %while.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm860x_remove(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %3) #11
  %arrayidx.1 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  %call1.1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %3) #11
  %arrayidx.2 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %call1.2 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %3) #11
  %arrayidx.3 = getelementptr %struct.pm860x_priv, ptr %3, i32 0, i32 9, i32 0
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  %call1.3 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %i2c = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %call2 = tail call i32 @pm860x_reg_write(ptr noundef %8, i32 noundef 66, i8 noundef zeroext 40) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 64424400) #11
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %call5 = tail call i32 @pm860x_reg_write(ptr noundef %11, i32 noundef 66, i8 noundef zeroext 56) #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %i2c7 = getelementptr inbounds %struct.pm860x_priv, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %i2c7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c7, align 4
  %call9 = tail call i32 @pm860x_set_bits(ptr noundef %13, i32 noundef 66, i8 noundef zeroext 56, i8 noundef zeroext 0) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_get_volsw_2r_st(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rreg, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef %6) #11
  %and = and i32 %call2, 63
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 183) #11
  %shr = lshr i32 %call3, 4
  %and4 = and i32 %shr, 15
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef %8) #11
  %and7 = and i32 %call6, 63
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef 183) #11
  %and10 = and i32 %call9, 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx30 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %m = getelementptr [272 x %struct.st_gain], ptr @st_table, i32 0, i32 %i.045, i32 1
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and)
  %cmp14 = icmp eq i32 %10, %and
  br i1 %cmp14, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %n = getelementptr [272 x %struct.st_gain], ptr @st_table, i32 0, i32 %i.045, i32 2
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and4)
  %cmp17 = icmp eq i32 %12, %and4
  br i1 %cmp17, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.045, ptr %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and7)
  %cmp22 = icmp eq i32 %10, %and7
  br i1 %cmp22, label %land.lhs.true23, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true23:                                  ; preds = %if.end
  %n25 = getelementptr [272 x %struct.st_gain], ptr @st_table, i32 0, i32 %i.045, i32 2
  %14 = ptrtoint ptr %n25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and10)
  %cmp27 = icmp eq i32 %15, %and10
  br i1 %cmp27, label %if.then28, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then28:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.045, ptr %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %land.lhs.true23.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, 272
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_put_volsw_2r_st(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rreg, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %8)
  %cmp = icmp ugt i32 %8, 271
  call void @__sanitizer_cov_trace_const_cmp4(i32 271, i32 %10)
  %cmp4 = icmp ugt i32 %10, 271
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg1, align 4
  %m = getelementptr [272 x %struct.st_gain], ptr @st_table, i32 0, i32 %8, i32 1
  %13 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m, align 4
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %12, i32 noundef 63, i32 noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %n = getelementptr [272 x %struct.st_gain], ptr @st_table, i32 0, i32 %8, i32 2
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  %shl = shl i32 %16, 4
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 183, i32 noundef 240, i32 noundef %shl) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %m16 = getelementptr [272 x %struct.st_gain], ptr @st_table, i32 0, i32 %10, i32 1
  %17 = ptrtoint ptr %m16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m16, align 4
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %6, i32 noundef 63, i32 noundef %18) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %n22 = getelementptr [272 x %struct.st_gain], ptr @st_table, i32 0, i32 %10, i32 2
  %19 = ptrtoint ptr %n22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n22, align 4
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 183, i32 noundef 15, i32 noundef %20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %if.end20 ], [ -22, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ %call17, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_get_volsw_2r_out(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rreg, align 4
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift2, align 4
  %max3 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #11, !range !451
  %sub.i = sub nuw nsw i32 32, %13
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef %6) #11
  %shr = lshr i32 %call5, %10
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %4, i32 noundef %8) #11
  %shr7 = lshr i32 %call6, %10
  %sub8 = sub i32 %12, %shr
  %and = and i32 %sub, %sub8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %value, align 8
  %sub9 = sub i32 %12, %shr7
  %and10 = and i32 %sub9, %sub
  %arrayidx12 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and10, ptr %arrayidx12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_soc_put_volsw_2r_out(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %rreg = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %rreg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rreg, align 4
  %shift2 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 5
  %9 = ptrtoint ptr %shift2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift2, align 4
  %max3 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %max3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 true) #11, !range !451
  %sub.i = sub nuw nsw i32 32, %13
  %sub.i.op = shl nsw i32 -1, %sub.i
  %sub.i.op.op = xor i32 %sub.i.op, -1
  %sub = select i1 %tobool.not.i, i32 0, i32 %sub.i.op.op
  %shl5 = shl i32 %sub, %10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 8
  %sub6 = sub i32 %12, %15
  %and = and i32 %sub, %sub6
  %arrayidx8 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8, align 4
  %shl11 = shl i32 %and, %10
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %6, i32 noundef %shl5, i32 noundef %shl11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub9 = sub i32 %12, %17
  %and10 = and i32 %sub, %sub9
  %shl12 = shl i32 %and10, %10
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %8, i32 noundef %shl5, i32 noundef %shl12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ %call13, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(9) @.str.95) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool.not, i32 32, i32 0
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(10) @.str.96) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %dac.1 = select i1 %tobool4.not, i32 16, i32 %spec.select
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dac.1)
  %tobool7.not = icmp eq i32 %dac.1, 0
  br i1 %tobool7.not, label %sw.bb.sw.epilog_crit_edge, label %if.then8

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %dac.1, 8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 203, i32 noundef 128, i32 noundef 128) #11
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 218, i32 noundef 4, i32 noundef 4) #11
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 225, i32 noundef %or, i32 noundef %or) #11
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dac.1)
  %tobool14.not = icmp eq i32 %dac.1, 0
  br i1 %tobool14.not, label %sw.bb13.sw.epilog_crit_edge, label %if.then15

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then15:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 203, i32 noundef 128, i32 noundef 128) #11
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 218, i32 noundef 4, i32 noundef 4) #11
  %call18 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 225) #11
  %neg = xor i32 %dac.1, -1
  %and = and i32 %call18, %neg
  %and19 = and i32 %and, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %and22 = and i32 %and, -9
  %spec.select42 = select i1 %tobool20.not, i32 %and22, i32 %and
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 225, i32 noundef %spec.select42) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15, %sw.bb13.sw.epilog_crit_edge, %if.then8, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_rsync_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 203, i32 noundef 128, i32 noundef 0) #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 218, i32 noundef 4, i32 noundef 4) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm860x_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm860x_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %dir2 = getelementptr inbounds %struct.pm860x_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dir2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %dir2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_pcm_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.152)
  switch i16 %trunc, label %entry.sw.epilog_crit_edge [
    i16 4096, label %entry.sw.bb_crit_edge
    i16 12288, label %entry.sw.bb_crit_edge48
    i16 16384, label %sw.bb7
  ]

entry.sw.bb_crit_edge48:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge48
  %dir = getelementptr inbounds %struct.pm860x_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %spec.select = select i1 %cmp, i32 16, i32 0
  %spec.select43 = select i1 %cmp, i32 0, i32 -22
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dir8 = getelementptr inbounds %struct.pm860x_priv, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %dir8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp eq i32 %11, 0
  %spec.select44 = select i1 %cmp9, i32 0, i32 -22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %inf.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb ], [ 0, %sw.bb7 ]
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %spec.select43, %sw.bb ], [ %spec.select44, %sw.bb7 ]
  %and16 = and i32 %fmt, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and16)
  %cond = icmp eq i32 %and16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not47 = icmp eq i32 %ret.0, 0
  %tobool.not = select i1 %cond, i1 true, i1 %tobool.not47
  br i1 %tobool.not, label %if.end26, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %12 = zext i1 %cond to i32
  %spec.select45 = or i32 %inf.0, %12
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 177, i32 noundef 119, i32 noundef %spec.select45) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_mute_stream(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 68
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 203, i32 noundef 68, i32 noundef %spec.select) #11
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 218, i32 noundef 4, i32 noundef 4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_pcm_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !451
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  %7 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 18, label %sw.bb3
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb3:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %params_width.exit.sw.epilog_crit_edge
  %inf.0 = phi i32 [ 8, %sw.bb3 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 177, i32 noundef 8, i32 noundef %inf.0) #11
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %9, label %sw.epilog.cleanup_crit_edge [
    i32 8000, label %sw.epilog.sw.epilog18_crit_edge
    i32 16000, label %sw.bb14
    i32 32000, label %sw.bb15
    i32 48000, label %sw.bb16
  ]

sw.epilog.sw.epilog18_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb16, %sw.bb15, %sw.bb14, %sw.epilog.sw.epilog18_crit_edge
  %inf.1 = phi i32 [ 8, %sw.bb16 ], [ 6, %sw.bb15 ], [ 3, %sw.bb14 ], [ 0, %sw.epilog.sw.epilog18_crit_edge ]
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 179, i32 noundef 15, i32 noundef %inf.1) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog18, %sw.epilog.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog18 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_i2s_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.155)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dir = getelementptr inbounds %struct.pm860x_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %dir8 = getelementptr inbounds %struct.pm860x_priv, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %dir8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %inf.0 = phi i32 [ 17, %sw.bb.sw.epilog_crit_edge ], [ 1, %sw.bb7.sw.epilog_crit_edge ]
  %and17 = and i32 %fmt, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and17)
  %cond = icmp eq i32 %and17, 1
  br i1 %cond, label %sw.bb18, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 188, i32 noundef 119, i32 noundef %inf.0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.epilog.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb18 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm860x_i2s_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #11, !range !451
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #11
  %7 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %params_width.exit.sw.epilog_crit_edge
    i32 18, label %sw.bb2
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb2:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %params_width.exit.sw.epilog_crit_edge
  %inf.0 = phi i32 [ 8, %sw.bb2 ], [ 0, %params_width.exit.sw.epilog_crit_edge ]
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 188, i32 noundef 8, i32 noundef %inf.0) #11
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %9, label %sw.epilog.cleanup_crit_edge [
    i32 8000, label %sw.epilog.sw.epilog13_crit_edge
    i32 11025, label %sw.bb6
    i32 16000, label %sw.bb7
    i32 22050, label %sw.bb8
    i32 32000, label %sw.bb9
    i32 44100, label %sw.bb10
    i32 48000, label %sw.bb11
  ]

sw.epilog.sw.epilog13_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog13

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog13

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog13

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog13

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog13

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.epilog.sw.epilog13_crit_edge
  %inf.1 = phi i32 [ 8, %sw.bb11 ], [ 7, %sw.bb10 ], [ 6, %sw.bb9 ], [ 4, %sw.bb8 ], [ 3, %sw.bb7 ], [ 1, %sw.bb6 ], [ 0, %sw.epilog.sw.epilog13_crit_edge ]
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 190, i32 noundef 15, i32 noundef %inf.1) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog13, %sw.epilog.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog13 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 228)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 228)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !35, !37, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !153, !155, !156, !158, !159, !161, !163, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !423, !424, !425, !427, !429, !431, !433}
!llvm.named.register.sp = !{!435}
!llvm.module.flags = !{!436, !437, !438, !439, !440, !441, !442, !443}
!llvm.ident = !{!444}

!0 = !{ptr @__ksymtab_pm860x_hs_jack_detect, !1, !"__ksymtab_pm860x_hs_jack_detect", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1280, i32 1}
!2 = !{ptr @__ksymtab_pm860x_mic_jack_detect, !3, !"__ksymtab_pm860x_mic_jack_detect", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1298, i32 1}
!4 = !{ptr @__initcall__kmod_snd_soc_88pm860x__323_1403_pm860x_codec_driver_init6, !5, !"__initcall__kmod_snd_soc_88pm860x__323_1403_pm860x_codec_driver_init6", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1403, i32 1}
!6 = !{ptr @__exitcall_pm860x_codec_driver_exit, !5, !"__exitcall_pm860x_codec_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description324, !8, !"__UNIQUE_ID_description324", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1405, i32 1}
!9 = !{ptr @__UNIQUE_ID_author325, !10, !"__UNIQUE_ID_author325", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1406, i32 1}
!11 = !{ptr @__UNIQUE_ID_file326, !12, !"__UNIQUE_ID_file326", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1407, i32 1}
!13 = !{ptr @__UNIQUE_ID_license327, !12, !"__UNIQUE_ID_license327", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias328, !15, !"__UNIQUE_ID_alias328", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1408, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1243, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pm860x_component_handler.__UNIQUE_ID_ddebug321, !17, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1245, i32 2}
!24 = !{ptr @pm860x_component_handler.__UNIQUE_ID_ddebug322, !23, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/trace/events/asoc.h", i32 211, i32 1}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1397, i32 11}
!35 = !{ptr @pm860x_codec_driver, !36, !"pm860x_codec_driver", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1395, i32 31}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1373, i32 4}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pm860x_codec_probe._entry, !38, !"_entry", i1 false, i1 false}
!43 = !{ptr @pm860x_codec_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1384, i32 3}
!46 = !{ptr @pm860x_codec_probe._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pm860x_codec_probe._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @soc_component_dev_pm860x, !49, !"soc_component_dev_pm860x", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1335, i32 46}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 478, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 480, i32 2}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 482, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 484, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 486, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 490, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 492, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 494, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 496, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 501, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 506, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 510, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 512, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 514, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 515, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 516, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 518, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 520, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 521, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 522, i32 2}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 524, i32 2}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 525, i32 2}
!94 = !{ptr @pm860x_snd_controls, !95, !"pm860x_snd_controls", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 477, i32 38}
!96 = !{ptr @adc_tlv, !97, !"adc_tlv", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 153, i32 14}
!98 = !{ptr @aux_tlv, !99, !"aux_tlv", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 165, i32 14}
!100 = !{ptr @mic_tlv, !101, !"mic_tlv", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 156, i32 14}
!102 = !{ptr @st_table, !103, !"st_table", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 196, i32 23}
!104 = !{ptr @st_tlv, !105, !"st_tlv", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 178, i32 14}
!106 = !{ptr @out_tlv, !107, !"out_tlv", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 171, i32 14}
!108 = !{ptr @dpga_tlv, !109, !"dpga_tlv", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 150, i32 14}
!110 = !{ptr @pm860x_hs1_opamp_enum, !111, !"pm860x_hs1_opamp_enum", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 444, i32 8}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 440, i32 44}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 440, i32 52}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 440, i32 60}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 440, i32 66}
!120 = !{ptr @pm860x_opamp_texts, !121, !"pm860x_opamp_texts", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 440, i32 20}
!122 = !{ptr @pm860x_hs2_opamp_enum, !123, !"pm860x_hs2_opamp_enum", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 447, i32 8}
!124 = !{ptr @pm860x_hs1_pa_enum, !125, !"pm860x_hs1_pa_enum", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 450, i32 8}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 442, i32 41}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 442, i32 55}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 442, i32 62}
!132 = !{ptr @pm860x_pa_texts, !133, !"pm860x_pa_texts", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 442, i32 20}
!134 = !{ptr @pm860x_hs2_pa_enum, !135, !"pm860x_hs2_pa_enum", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 453, i32 8}
!136 = !{ptr @pm860x_lo1_opamp_enum, !137, !"pm860x_lo1_opamp_enum", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 456, i32 8}
!138 = !{ptr @pm860x_lo2_opamp_enum, !139, !"pm860x_lo2_opamp_enum", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 459, i32 8}
!140 = !{ptr @pm860x_lo1_pa_enum, !141, !"pm860x_lo1_pa_enum", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 462, i32 8}
!142 = !{ptr @pm860x_lo2_pa_enum, !143, !"pm860x_lo2_pa_enum", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 465, i32 8}
!144 = !{ptr @pm860x_spk_ear_opamp_enum, !145, !"pm860x_spk_ear_opamp_enum", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 474, i32 8}
!146 = !{ptr @pm860x_spk_pa_enum, !147, !"pm860x_spk_pa_enum", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 468, i32 8}
!148 = !{ptr @pm860x_ear_pa_enum, !149, !"pm860x_ear_pa_enum", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 471, i32 8}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 708, i32 2}
!152 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 710, i32 2}
!155 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 714, i32 2}
!158 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 716, i32 2}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 718, i32 2}
!163 = !{ptr @.str.63, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 720, i32 2}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 721, i32 2}
!168 = !{ptr @.str.66, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 722, i32 2}
!170 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 723, i32 2}
!172 = !{ptr @.str.68, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 724, i32 2}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 725, i32 2}
!176 = !{ptr @.str.70, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 726, i32 2}
!178 = !{ptr @.str.71, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 728, i32 2}
!180 = !{ptr @.str.72, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 731, i32 2}
!182 = !{ptr @.str.73, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 733, i32 2}
!184 = !{ptr @.str.74, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 735, i32 2}
!186 = !{ptr @.str.75, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 736, i32 2}
!188 = !{ptr @.str.76, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 738, i32 2}
!190 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 740, i32 2}
!192 = !{ptr @.str.78, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 743, i32 2}
!194 = !{ptr @.str.79, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 744, i32 2}
!196 = !{ptr @.str.80, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 745, i32 2}
!198 = !{ptr @.str.81, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 746, i32 2}
!200 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 747, i32 2}
!202 = !{ptr @.str.83, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 748, i32 2}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 749, i32 2}
!206 = !{ptr @.str.85, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 750, i32 2}
!208 = !{ptr @.str.86, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 751, i32 2}
!210 = !{ptr @.str.87, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 753, i32 2}
!212 = !{ptr @.str.88, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 754, i32 2}
!214 = !{ptr @.str.89, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 755, i32 2}
!216 = !{ptr @.str.90, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 756, i32 2}
!218 = !{ptr @.str.91, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 757, i32 2}
!220 = !{ptr @.str.92, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 758, i32 2}
!222 = !{ptr @.str.93, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 759, i32 2}
!224 = !{ptr @.str.94, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 760, i32 2}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 762, i32 2}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 765, i32 2}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 769, i32 2}
!232 = !{ptr @.str.98, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 770, i32 2}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 771, i32 2}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 772, i32 2}
!238 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 773, i32 2}
!240 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 774, i32 2}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 775, i32 2}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 776, i32 2}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 777, i32 2}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 778, i32 2}
!250 = !{ptr @.str.107, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 779, i32 2}
!252 = !{ptr @.str.108, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 783, i32 2}
!254 = !{ptr @.str.109, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 784, i32 2}
!256 = !{ptr @.str.110, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 785, i32 2}
!258 = !{ptr @.str.111, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 786, i32 2}
!260 = !{ptr @.str.112, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 787, i32 2}
!262 = !{ptr @.str.113, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 788, i32 2}
!264 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 789, i32 2}
!266 = !{ptr @.str.115, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 790, i32 2}
!268 = !{ptr @.str.116, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 791, i32 2}
!270 = !{ptr @.str.117, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 792, i32 2}
!272 = !{ptr @.str.118, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 793, i32 2}
!274 = !{ptr @.str.119, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 794, i32 2}
!276 = !{ptr @.str.120, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 795, i32 2}
!278 = !{ptr @.str.121, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 796, i32 2}
!280 = !{ptr @.str.122, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 797, i32 2}
!282 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 800, i32 2}
!284 = !{ptr @pm860x_dapm_widgets, !285, !"pm860x_dapm_widgets", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 707, i32 41}
!286 = !{ptr @i2s_mic_mux, !287, !"i2s_mic_mux", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 567, i32 38}
!288 = !{ptr @i2s_mic_enum, !289, !"i2s_mic_enum", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 564, i32 8}
!290 = !{ptr @.str.125, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 561, i32 2}
!292 = !{ptr @.str.126, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 561, i32 11}
!294 = !{ptr @i2s_mic_text, !295, !"i2s_mic_text", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 560, i32 20}
!296 = !{ptr @adcl_mux, !297, !"adcl_mux", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 578, i32 38}
!298 = !{ptr @adcl_enum, !299, !"adcl_enum", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 575, i32 8}
!300 = !{ptr @.str.127, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 572, i32 2}
!302 = !{ptr @.str.128, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 572, i32 10}
!304 = !{ptr @adcl_text, !305, !"adcl_text", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 571, i32 20}
!306 = !{ptr @adcr_mux, !307, !"adcr_mux", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 589, i32 38}
!308 = !{ptr @adcr_enum, !309, !"adcr_enum", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 586, i32 8}
!310 = !{ptr @adcr_text, !311, !"adcr_text", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 582, i32 20}
!312 = !{ptr @ec_mux, !313, !"ec_mux", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 611, i32 38}
!314 = !{ptr @ec_enum, !315, !"ec_enum", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 608, i32 8}
!316 = !{ptr @.str.129, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 605, i32 2}
!318 = !{ptr @.str.130, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 605, i32 10}
!320 = !{ptr @.str.131, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 605, i32 19}
!322 = !{ptr @ec_text, !323, !"ec_text", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 604, i32 20}
!324 = !{ptr @adcr_ec_mux, !325, !"adcr_ec_mux", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 600, i32 38}
!326 = !{ptr @adcr_ec_enum, !327, !"adcr_ec_enum", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 597, i32 8}
!328 = !{ptr @.str.132, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 594, i32 10}
!330 = !{ptr @adcr_ec_text, !331, !"adcr_ec_text", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 593, i32 20}
!332 = !{ptr @.str.133, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 542, i32 2}
!334 = !{ptr @lepa_switch_controls, !335, !"lepa_switch_controls", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 541, i32 38}
!336 = !{ptr @repa_switch_controls, !337, !"repa_switch_controls", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 545, i32 38}
!338 = !{ptr @aux1_switch_controls, !339, !"aux1_switch_controls", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 533, i32 38}
!340 = !{ptr @aux2_switch_controls, !341, !"aux2_switch_controls", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 537, i32 38}
!342 = !{ptr @mic_mux, !343, !"mic_mux", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 704, i32 38}
!344 = !{ptr @mic_enum, !345, !"mic_enum", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 701, i32 8}
!346 = !{ptr @.str.138, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 698, i32 2}
!348 = !{ptr @.str.139, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 698, i32 11}
!350 = !{ptr @mic_text, !351, !"mic_text", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 697, i32 20}
!352 = !{ptr @i2s_din_mux, !353, !"i2s_din_mux", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 556, i32 38}
!354 = !{ptr @i2s_din_enum, !355, !"i2s_din_enum", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 553, i32 8}
!356 = !{ptr @.str.140, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 550, i32 2}
!358 = !{ptr @.str.141, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 550, i32 9}
!360 = !{ptr @i2s_din_text, !361, !"i2s_din_text", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 549, i32 20}
!362 = !{ptr @dac_hs1_mux, !363, !"dac_hs1_mux", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 622, i32 38}
!364 = !{ptr @dac_hs1_enum, !365, !"dac_hs1_enum", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 619, i32 8}
!366 = !{ptr @.str.142, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 615, i32 2}
!368 = !{ptr @dac_text, !369, !"dac_text", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 614, i32 20}
!370 = !{ptr @dac_hs2_mux, !371, !"dac_hs2_mux", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 629, i32 38}
!372 = !{ptr @dac_hs2_enum, !373, !"dac_hs2_enum", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 626, i32 8}
!374 = !{ptr @dac_lo1_mux, !375, !"dac_lo1_mux", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 636, i32 38}
!376 = !{ptr @dac_lo1_enum, !377, !"dac_lo1_enum", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 633, i32 8}
!378 = !{ptr @dac_lo2_mux, !379, !"dac_lo2_mux", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 643, i32 38}
!380 = !{ptr @dac_lo2_enum, !381, !"dac_lo2_enum", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 640, i32 8}
!382 = !{ptr @dac_spk_ear_mux, !383, !"dac_spk_ear_mux", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 650, i32 38}
!384 = !{ptr @dac_spk_ear_enum, !385, !"dac_spk_ear_enum", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 647, i32 8}
!386 = !{ptr @hs1_mux, !387, !"hs1_mux", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 661, i32 38}
!388 = !{ptr @hs1_enum, !389, !"hs1_enum", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 658, i32 8}
!390 = !{ptr @.str.143, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 655, i32 2}
!392 = !{ptr @.str.144, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 655, i32 13}
!394 = !{ptr @in_text, !395, !"in_text", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 654, i32 20}
!396 = !{ptr @hs2_mux, !397, !"hs2_mux", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 668, i32 38}
!398 = !{ptr @hs2_enum, !399, !"hs2_enum", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 665, i32 8}
!400 = !{ptr @lo1_mux, !401, !"lo1_mux", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 675, i32 38}
!402 = !{ptr @lo1_enum, !403, !"lo1_enum", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 672, i32 8}
!404 = !{ptr @lo2_mux, !405, !"lo2_mux", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 682, i32 38}
!406 = !{ptr @lo2_enum, !407, !"lo2_enum", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 679, i32 8}
!408 = !{ptr @spk_demux, !409, !"spk_demux", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 693, i32 38}
!410 = !{ptr @spk_enum, !411, !"spk_enum", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 690, i32 8}
!412 = !{ptr @.str.145, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 687, i32 2}
!414 = !{ptr @.str.146, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 687, i32 14}
!416 = !{ptr @spk_text, !417, !"spk_text", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 686, i32 20}
!418 = !{ptr @pm860x_dapm_routes, !419, !"pm860x_dapm_routes", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 803, i32 40}
!420 = !{ptr @.str.147, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1313, i32 4}
!422 = !{ptr @.str.148, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @pm860x_probe._entry, !421, !"_entry", i1 false, i1 false}
!424 = !{ptr @pm860x_probe._entry_ptr, !421, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @.str.149, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1160, i32 11}
!427 = !{ptr @.str.150, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1181, i32 11}
!429 = !{ptr @pm860x_dai, !430, !"pm860x_dai", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1157, i32 34}
!431 = !{ptr @pm860x_pcm_dai_ops, !432, !"pm860x_pcm_dai_ops", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1138, i32 37}
!433 = !{ptr @pm860x_i2s_dai_ops, !434, !"pm860x_i2s_dai_ops", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/88pm860x-codec.c", i32 1146, i32 37}
!435 = !{!"sp"}
!436 = !{i32 1, !"wchar_size", i32 2}
!437 = !{i32 1, !"min_enum_size", i32 4}
!438 = !{i32 8, !"branch-target-enforcement", i32 0}
!439 = !{i32 8, !"sign-return-address", i32 0}
!440 = !{i32 8, !"sign-return-address-all", i32 0}
!441 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!442 = !{i32 7, !"uwtable", i32 1}
!443 = !{i32 7, !"frame-pointer", i32 2}
!444 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!445 = !{i64 2148733365, i64 2148733370, i64 2148733383, i64 2148733427, i64 2148733461, i64 2148733482}
!446 = !{!"branch_weights", i32 2000, i32 1}
!447 = !{i64 2156448562}
!448 = !{i64 2156448765}
!449 = !{i64 2149406578}
!450 = !{i64 2149407614}
!451 = !{i32 0, i32 33}
