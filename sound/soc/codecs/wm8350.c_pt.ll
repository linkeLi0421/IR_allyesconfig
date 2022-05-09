; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8350.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8350.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8350_hp_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_hp_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_wm8350_hp_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_hp_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_hp_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_hp_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+wm8350_mic_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8350_mic_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_wm8350_mic_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8350_mic_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8350_mic_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_wm8350_mic_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
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
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.wm8350_data = type { ptr, %struct.wm8350_output, %struct.wm8350_output, %struct.wm8350_jack_data, %struct.wm8350_jack_data, %struct.wm8350_jack_data, [2 x %struct.regulator_bulk_data], i32, i32, %struct.delayed_work }
%struct.wm8350_output = type { i16, i16, i16, i16, i16 }
%struct.wm8350_jack_data = type { ptr, %struct.delayed_work, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wm8350 = type { ptr, ptr, i8, %struct.mutex, %struct.completion, %struct.mutex, i32, i32, [7 x i16], %struct.wm8350_codec, %struct.wm8350_gpio, %struct.wm8350_hwmon, %struct.wm8350_pmic, %struct.wm8350_power, %struct.wm8350_rtc, %struct.wm8350_wdt }
%struct.wm8350_codec = type { ptr, ptr }
%struct.wm8350_gpio = type { ptr }
%struct.wm8350_hwmon = type { ptr, ptr }
%struct.wm8350_pmic = type { i32, i32, i32, i32, i16, i16, i16, i16, [12 x ptr], [2 x %struct.wm8350_led] }
%struct.wm8350_led = type { ptr, %struct.work_struct, %struct.spinlock, i32, %struct.led_classdev, i32, i32, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data, ptr, %struct.regulator_consumer_supply, %struct.regulator_init_data }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm8350_power = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm8350_rtc = type { ptr, ptr, i32, i32 }
%struct.wm8350_wdt = type { ptr }
%struct.wm8350_audio_platform_data = type { i32, i32, i32, i32, i24 }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__kstrtab_wm8350_hp_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_hp_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_hp_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_hp_jack_detect to i32), ptr @__kstrtab_wm8350_hp_jack_detect, ptr @__kstrtabns_wm8350_hp_jack_detect }, section "___ksymtab_gpl+wm8350_hp_jack_detect", align 4
@__kstrtab_wm8350_mic_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8350_mic_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8350_mic_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8350_mic_jack_detect to i32), ptr @__kstrtab_wm8350_mic_jack_detect, ptr @__kstrtabns_wm8350_mic_jack_detect }, section "___ksymtab_gpl+wm8350_mic_jack_detect", align 4
@__initcall__kmod_snd_soc_wm8350__322_1613_wm8350_codec_driver_init6 = internal global ptr @wm8350_codec_driver_init, section ".initcall6.init", align 4
@wm8350_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8350_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8350_codec_driver_exit = internal global ptr @wm8350_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [46 x i8] c"snd_soc_wm8350.description=ASoC WM8350 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [36 x i8] c"snd_soc_wm8350.author=Liam Girdwood\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [52 x i8] c"snd_soc_wm8350.file=sound/soc/codecs/snd-soc-wm8350\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [27 x i8] c"snd_soc_wm8350.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias327 = internal constant [43 x i8] c"snd_soc_wm8350.alias=platform:wm8350-codec\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM8350 HPL\00", [21 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_snd_soc_jack_irq = external dso_local global %struct.tracepoint, align 4
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/asoc.h\00", [36 x i8] zeroinitializer }, align 32
@trace_snd_soc_jack_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM8350 HPR\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8350-codec\00", [19 x i8] zeroinitializer }, align 32
@soc_component_dev_wm8350 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8350_snd_controls, i32 29, ptr @wm8350_dapm_widgets, i32 36, ptr @wm8350_dapm_routes, i32 50, ptr @wm8350_component_probe, ptr @wm8350_component_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8350_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.191, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.192, i64 68719476804, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.193, i64 68719476804, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8350_snd_controls = internal constant { [29 x %struct.snd_kcontrol_new], [336 x i8] } { [29 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @wm8350_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8350_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @wm8350_get_volsw_2r, ptr @wm8350_put_volsw_2r_vu, %union.anon.94 { ptr @dac_pcm_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8350_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8350_enum, i64 192) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8350_enum, i64 256) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8350_enum, i64 320) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8350_enum, i64 384) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @wm8350_get_volsw_2r, ptr @wm8350_put_volsw_2r_vu, %union.anon.94 { ptr @adc_pcm_tlv }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @capture_sd_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @wm8350_get_volsw_2r, ptr @wm8350_put_volsw_2r_vu, %union.anon.94 { ptr @pre_amp_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @wm8350_get_volsw_2r, ptr @wm8350_put_volsw_2r_vu, %union.anon.94 { ptr @out_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @wm8350_get_volsw_2r, ptr @wm8350_put_volsw_2r_vu, %union.anon.94 { ptr @out_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }], [336 x i8] zeroinitializer }, align 32
@wm8350_dapm_routes = internal constant { [50 x %struct.snd_soc_dapm_route], [664 x i8] } { [50 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.142, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.152, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.147, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.149, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.142, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.144, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.126, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.147, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.149, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.124, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.126, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.128, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.130, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.132, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr @.str.134, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.126, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.137, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.134, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr @.str.139, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.115, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.117, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr @.str.119, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.115, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.117, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.119, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.157, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.159, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.161, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.157, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.159, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.161, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }], [664 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Playback Deemphasis\00", [44 x i8] zeroinitializer }, align 32
@wm8350_enum = internal constant { [8 x %struct.soc_enum], [128 x i8] } { [8 x %struct.soc_enum] [%struct.soc_enum { i32 48, i8 4, i8 4, i32 4, i32 3, ptr @wm8350_deemp, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 48, i8 0, i8 0, i32 4, i32 3, ptr @wm8350_pol, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 59, i8 14, i8 14, i32 2, i32 1, ptr @wm8350_dacmutem, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 59, i8 13, i8 13, i32 2, i32 1, ptr @wm8350_dacmutes, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 64, i8 15, i8 15, i32 2, i32 1, ptr @wm8350_adcfilter, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 64, i8 8, i8 8, i32 4, i32 3, ptr @wm8350_adchp, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 64, i8 0, i8 0, i32 4, i32 3, ptr @wm8350_pol, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 100, i8 15, i8 15, i32 2, i32 1, ptr @wm8350_lr, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Playback DAC Inversion\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Playback PCM Volume\00", [44 x i8] zeroinitializer }, align 32
@dac_pcm_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7163, i32 65572], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 50, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Playback PCM Mute Function\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Playback PCM Mute Speed\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture PCM Filter\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Capture PCM HP Filter\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Capture ADC Inversion\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture PCM Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_pcm_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 66, i32 67, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Capture Sidetone Volume\00", [40 x i8] zeroinitializer }, align 32
@capture_sd_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 12, i32 1, i32 8, i32 -3600, i32 65836, i32 13, i32 15, i32 1, i32 8, i32 0, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 68, i32 68, i32 8, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@pre_amp_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 3525], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 80, i32 81, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Capture ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 81, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Left Input Left Sidetone Volume\00", [32 x i8] zeroinitializer }, align 32
@out_mix_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 65836], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 96, i32 96, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Left Input Right Sidetone Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 96, i32 96, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Left Input Bypass Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 96, i32 96, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Right Input Left Sidetone Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 97, i32 97, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Right Input Right Sidetone Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 97, i32 97, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Right Input Bypass Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 97, i32 97, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Left Input Mixer +20dB Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 98, i32 98, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Right Input Mixer +20dB Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 99, i32 99, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Out4 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 100, i32 100, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Out1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@out_pga_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 104, i32 105, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Out1 Playback ZC Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 104, i32 105, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Out2 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 106, i32 107, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Out2 Playback ZC Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 107, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Out2 Right Invert Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Out2 Beep Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 111, i32 111, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Out1 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 104, i32 105, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Out2 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 106, i32 107, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8350_deemp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@wm8350_pol = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [16 x i8] zeroinitializer }, align 32
@wm8350_dacmutem = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.60, ptr @.str.64], [24 x i8] zeroinitializer }, align 32
@wm8350_dacmutes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.65, ptr @.str.66], [24 x i8] zeroinitializer }, align 32
@wm8350_adcfilter = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.56, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@wm8350_adchp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.58, ptr @.str.68, ptr @.str.69, ptr @.str.57], [16 x i8] zeroinitializer }, align 32
@wm8350_lr = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.70, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1kHz\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Inv R\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Inv L\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Inv L & R\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Soft\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Fast\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Slow\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"High Pass\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8kHz\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN3R PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN3L PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Out2 PGA\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Out2 PGA\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Out1 PGA\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Out1 PGA\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Capture Mixer\00", [44 x i8] zeroinitializer }, align 32
@wm8350_right_capt_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Capture Mixer\00", [45 x i8] zeroinitializer }, align 32
@wm8350_left_capt_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Out4 Mixer\00", [21 x i8] zeroinitializer }, align 32
@wm8350_out4_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Out3 Mixer\00", [21 x i8] zeroinitializer }, align 32
@wm8350_out3_mixer_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Playback Mixer\00", [43 x i8] zeroinitializer }, align 32
@wm8350_right_play_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Playback Mixer\00", [44 x i8] zeroinitializer }, align 32
@wm8350_left_play_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left Mic Mixer\00", [17 x i8] zeroinitializer }, align 32
@wm8350_left_mic_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.157, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.159, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right Mic Mixer\00", [16 x i8] zeroinitializer }, align 32
@wm8350_right_mic_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.157, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.159, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Out2 Mixer\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Beep\00", [27 x i8] zeroinitializer }, align 32
@wm8350_beep_switch_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Out4 Capture Channel\00", [43 x i8] zeroinitializer }, align 32
@wm8350_out4_capture_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @wm8350_enum, i64 448) to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT1R\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT1L\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT2R\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT2L\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT3\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT4\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1RN\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1RP\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2R\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1LP\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1LN\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN2L\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3R\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN3L\00", [27 x i8] zeroinitializer }, align 32
@wm8350_dapm_widgets = internal constant { [36 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1616 x i8] } { [36 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8350_right_capt_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8350_left_capt_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @wm8350_out4_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @wm8350_out3_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @wm8350_right_play_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @wm8350_left_play_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8350_left_mic_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8350_right_mic_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8350_beep_switch_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.88, ptr @.str.89, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.90, ptr @.str.91, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.92, ptr @.str.93, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.94, ptr @.str.95, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 11, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8350_out4_capture_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1616 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8350.c\00", [38 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid shift %d\0A\00", [46 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"L2 Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 99, i32 99, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"L3 Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 99, i32 99, i32 13, i32 13, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGA Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 98, i32 98, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 98, i32 98, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 80, i32 80, i32 14, i32 14, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Playback Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Out3 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Mixer Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Mixer Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Out4 Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Bypass Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Sidetone Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Sidetone Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 11, i32 11, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Bypass Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INN Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INP Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IN2 Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 10, i32 10, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 111, i32 111, i32 15, i32 15, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@wm8350_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.113, i32 1466, ptr @.str.171, ptr @.str.172 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No audio platform data supplied\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm8350_component_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8350_component_probe._entry_ptr = internal global ptr @wm8350_component_probe._entry, section ".printk_index", align 4
@wm8350_component_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.173 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&priv->pga_work)->work)\00", [52 x i8] zeroinitializer }, align 32
@wm8350_component_probe.__key.174 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.175 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&priv->pga_work)->timer\00", [38 x i8] zeroinitializer }, align 32
@wm8350_component_probe.__key.176 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.177 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&priv->hpl.work)->work)\00", [52 x i8] zeroinitializer }, align 32
@wm8350_component_probe.__key.178 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.179 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&priv->hpl.work)->timer\00", [38 x i8] zeroinitializer }, align 32
@wm8350_component_probe.__key.180 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.181 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&priv->hpr.work)->work)\00", [52 x i8] zeroinitializer }, align 32
@wm8350_component_probe.__key.182 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.183 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&priv->hpr.work)->timer\00", [38 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left jack detect\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right jack detect\00", [46 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Microphone short\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Microphone detect\00", [46 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPVDD\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM8350 mic\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8350-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8350_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8350_set_dai_sysclk, ptr @wm8350_set_fll, ptr @wm8350_set_clkdiv, ptr null, ptr @wm8350_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8350_mute, ptr null, ptr null, ptr @wm8350_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@wm8350_set_fll.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.194, ptr @.str.195, ptr @.str.113, ptr @.str.196, i8 1, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.194 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8350\00", [17 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8350_set_fll\00", [17 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"FLL in %u FLL out %u N 0x%x K 0x%x div %d ratio %d\00", [45 x i8] zeroinitializer }, align 32
@fll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.198, ptr @.str.113, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013wm8350: fll freq %d out of range\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fll_factors\00", [20 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr = internal global ptr @fll_factors._entry, section ".printk_index", align 4
@switch.table.wm8350_set_clkdiv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 68, i32 54, i32 40, i32 40, i32 68, i32 40, i32 53, i32 70], [32 x i8] zeroinitializer }, align 32
@switch.table.wm8350_set_clkdiv.199 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 65528, i32 65528, i32 65295, i32 65528, i32 65528, i32 65279, i32 63488, i32 63488], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.201 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 32, i64 104, i64 106]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 32, i64 104, i64 106]
@__sancov_gen_cov_switch_values.204 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.206 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.208 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.210 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.211 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.212 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.213 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 24, i64 32]
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"wm8350_codec_driver\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1606, i32 31 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1278, i32 25 }
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"../include/trace/events/asoc.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 211, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 108, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1296, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1608, i32 14 }
@___asan_gen_.236 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8350\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1582, i32 46 }
@___asan_gen_.239 = private unnamed_addr constant [11 x i8] c"wm8350_dai\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1438, i32 34 }
@___asan_gen_.242 = private unnamed_addr constant [20 x i8] c"wm8350_snd_controls\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 400, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant [19 x i8] c"wm8350_dapm_routes\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 670, i32 40 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 401, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"wm8350_enum\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 378, i32 30 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 402, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 403, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"dac_pcm_tlv\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 391, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 408, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 409, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 410, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 411, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 412, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 413, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [12 x i8] c"adc_pcm_tlv\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 392, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 418, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [15 x i8] c"capture_sd_tlv\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 395, i32 14 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 421, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant [12 x i8] c"pre_amp_tlv\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 389, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 426, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 429, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"out_mix_tlv\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 393, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 431, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 434, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 437, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 440, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 443, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 446, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 448, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 450, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 453, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [12 x i8] c"out_pga_tlv\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 390, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 458, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 461, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 466, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 468, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 469, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 472, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 476, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [13 x i8] c"wm8350_deemp\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 370, i32 20 }
@___asan_gen_.381 = private unnamed_addr constant [11 x i8] c"wm8350_pol\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 371, i32 20 }
@___asan_gen_.384 = private unnamed_addr constant [16 x i8] c"wm8350_dacmutem\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 372, i32 20 }
@___asan_gen_.387 = private unnamed_addr constant [16 x i8] c"wm8350_dacmutes\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 373, i32 20 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"wm8350_adcfilter\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 374, i32 20 }
@___asan_gen_.393 = private unnamed_addr constant [13 x i8] c"wm8350_adchp\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 375, i32 20 }
@___asan_gen_.396 = private unnamed_addr constant [10 x i8] c"wm8350_lr\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 376, i32 20 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 370, i32 39 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 370, i32 47 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 370, i32 56 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 370, i32 67 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 371, i32 37 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 371, i32 47 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 371, i32 56 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 371, i32 65 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 372, i32 52 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 373, i32 42 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 373, i32 50 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 374, i32 51 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 375, i32 50 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 375, i32 58 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 376, i32 36 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 376, i32 44 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 586, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 587, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 588, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 591, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 594, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 597, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 601, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [33 x i8] c"wm8350_right_capt_mixer_controls\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 553, i32 38 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 605, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [32 x i8] c"wm8350_left_capt_mixer_controls\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 543, i32 38 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 609, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [27 x i8] c"wm8350_out4_mixer_controls\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 515, i32 38 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 613, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [27 x i8] c"wm8350_out3_mixer_controls\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 531, i32 38 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 617, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [33 x i8] c"wm8350_right_play_mixer_controls\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 501, i32 38 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 621, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [32 x i8] c"wm8350_left_play_mixer_controls\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 487, i32 38 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 625, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [31 x i8] c"wm8350_left_mic_mixer_controls\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 563, i32 38 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 629, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [32 x i8] c"wm8350_right_mic_mixer_controls\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 570, i32 38 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 634, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 636, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [28 x i8] c"wm8350_beep_switch_controls\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 577, i32 38 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 639, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 641, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 643, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 645, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 648, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 650, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant [29 x i8] c"wm8350_out4_capture_controls\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 581, i32 38 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 653, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 654, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 655, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 656, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 657, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 658, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 660, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 661, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 662, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 663, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 664, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 665, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 666, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 667, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [20 x i8] c"wm8350_dapm_widgets\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 584, i32 41 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 272, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 554, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 556, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 558, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.619 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 516, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 518, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 520, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 522, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 524, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 526, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.645 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 534, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 536, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 502, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 504, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 508, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 510, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 490, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.679 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 564, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 565, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 566, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.694 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 578, i32 1 }
@___asan_gen_.698 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 582, i32 1 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1466, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1491, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1492, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1493, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1541, i32 36 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1544, i32 36 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1547, i32 31 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1549, i32 31 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 40, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 41, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1372, i32 25 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1439, i32 10 }
@___asan_gen_.777 = private unnamed_addr constant [15 x i8] c"wm8350_dai_ops\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1428, i32 37 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1448, i32 19 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1441, i32 18 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 1045, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.802 = private constant [29 x i8] c"../sound/soc/codecs/wm8350.c\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.802, i32 988, i32 3 }
@___asan_gen_.804 = private unnamed_addr constant [31 x i8] c"switch.table.wm8350_set_clkdiv\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [35 x i8] c"switch.table.wm8350_set_clkdiv.199\00", align 1
@llvm.compiler.used = appending global [247 x ptr] [ptr @__UNIQUE_ID_alias327, ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_wm8350_codec_driver_exit, ptr @__initcall__kmod_snd_soc_wm8350__322_1613_wm8350_codec_driver_init6, ptr @__ksymtab_wm8350_hp_jack_detect, ptr @__ksymtab_wm8350_mic_jack_detect, ptr @fll_factors._entry, ptr @fll_factors._entry_ptr, ptr @wm8350_codec_driver_exit, ptr @wm8350_component_probe._entry, ptr @wm8350_component_probe._entry_ptr, ptr @wm8350_codec_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @soc_component_dev_wm8350, ptr @wm8350_dai, ptr @wm8350_snd_controls, ptr @wm8350_dapm_routes, ptr @.str.6, ptr @wm8350_enum, ptr @.str.7, ptr @.str.8, ptr @dac_pcm_tlv, ptr @.compoundliteral, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @adc_pcm_tlv, ptr @.compoundliteral.15, ptr @.str.16, ptr @capture_sd_tlv, ptr @.compoundliteral.17, ptr @.str.18, ptr @pre_amp_tlv, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @out_mix_tlv, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @out_pga_tlv, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @wm8350_deemp, ptr @wm8350_pol, ptr @wm8350_dacmutem, ptr @wm8350_dacmutes, ptr @wm8350_adcfilter, ptr @wm8350_adchp, ptr @wm8350_lr, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @wm8350_right_capt_mixer_controls, ptr @.str.79, ptr @wm8350_left_capt_mixer_controls, ptr @.str.80, ptr @wm8350_out4_mixer_controls, ptr @.str.81, ptr @wm8350_out3_mixer_controls, ptr @.str.82, ptr @wm8350_right_play_mixer_controls, ptr @.str.83, ptr @wm8350_left_play_mixer_controls, ptr @.str.84, ptr @wm8350_left_mic_mixer_controls, ptr @.str.85, ptr @wm8350_right_mic_mixer_controls, ptr @.str.86, ptr @.str.87, ptr @wm8350_beep_switch_controls, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @wm8350_out4_capture_controls, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @wm8350_dapm_widgets, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.compoundliteral.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.str.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @wm8350_component_probe.__key, ptr @.str.173, ptr @wm8350_component_probe.__key.174, ptr @.str.175, ptr @wm8350_component_probe.__key.176, ptr @.str.177, ptr @wm8350_component_probe.__key.178, ptr @.str.179, ptr @wm8350_component_probe.__key.180, ptr @.str.181, ptr @wm8350_component_probe.__key.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @wm8350_dai_ops, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @switch.table.wm8350_set_clkdiv, ptr @switch.table.wm8350_set_clkdiv.199], section "llvm.metadata"
@0 = internal global [235 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8350 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_snd_controls to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dapm_routes to i32), i32 2600, i32 3264, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_enum to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_pcm_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_pcm_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_sd_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_amp_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_mix_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_deemp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_pol to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dacmutem to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dacmutes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_adcfilter to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_adchp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_lr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_right_capt_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_left_capt_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_out4_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_out3_mixer_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_right_play_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_left_play_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_left_mic_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_right_mic_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_beep_switch_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_out4_capture_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dapm_widgets to i32), i32 6480, i32 8096, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_component_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_component_probe.__key.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_component_probe.__key.176 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_component_probe.__key.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_component_probe.__key.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_component_probe.__key.182 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8350_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_set_clkdiv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8350_set_clkdiv.199 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_hp_jack_detect(ptr nocapture noundef readonly %component, i32 noundef %which, ptr noundef %jack, i32 noundef %report) #0 align 64 {
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
  %6 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %which, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hpl = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %hpl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %jack, ptr %hpl, align 4
  %report4 = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 3, i32 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hpr = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %hpr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %jack, ptr %hpr, align 4
  %report8 = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 4, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %report8.sink = phi ptr [ %report8, %sw.bb5 ], [ %report4, %sw.bb ]
  %ena.0 = phi i16 [ 16384, %sw.bb5 ], [ -32768, %sw.bb ]
  %9 = ptrtoint ptr %report8.sink to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %report, ptr %report8.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %report)
  %tobool.not = icmp eq i32 %report, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 11, i16 noundef zeroext 256) #7
  %call10 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 77, i16 noundef zeroext %ena.0) #7
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 77, i16 noundef zeroext %ena.0) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %which, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb13
    i32 2, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call fastcc void @trace_snd_soc_jack_irq(ptr noundef nonnull @.str) #7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %can_wakeup.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %can_wakeup.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %can_wakeup.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i16 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %sw.bb13.wm8350_hpl_jack_handler.exit_crit_edge, label %device_may_wakeup.exit.i

sw.bb13.wm8350_hpl_jack_handler.exit_crit_edge:   ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8350_hpl_jack_handler.exit

device_may_wakeup.exit.i:                         ; preds = %sw.bb13
  %wakeup.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 6
  %16 = ptrtoint ptr %wakeup.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wakeup.i.i, align 8
  %tobool2.i.not.i = icmp eq ptr %17, null
  br i1 %tobool2.i.not.i, label %device_may_wakeup.exit.i.wm8350_hpl_jack_handler.exit_crit_edge, label %if.then.i

device_may_wakeup.exit.i.wm8350_hpl_jack_handler.exit_crit_edge: ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8350_hpl_jack_handler.exit

if.then.i:                                        ; preds = %device_may_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_wakeup_dev_event(ptr noundef %14, i32 noundef 250, i1 noundef zeroext false) #7
  br label %wm8350_hpl_jack_handler.exit

wm8350_hpl_jack_handler.exit:                     ; preds = %if.then.i, %device_may_wakeup.exit.i.wm8350_hpl_jack_handler.exit_crit_edge, %sw.bb13.wm8350_hpl_jack_handler.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %18 = load ptr, ptr @system_power_efficient_wq, align 4
  %work.i = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 3, i32 1
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work.i, i32 noundef 20) #7
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  tail call fastcc void @trace_snd_soc_jack_irq(ptr noundef nonnull @.str.4) #7
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %can_wakeup.i.i33 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 1
  %23 = ptrtoint ptr %can_wakeup.i.i33 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i.i34 = load i16, ptr %can_wakeup.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i.i34)
  %tobool.not.i.i35 = icmp sgt i16 %bf.load.i.i34, -1
  br i1 %tobool.not.i.i35, label %sw.bb15.wm8350_hpr_jack_handler.exit_crit_edge, label %device_may_wakeup.exit.i38

sw.bb15.wm8350_hpr_jack_handler.exit_crit_edge:   ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8350_hpr_jack_handler.exit

device_may_wakeup.exit.i38:                       ; preds = %sw.bb15
  %wakeup.i.i36 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 6
  %24 = ptrtoint ptr %wakeup.i.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wakeup.i.i36, align 8
  %tobool2.i.not.i37 = icmp eq ptr %25, null
  br i1 %tobool2.i.not.i37, label %device_may_wakeup.exit.i38.wm8350_hpr_jack_handler.exit_crit_edge, label %if.then.i39

device_may_wakeup.exit.i38.wm8350_hpr_jack_handler.exit_crit_edge: ; preds = %device_may_wakeup.exit.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8350_hpr_jack_handler.exit

if.then.i39:                                      ; preds = %device_may_wakeup.exit.i38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_wakeup_dev_event(ptr noundef %22, i32 noundef 250, i1 noundef zeroext false) #7
  br label %wm8350_hpr_jack_handler.exit

wm8350_hpr_jack_handler.exit:                     ; preds = %if.then.i39, %device_may_wakeup.exit.i38.wm8350_hpr_jack_handler.exit_crit_edge, %sw.bb15.wm8350_hpr_jack_handler.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %26 = load ptr, ptr @system_power_efficient_wq, align 4
  %work.i40 = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 4, i32 1
  %call.i.i41 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work.i40, i32 noundef 20) #7
  br label %cleanup

cleanup:                                          ; preds = %wm8350_hpr_jack_handler.exit, %wm8350_hpl_jack_handler.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %wm8350_hpr_jack_handler.exit ], [ 0, %wm8350_hpl_jack_handler.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_clear_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_hpl_jack_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @trace_snd_soc_jack_irq(ptr noundef nonnull @.str)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_wakeup_dev_event(ptr noundef %3, i32 noundef 250, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %7 = load ptr, ptr @system_power_efficient_wq, align 4
  %work = getelementptr inbounds %struct.wm8350_data, ptr %data, i32 0, i32 3, i32 1
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work, i32 noundef 20) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_hpr_jack_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @trace_snd_soc_jack_irq(ptr noundef nonnull @.str.4)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_wakeup_dev_event(ptr noundef %3, i32 noundef 250, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %7 = load ptr, ptr @system_power_efficient_wq, align 4
  %work = getelementptr inbounds %struct.wm8350_data, ptr %data, i32 0, i32 4, i32 1
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work, i32 noundef 20) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8350_mic_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack, i32 noundef %detect_report, i32 noundef %short_report) #0 align 64 {
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
  %mic = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jack, ptr %mic, align 4
  %report = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %report to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %detect_report, ptr %report, align 4
  %short_report5 = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %short_report5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %short_report, ptr %short_report5, align 4
  %9 = or i32 %short_report, %detect_report
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 11, i16 noundef zeroext 256) #7
  %call8 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 8, i16 noundef zeroext 256) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 8, i16 noundef zeroext 256) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_codec_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8350_codec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_codec_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8350_codec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_snd_soc_jack_irq(ptr noundef %name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 1), ptr blockaddress(@trace_snd_soc_jack_irq, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !367

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !357) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !368

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !357) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !369
  %call42 = tail call i32 @__traceiter_snd_soc_jack_irq(ptr noundef null, ptr noundef %name) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !370
  %13 = tail call i32 @llvm.read_register.i32(metadata !357) #7
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !357) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !368

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !357) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !371
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_snd_soc_jack_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_snd_soc_jack_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_snd_soc_jack_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 226, ptr noundef nonnull @.str.2) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !372
  %31 = tail call i32 @llvm.read_register.i32(metadata !357) #7
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
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8350, ptr noundef nonnull @wm8350_dai, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_component_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %platform_data = getelementptr inbounds %struct.wm8350, ptr %3, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.169) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 492, i32 noundef 3520) #7
  %cmp4 = icmp eq ptr %call.i, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.wm8350, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %7) #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %call.i, align 4
  %arrayidx9 = getelementptr %struct.wm8350_data, ptr %call.i, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.188, ptr %arrayidx9, align 4
  %arrayidx9.1 = getelementptr %struct.wm8350_data, ptr %call.i, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.189, ptr %arrayidx9.1, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call12 = tail call i32 @devm_regulator_bulk_get(ptr noundef %15, i32 noundef 2, ptr noundef %arrayidx9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %call16 = tail call i32 @wm8350_clear_bits(ptr noundef %3, i16 noundef zeroext 12, i16 noundef zeroext 4096) #7
  %pga_work = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %pga_work, i32 noundef 0) #7
  %16 = ptrtoint ptr %pga_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %pga_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.173, ptr noundef nonnull @wm8350_component_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry25 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %17 = ptrtoint ptr %entry25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry25, ptr %entry25, align 4
  %prev.i = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry25, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wm8350_pga_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.175, ptr noundef nonnull @wm8350_component_probe.__key.174) #7
  %work38 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_work(ptr noundef %work38, i32 noundef 0) #7
  %20 = ptrtoint ptr %work38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work38, align 4
  %lockdep_map49 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map49, ptr noundef nonnull @.str.177, ptr noundef nonnull @wm8350_component_probe.__key.176, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry53 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %entry53 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry53, ptr %entry53, align 4
  %prev.i210 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i210 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry53, ptr %prev.i210, align 4
  %func57 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 3, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %func57 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm8350_hpl_work, ptr %func57, align 4
  %timer63 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer63, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.179, ptr noundef nonnull @wm8350_component_probe.__key.178) #7
  %work70 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_work(ptr noundef %work70, i32 noundef 0) #7
  %24 = ptrtoint ptr %work70 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %work70, align 4
  %lockdep_map81 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map81, ptr noundef nonnull @.str.181, ptr noundef nonnull @wm8350_component_probe.__key.180, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry85 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %entry85 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry85, ptr %entry85, align 4
  %prev.i211 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i211 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry85, ptr %prev.i211, align 4
  %func89 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %func89 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @wm8350_hpr_work, ptr %func89, align 4
  %timer95 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer95, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.183, ptr noundef nonnull @wm8350_component_probe.__key.182) #7
  %call100 = tail call i32 @wm8350_set_bits(ptr noundef %3, i16 noundef zeroext 12, i16 noundef zeroext 4096) #7
  %call101 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 219, i32 noundef 167) #7
  %call102 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 222, i32 noundef 19) #7
  %call103 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 219, i32 noundef 0) #7
  %call106 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 104) #7
  %28 = lshr i16 %call106, 2
  %29 = and i16 %28, 63
  %left_vol = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %left_vol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %left_vol, align 2
  %call108 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 105) #7
  %31 = lshr i16 %call108, 2
  %32 = and i16 %31, 63
  %right_vol = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %right_vol to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %right_vol, align 2
  %call113 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 106) #7
  %34 = lshr i16 %call113, 2
  %35 = and i16 %34, 63
  %left_vol118 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %left_vol118 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %left_vol118, align 2
  %call119 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %3, i32 noundef 107) #7
  %37 = lshr i16 %call119, 2
  %38 = and i16 %37, 63
  %right_vol124 = getelementptr inbounds %struct.wm8350_data, ptr %call.i, i32 0, i32 2, i32 2
  %39 = ptrtoint ptr %right_vol124 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %right_vol124, align 2
  %call125 = tail call i32 @wm8350_reg_write(ptr noundef %3, i32 noundef 104, i16 noundef zeroext 0) #7
  %call126 = tail call i32 @wm8350_reg_write(ptr noundef %3, i32 noundef 105, i16 noundef zeroext 0) #7
  %call127 = tail call i32 @wm8350_reg_write(ptr noundef %3, i32 noundef 106, i16 noundef zeroext 0) #7
  %call128 = tail call i32 @wm8350_reg_write(ptr noundef %3, i32 noundef 107, i16 noundef zeroext 0) #7
  %call129 = tail call i32 @wm8350_set_bits(ptr noundef %3, i16 noundef zeroext 104, i16 noundef zeroext 16640) #7
  %call130 = tail call i32 @wm8350_set_bits(ptr noundef %3, i16 noundef zeroext 106, i16 noundef zeroext 16640) #7
  %call131 = tail call i32 @wm8350_set_bits(ptr noundef %3, i16 noundef zeroext 105, i16 noundef zeroext 16640) #7
  %call132 = tail call i32 @wm8350_set_bits(ptr noundef %3, i16 noundef zeroext 107, i16 noundef zeroext 16640) #7
  %call133 = tail call i32 @wm8350_clear_bits(ptr noundef %3, i16 noundef zeroext 112, i16 noundef zeroext 8192) #7
  %call134 = tail call i32 @wm8350_clear_bits(ptr noundef %3, i16 noundef zeroext 113, i16 noundef zeroext 129) #7
  %call135 = tail call i32 @wm8350_clear_bits(ptr noundef %3, i16 noundef zeroext 77, i16 noundef zeroext -16384) #7
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %3, i32 0, i32 7
  %40 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.end15.cleanup_crit_edge, label %wm8350_register_irq.exit

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

wm8350_register_irq.exit:                         ; preds = %if.end15
  %add.i = add i32 %41, 39
  %call.i212 = tail call i32 @request_threaded_irq(i32 noundef %add.i, ptr noundef null, ptr noundef nonnull @wm8350_hpl_jack_handler, i32 noundef 0, ptr noundef nonnull @.str.184, ptr noundef nonnull %call.i) #7
  %42 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pr = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i214 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i214, label %wm8350_register_irq.exit.cleanup_crit_edge, label %wm8350_register_irq.exit218

wm8350_register_irq.exit.cleanup_crit_edge:       ; preds = %wm8350_register_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

wm8350_register_irq.exit218:                      ; preds = %wm8350_register_irq.exit
  %add.i215 = add i32 %.pr, 40
  %call.i216 = tail call i32 @request_threaded_irq(i32 noundef %add.i215, ptr noundef null, ptr noundef nonnull @wm8350_hpr_jack_handler, i32 noundef 0, ptr noundef nonnull @.str.185, ptr noundef nonnull %call.i) #7
  %43 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr232 = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr232)
  %tobool.not.i220 = icmp eq i32 %.pr232, 0
  br i1 %tobool.not.i220, label %wm8350_register_irq.exit218.cleanup_crit_edge, label %wm8350_register_irq.exit224

wm8350_register_irq.exit218.cleanup_crit_edge:    ; preds = %wm8350_register_irq.exit218
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

wm8350_register_irq.exit224:                      ; preds = %wm8350_register_irq.exit218
  %add.i221 = add i32 %.pr232, 41
  %call.i222 = tail call i32 @request_threaded_irq(i32 noundef %add.i221, ptr noundef null, ptr noundef nonnull @wm8350_mic_handler, i32 noundef 0, ptr noundef nonnull @.str.186, ptr noundef nonnull %call.i) #7
  %44 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr234.pr = load i32, ptr %irq_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr234.pr)
  %tobool.not.i226 = icmp eq i32 %.pr234.pr, 0
  br i1 %tobool.not.i226, label %wm8350_register_irq.exit224.cleanup_crit_edge, label %if.end.i229

wm8350_register_irq.exit224.cleanup_crit_edge:    ; preds = %wm8350_register_irq.exit224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i229:                                      ; preds = %wm8350_register_irq.exit224
  call void @__sanitizer_cov_trace_pc() #9
  %add.i227 = add i32 %.pr234.pr, 42
  %call.i228 = tail call i32 @request_threaded_irq(i32 noundef %add.i227, ptr noundef null, ptr noundef nonnull @wm8350_mic_handler, i32 noundef 0, ptr noundef nonnull @.str.187, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i229, %wm8350_register_irq.exit224.cleanup_crit_edge, %wm8350_register_irq.exit218.cleanup_crit_edge, %wm8350_register_irq.exit.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call12, %if.end6.cleanup_crit_edge ], [ 0, %wm8350_register_irq.exit224.cleanup_crit_edge ], [ 0, %if.end.i229 ], [ 0, %wm8350_register_irq.exit218.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %wm8350_register_irq.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_component_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 77, i16 noundef zeroext -16384) #7
  %call3 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 11, i16 noundef zeroext 256) #7
  %irq_base.i = getelementptr inbounds %struct.wm8350, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base.i, align 4
  %add.i = add i32 %7, 42
  %call.i = tail call ptr @free_irq(i32 noundef %add.i, ptr noundef %3) #7
  %8 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_base.i, align 4
  %add.i30 = add i32 %9, 41
  %call.i31 = tail call ptr @free_irq(i32 noundef %add.i30, ptr noundef %3) #7
  %10 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base.i, align 4
  %add.i33 = add i32 %11, 39
  %call.i34 = tail call ptr @free_irq(i32 noundef %add.i33, ptr noundef %3) #7
  %12 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_base.i, align 4
  %add.i36 = add i32 %13, 40
  %call.i37 = tail call ptr @free_irq(i32 noundef %add.i36, ptr noundef %3) #7
  %hpl = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %hpl to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %hpl, align 4
  %hpr = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %hpr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %hpr, align 4
  %mic = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %mic to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %mic, align 4
  %work = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 3, i32 1
  %call7 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #7
  %work9 = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 4, i32 1
  %call10 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work9) #7
  %pga_work = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 9
  %call11 = tail call zeroext i1 @flush_delayed_work(ptr noundef %pga_work) #7
  %call12 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 12, i16 noundef zeroext 4096) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
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
  %platform_data = getelementptr inbounds %struct.wm8350, ptr %5, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data, align 4
  %8 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb8
    i32 1, label %sw.bb17
    i32 0, label %sw.bb97
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %5, i32 noundef 8) #7
  %9 = and i16 %call2, 16380
  %codec_current_on = getelementptr inbounds %struct.wm8350_audio_platform_data, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %codec_current_on to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %codec_current_on, align 4
  %11 = lshr i32 %bf.load, 1
  %12 = trunc i32 %11 to i16
  %13 = and i16 %12, -16384
  %14 = or i16 %9, %13
  %conv6 = or i16 %14, 2
  %call7 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %conv6) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %5, i32 noundef 8) #7
  %15 = and i16 %call9, -4
  %16 = or i16 %15, 2
  %call16 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %16) #7
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %17 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb17
  %supplies = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 6
  %call20 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 11, i16 noundef zeroext 16384) #7
  %call25 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 58, i16 noundef zeroext 16384) #7
  %dis_out1 = getelementptr inbounds %struct.wm8350_audio_platform_data, ptr %7, i32 0, i32 4
  %19 = ptrtoint ptr %dis_out1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load26 = load i32, ptr %dis_out1, align 4
  %bf.lshr27 = lshr i32 %bf.load26, 22
  %20 = trunc i32 %bf.lshr27 to i16
  %conv44 = and i16 %20, 255
  %call45 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 78, i16 noundef zeroext %conv44) #7
  %cap_discharge_msecs = getelementptr inbounds %struct.wm8350_audio_platform_data, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %cap_discharge_msecs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap_discharge_msecs, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %22) #7
  %call47 = tail call i32 @schedule_timeout_interruptible(i32 noundef %call2.i) #7
  %23 = ptrtoint ptr %dis_out1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load48 = load i32, ptr %dis_out1, align 4
  %24 = lshr i32 %bf.load48, 22
  %25 = trunc i32 %24 to i16
  %conv51 = and i16 %25, 768
  %call52 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 78, i16 noundef zeroext %conv51) #7
  %26 = ptrtoint ptr %dis_out1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load53 = load i32, ptr %dis_out1, align 4
  %bf.load53.tr = trunc i32 %bf.load53 to i16
  %27 = shl i16 %bf.load53.tr, 3
  %28 = and i16 %27, -16384
  %conv60 = or i16 %28, 8199
  %call61 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %conv60) #7
  %vmid_charge_msecs = getelementptr inbounds %struct.wm8350_audio_platform_data, ptr %7, i32 0, i32 3
  %29 = ptrtoint ptr %vmid_charge_msecs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vmid_charge_msecs, align 4
  %call2.i237 = tail call i32 @__msecs_to_jiffies(i32 noundef %30) #7
  %call63 = tail call i32 @schedule_timeout_interruptible(i32 noundef %call2.i237) #7
  %call64 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %5, i32 noundef 8) #7
  %31 = and i16 %call64, 16380
  %32 = ptrtoint ptr %dis_out1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load68 = load i32, ptr %dis_out1, align 4
  %bf.load68.tr = trunc i32 %bf.load68 to i16
  %33 = shl i16 %bf.load68.tr, 1
  %34 = and i16 %33, -16384
  %35 = or i16 %34, %31
  %conv75 = or i16 %35, 1
  %call76 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %conv75) #7
  %36 = or i16 %35, 33
  %call80 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %36) #7
  %call81 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 78, i16 noundef zeroext 0) #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %call82 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %5, i32 noundef 8) #7
  %37 = and i16 %call82, 16380
  %codec_current_standby88 = getelementptr inbounds %struct.wm8350_audio_platform_data, ptr %7, i32 0, i32 4
  %38 = ptrtoint ptr %codec_current_standby88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load89 = load i32, ptr %codec_current_standby88, align 4
  %bf.load89.tr = trunc i32 %bf.load89 to i16
  %39 = shl i16 %bf.load89.tr, 1
  %40 = and i16 %39, -16384
  %41 = or i16 %37, %40
  %conv94 = or i16 %41, 1
  %call95 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %conv94) #7
  br label %cleanup

sw.bb97:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call98 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 58, i16 noundef zeroext 16384) #7
  %call99 = tail call i32 @wm8350_set_bits(ptr noundef %5, i16 noundef zeroext 10, i16 noundef zeroext 15) #7
  %vmid_s_curve100 = getelementptr inbounds %struct.wm8350_audio_platform_data, ptr %7, i32 0, i32 4
  %42 = ptrtoint ptr %vmid_s_curve100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %bf.load101 = load i32, ptr %vmid_s_curve100, align 4
  %43 = lshr i32 %bf.load101, 22
  %44 = trunc i32 %43 to i16
  %conv104 = and i16 %44, 768
  %call105 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 78, i16 noundef zeroext %conv104) #7
  %call106 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %5, i32 noundef 8) #7
  %45 = and i16 %call106, -5
  %call110 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %45) #7
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %7, align 4
  %call2.i246 = tail call i32 @__msecs_to_jiffies(i32 noundef %47) #7
  %call112 = tail call i32 @schedule_timeout_interruptible(i32 noundef %call2.i246) #7
  %48 = ptrtoint ptr %vmid_s_curve100 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load114 = load i32, ptr %vmid_s_curve100, align 4
  %49 = lshr i32 %bf.load114, 22
  %conv140 = trunc i32 %49 to i16
  %call141 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 78, i16 noundef zeroext %conv140) #7
  %call142 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %5, i32 noundef 8) #7
  %50 = and i16 %call142, -9220
  %or147 = or i16 %50, 1024
  %call149 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %or147) #7
  %drain_msecs = getelementptr inbounds %struct.wm8350_audio_platform_data, ptr %7, i32 0, i32 1
  %51 = ptrtoint ptr %drain_msecs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %drain_msecs, align 4
  %call2.i255 = tail call i32 @__msecs_to_jiffies(i32 noundef %52) #7
  %call151 = tail call i32 @schedule_timeout_interruptible(i32 noundef %call2.i255) #7
  %53 = and i16 %call142, -8228
  %call155 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 8, i16 noundef zeroext %53) #7
  %call156 = tail call i32 @wm8350_reg_write(ptr noundef %5, i32 noundef 78, i16 noundef zeroext 0) #7
  %call157 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 104, i16 noundef zeroext 1) #7
  %call158 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 105, i16 noundef zeroext 2) #7
  %call159 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 106, i16 noundef zeroext 4) #7
  %call160 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 107, i16 noundef zeroext 8) #7
  %call161 = tail call i32 @wm8350_clear_bits(ptr noundef %5, i16 noundef zeroext 11, i16 noundef zeroext 16384) #7
  %supplies162 = getelementptr inbounds %struct.wm8350_data, ptr %3, i32 0, i32 6
  %call164 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies162) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb97, %if.else, %if.end, %if.then.cleanup_crit_edge, %sw.bb8, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %if.else ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb97 ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_get_volsw_2r(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %reg4 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg4, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %10, label %sw.epilog [
    i32 104, label %sw.bb
    i32 106, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %left_vol = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %left_vol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %left_vol, align 2
  %conv = zext i16 %13 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %value, align 8
  %right_vol = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %right_vol to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %right_vol, align 2
  %conv5 = zext i16 %16 to i32
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv5, ptr %arrayidx7, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %left_vol9 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %left_vol9 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %left_vol9, align 2
  %conv10 = zext i16 %19 to i32
  %value11 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %20 = ptrtoint ptr %value11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv10, ptr %value11, align 8
  %right_vol13 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %right_vol13 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %right_vol13, align 2
  %conv14 = zext i16 %22 to i32
  %arrayidx16 = getelementptr [128 x i32], ptr %value11, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv14, ptr %arrayidx16, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @snd_soc_get_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8, %sw.bb
  %retval.0 = phi i32 [ %call17, %sw.epilog ], [ 0, %sw.bb8 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_put_volsw_2r_vu(ptr noundef %kcontrol, ptr noundef %ucontrol) #0 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %reg2 = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg2, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %10, label %entry.if.end9_crit_edge [
    i32 104, label %sw.bb
    i32 106, label %sw.bb3
  ]

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %out1 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %out2 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %out.0 = phi ptr [ %out2, %sw.bb3 ], [ %out1, %sw.bb ]
  %tobool.not = icmp eq ptr %out.0, null
  br i1 %tobool.not, label %sw.epilog.if.end9_crit_edge, label %if.then

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %sw.epilog
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  %conv = trunc i32 %13 to i16
  %left_vol = getelementptr inbounds %struct.wm8350_output, ptr %out.0, i32 0, i32 1
  %14 = ptrtoint ptr %left_vol to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %left_vol, align 2
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx5, align 4
  %conv6 = trunc i32 %16 to i16
  %right_vol = getelementptr inbounds %struct.wm8350_output, ptr %out.0, i32 0, i32 2
  %17 = ptrtoint ptr %right_vol to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv6, ptr %right_vol, align 2
  %18 = ptrtoint ptr %out.0 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %out.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool7.not = icmp eq i16 %19, 0
  br i1 %tobool7.not, label %if.then.cleanup_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.then.if.end9_crit_edge, %sw.epilog.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %10) #7
  %conv16 = and i32 %call14, 65279
  %or = or i32 %conv16, 256
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %10, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 1, %if.then.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.204)
  switch i8 %7, label %do.end [
    i8 0, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge41
    i8 2, label %entry.sw.bb2_crit_edge
    i8 3, label %entry.sw.bb2_crit_edge42
  ]

entry.sw.bb2_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

entry.sw.bb_crit_edge41:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge41
  %out1 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge42
  %out2 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 2
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %7 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 272, i32 noundef 9, ptr noundef nonnull @.str.114, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %out.0 = phi ptr [ %out2, %sw.bb2 ], [ %out1, %sw.bb ]
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %event, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.bb19
    i32 4, label %sw.bb22
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %ramp = getelementptr inbounds %struct.wm8350_output, ptr %out.0, i32 0, i32 3
  %10 = ptrtoint ptr %ramp to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %ramp, align 2
  %11 = ptrtoint ptr %out.0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %out.0, align 2
  %pga_work = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %pga_work, i32 noundef 1) #7
  br label %cleanup

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %ramp23 = getelementptr inbounds %struct.wm8350_output, ptr %out.0, i32 0, i32 3
  %13 = ptrtoint ptr %ramp23 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %ramp23, align 2
  %14 = ptrtoint ptr %out.0 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %out.0, align 2
  %pga_work25 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %15 = load ptr, ptr @system_wq, align 4
  %call.i.i40 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %pga_work25, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %sw.bb19, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %sw.bb22 ], [ 0, %sw.bb19 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_pga_work(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -392
  %ramp = getelementptr i8, ptr %work, i32 -382
  %0 = ptrtoint ptr %ramp to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ramp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ramp4 = getelementptr i8, ptr %work, i32 -372
  %2 = ptrtoint ptr %ramp4 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ramp4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp6 = icmp eq i16 %3, 0
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %left_vol.i = getelementptr i8, ptr %work, i32 -386
  %right_vol.i = getelementptr i8, ptr %work, i32 -384
  %ramp16 = getelementptr i8, ptr %work, i32 -372
  %left_vol.i67 = getelementptr i8, ptr %work, i32 -376
  %right_vol.i84 = getelementptr i8, ptr %work, i32 -374
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0102 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %ramp to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ramp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12.not = icmp eq i16 %5, 0
  br i1 %cmp12.not, label %for.body.if.end15_crit_edge, label %if.then14

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %for.body
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %7, i32 noundef 104) #7
  %and.i = lshr i16 %call.i, 2
  %8 = and i16 %and.i, 63
  %9 = ptrtoint ptr %ramp to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ramp, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.206)
  switch i16 %10, label %if.then14.if.end15_crit_edge [
    i16 1, label %if.then.i
    i16 2, label %if.then23.i
  ]

if.then14.if.end15_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then.i:                                        ; preds = %if.then14
  %12 = ptrtoint ptr %left_vol.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %left_vol.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %13)
  %cmp8.i = icmp ult i16 %8, %13
  br i1 %cmp8.i, label %if.then.i.if.end41.sink.split.i_crit_edge, label %if.then.i.if.end41.i_crit_edge

if.then.i.if.end41.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.then.i.if.end41.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split.i

if.then23.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp25.not.i = icmp eq i16 %8, 0
  br i1 %cmp25.not.i, label %if.then23.i.if.end41.i_crit_edge, label %if.then23.i.if.end41.sink.split.i_crit_edge

if.then23.i.if.end41.sink.split.i_crit_edge:      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split.i

if.then23.i.if.end41.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

if.end41.sink.split.i:                            ; preds = %if.then23.i.if.end41.sink.split.i_crit_edge, %if.then.i.if.end41.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 4, %if.then.i.if.end41.sink.split.i_crit_edge ], [ -4, %if.then23.i.if.end41.sink.split.i_crit_edge ]
  %and29.i = and i16 %call.i, -253
  %dec.i = shl nuw nsw i16 %8, 2
  %shl33.i = add nsw i16 %.sink.i, %dec.i
  %or34.i = or i16 %shl33.i, %and29.i
  %call36.i = tail call i32 @wm8350_reg_write(ptr noundef %7, i32 noundef 104, i16 noundef zeroext %or34.i) #7
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.sink.split.i, %if.then23.i.if.end41.i_crit_edge, %if.then.i.if.end41.i_crit_edge
  %tobool.not.i = phi i1 [ false, %if.then.i.if.end41.i_crit_edge ], [ false, %if.then23.i.if.end41.i_crit_edge ], [ true, %if.end41.sink.split.i ]
  %left_complete.0.i = phi i32 [ 1, %if.then.i.if.end41.i_crit_edge ], [ 1, %if.then23.i.if.end41.i_crit_edge ], [ 0, %if.end41.sink.split.i ]
  %call42.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %7, i32 noundef 105) #7
  %and44.i = lshr i16 %call42.i, 2
  %14 = and i16 %and44.i, 63
  %15 = ptrtoint ptr %ramp to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ramp, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.207)
  switch i16 %16, label %if.end41.i.if.then94.i_crit_edge [
    i16 1, label %if.then51.i
    i16 2, label %if.then74.i
  ]

if.end41.i.if.then94.i_crit_edge:                 ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.i

if.then51.i:                                      ; preds = %if.end41.i
  %18 = ptrtoint ptr %right_vol.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %right_vol.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %19)
  %cmp54.i = icmp ult i16 %14, %19
  br i1 %cmp54.i, label %if.then51.i.if.then94.sink.split.i_crit_edge, label %if.then51.i.if.end92.i_crit_edge

if.then51.i.if.end92.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i

if.then51.i.if.then94.sink.split.i_crit_edge:     ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.sink.split.i

if.then74.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp76.not.i = icmp eq i16 %14, 0
  br i1 %cmp76.not.i, label %if.then74.i.if.end92.i_crit_edge, label %if.then74.i.if.then94.sink.split.i_crit_edge

if.then74.i.if.then94.sink.split.i_crit_edge:     ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.sink.split.i

if.then74.i.if.end92.i_crit_edge:                 ; preds = %if.then74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then74.i.if.end92.i_crit_edge, %if.then51.i.if.end92.i_crit_edge
  br i1 %tobool.not.i, label %if.end92.i.if.then94.i_crit_edge, label %if.end92.i.if.end96.i_crit_edge

if.end92.i.if.end96.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i

if.end92.i.if.then94.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.i

if.then94.sink.split.i:                           ; preds = %if.then74.i.if.then94.sink.split.i_crit_edge, %if.then51.i.if.then94.sink.split.i_crit_edge
  %.sink146.i = phi i16 [ 4, %if.then51.i.if.then94.sink.split.i_crit_edge ], [ -4, %if.then74.i.if.then94.sink.split.i_crit_edge ]
  %20 = and i16 %call42.i, -253
  %inc57.i = shl nuw nsw i16 %14, 2
  %21 = add nsw i16 %.sink146.i, %inc57.i
  %or64137.i = or i16 %21, %20
  %call66.i = tail call i32 @wm8350_reg_write(ptr noundef %7, i32 noundef 105, i16 noundef zeroext %or64137.i) #7
  br label %if.then94.i

if.then94.i:                                      ; preds = %if.then94.sink.split.i, %if.end92.i.if.then94.i_crit_edge, %if.end41.i.if.then94.i_crit_edge
  %right_complete.0143.i = phi i32 [ 1, %if.end92.i.if.then94.i_crit_edge ], [ 0, %if.end41.i.if.then94.i_crit_edge ], [ 0, %if.then94.sink.split.i ]
  %call95.i = tail call i32 @wm8350_set_bits(ptr noundef %7, i16 noundef zeroext 104, i16 noundef zeroext 256) #7
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then94.i, %if.end92.i.if.end96.i_crit_edge
  %right_complete.0142.i = phi i32 [ 1, %if.end92.i.if.end96.i_crit_edge ], [ %right_complete.0143.i, %if.then94.i ]
  %and97.i = and i32 %right_complete.0142.i, %left_complete.0.i
  br label %if.end15

if.end15:                                         ; preds = %if.end96.i, %if.then14.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %out1_complete.0 = phi i32 [ 1, %for.body.if.end15_crit_edge ], [ %and97.i, %if.end96.i ], [ 1, %if.then14.if.end15_crit_edge ]
  %22 = ptrtoint ptr %ramp16 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ramp16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp18.not = icmp eq i16 %23, 0
  br i1 %cmp18.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %call.i64 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %25, i32 noundef 106) #7
  %and.i65 = lshr i16 %call.i64, 2
  %26 = and i16 %and.i65, 63
  %27 = ptrtoint ptr %ramp16 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ramp16, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.208)
  switch i16 %28, label %if.then20.if.end22_crit_edge [
    i16 1, label %if.then.i69
    i16 2, label %if.then23.i71
  ]

if.then20.if.end22_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then.i69:                                      ; preds = %if.then20
  %30 = ptrtoint ptr %left_vol.i67 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %left_vol.i67, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %31)
  %cmp8.i68 = icmp ult i16 %26, %31
  br i1 %cmp8.i68, label %if.then.i69.if.end41.sink.split.i78_crit_edge, label %if.then.i69.if.end41.i83_crit_edge

if.then.i69.if.end41.i83_crit_edge:               ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i83

if.then.i69.if.end41.sink.split.i78_crit_edge:    ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split.i78

if.then23.i71:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp25.not.i70 = icmp eq i16 %26, 0
  br i1 %cmp25.not.i70, label %if.then23.i71.if.end41.i83_crit_edge, label %if.then23.i71.if.end41.sink.split.i78_crit_edge

if.then23.i71.if.end41.sink.split.i78_crit_edge:  ; preds = %if.then23.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.sink.split.i78

if.then23.i71.if.end41.i83_crit_edge:             ; preds = %if.then23.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i83

if.end41.sink.split.i78:                          ; preds = %if.then23.i71.if.end41.sink.split.i78_crit_edge, %if.then.i69.if.end41.sink.split.i78_crit_edge
  %.sink.i72 = phi i16 [ 4, %if.then.i69.if.end41.sink.split.i78_crit_edge ], [ -4, %if.then23.i71.if.end41.sink.split.i78_crit_edge ]
  %and29.i73 = and i16 %call.i64, -253
  %dec.i74 = shl nuw nsw i16 %26, 2
  %shl33.i75 = add nsw i16 %.sink.i72, %dec.i74
  %or34.i76 = or i16 %shl33.i75, %and29.i73
  %call36.i77 = tail call i32 @wm8350_reg_write(ptr noundef %25, i32 noundef 106, i16 noundef zeroext %or34.i76) #7
  br label %if.end41.i83

if.end41.i83:                                     ; preds = %if.end41.sink.split.i78, %if.then23.i71.if.end41.i83_crit_edge, %if.then.i69.if.end41.i83_crit_edge
  %tobool.not.i79 = phi i1 [ false, %if.then.i69.if.end41.i83_crit_edge ], [ false, %if.then23.i71.if.end41.i83_crit_edge ], [ true, %if.end41.sink.split.i78 ]
  %left_complete.0.i80 = phi i32 [ 1, %if.then.i69.if.end41.i83_crit_edge ], [ 1, %if.then23.i71.if.end41.i83_crit_edge ], [ 0, %if.end41.sink.split.i78 ]
  %call42.i81 = tail call zeroext i16 @wm8350_reg_read(ptr noundef %25, i32 noundef 107) #7
  %and44.i82 = lshr i16 %call42.i81, 2
  %32 = and i16 %and44.i82, 63
  %33 = ptrtoint ptr %ramp16 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ramp16, align 2
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.209)
  switch i16 %34, label %if.end41.i83.if.then94.i97_crit_edge [
    i16 1, label %if.then51.i86
    i16 2, label %if.then74.i88
  ]

if.end41.i83.if.then94.i97_crit_edge:             ; preds = %if.end41.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.i97

if.then51.i86:                                    ; preds = %if.end41.i83
  %36 = ptrtoint ptr %right_vol.i84 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %right_vol.i84, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %37)
  %cmp54.i85 = icmp ult i16 %32, %37
  br i1 %cmp54.i85, label %if.then51.i86.if.then94.sink.split.i94_crit_edge, label %if.then51.i86.if.end92.i89_crit_edge

if.then51.i86.if.end92.i89_crit_edge:             ; preds = %if.then51.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i89

if.then51.i86.if.then94.sink.split.i94_crit_edge: ; preds = %if.then51.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.sink.split.i94

if.then74.i88:                                    ; preds = %if.end41.i83
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cmp76.not.i87 = icmp eq i16 %32, 0
  br i1 %cmp76.not.i87, label %if.then74.i88.if.end92.i89_crit_edge, label %if.then74.i88.if.then94.sink.split.i94_crit_edge

if.then74.i88.if.then94.sink.split.i94_crit_edge: ; preds = %if.then74.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.sink.split.i94

if.then74.i88.if.end92.i89_crit_edge:             ; preds = %if.then74.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.i89

if.end92.i89:                                     ; preds = %if.then74.i88.if.end92.i89_crit_edge, %if.then51.i86.if.end92.i89_crit_edge
  br i1 %tobool.not.i79, label %if.end92.i89.if.then94.i97_crit_edge, label %if.end92.i89.if.end96.i100_crit_edge

if.end92.i89.if.end96.i100_crit_edge:             ; preds = %if.end92.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i100

if.end92.i89.if.then94.i97_crit_edge:             ; preds = %if.end92.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then94.i97

if.then94.sink.split.i94:                         ; preds = %if.then74.i88.if.then94.sink.split.i94_crit_edge, %if.then51.i86.if.then94.sink.split.i94_crit_edge
  %.sink146.i90 = phi i16 [ 4, %if.then51.i86.if.then94.sink.split.i94_crit_edge ], [ -4, %if.then74.i88.if.then94.sink.split.i94_crit_edge ]
  %38 = and i16 %call42.i81, -253
  %inc57.i91 = shl nuw nsw i16 %32, 2
  %39 = add nsw i16 %.sink146.i90, %inc57.i91
  %or64137.i92 = or i16 %39, %38
  %call66.i93 = tail call i32 @wm8350_reg_write(ptr noundef %25, i32 noundef 107, i16 noundef zeroext %or64137.i92) #7
  br label %if.then94.i97

if.then94.i97:                                    ; preds = %if.then94.sink.split.i94, %if.end92.i89.if.then94.i97_crit_edge, %if.end41.i83.if.then94.i97_crit_edge
  %right_complete.0143.i95 = phi i32 [ 1, %if.end92.i89.if.then94.i97_crit_edge ], [ 0, %if.end41.i83.if.then94.i97_crit_edge ], [ 0, %if.then94.sink.split.i94 ]
  %call95.i96 = tail call i32 @wm8350_set_bits(ptr noundef %25, i16 noundef zeroext 106, i16 noundef zeroext 256) #7
  br label %if.end96.i100

if.end96.i100:                                    ; preds = %if.then94.i97, %if.end92.i89.if.end96.i100_crit_edge
  %right_complete.0142.i98 = phi i32 [ 1, %if.end92.i89.if.end96.i100_crit_edge ], [ %right_complete.0143.i95, %if.then94.i97 ]
  %and97.i99 = and i32 %right_complete.0142.i98, %left_complete.0.i80
  br label %if.end22

if.end22:                                         ; preds = %if.end96.i100, %if.then20.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %out2_complete.0 = phi i32 [ 1, %if.end15.if.end22_crit_edge ], [ %and97.i99, %if.end96.i100 ], [ 1, %if.then20.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out1_complete.0)
  %tobool.not = icmp eq i32 %out1_complete.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out2_complete.0)
  %tobool24.not = icmp eq i32 %out2_complete.0, 0
  %or.cond = or i1 %tobool.not, %tobool24.not
  br i1 %or.cond, label %if.end26, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end26:                                         ; preds = %if.end22
  %40 = ptrtoint ptr %ramp to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ramp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp29 = icmp eq i16 %41, 1
  br i1 %cmp29, label %if.end26.if.then35_crit_edge, label %lor.lhs.false

if.end26.if.then35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

lor.lhs.false:                                    ; preds = %if.end26
  %42 = ptrtoint ptr %ramp16 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ramp16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %43)
  %cmp33 = icmp eq i16 %43, 1
  br i1 %cmp33, label %lor.lhs.false.if.then35_crit_edge, label %if.else44

lor.lhs.false.if.then35_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.then35:                                        ; preds = %lor.lhs.false.if.then35_crit_edge, %if.end26.if.then35_crit_edge
  %call40 = tail call i32 @schedule_timeout_interruptible(i32 noundef 1) #7
  br label %for.inc

if.else44:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 10737400) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else44, %if.then35
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %45 = ptrtoint ptr %ramp to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %ramp, align 2
  %46 = ptrtoint ptr %ramp16 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %ramp16, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_hpl_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 231) #7
  %and8.i = and i16 %call.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and8.i)
  %tobool.not.i = icmp eq i16 %and8.i, 0
  br i1 %tobool.not.i, label %entry.wm8350_hp_work.exit_crit_edge, label %if.then.i

entry.wm8350_hp_work.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8350_hp_work.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %report3.i = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %report3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report3.i, align 4
  br label %wm8350_hp_work.exit

wm8350_hp_work.exit:                              ; preds = %if.then.i, %entry.wm8350_hp_work.exit_crit_edge
  %report.0.i = phi i32 [ %3, %if.then.i ], [ 0, %entry.wm8350_hp_work.exit_crit_edge ]
  %hpl = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %hpl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hpl, align 4
  %report5.i = getelementptr i8, ptr %work, i32 100
  %6 = ptrtoint ptr %report5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report5.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %5, i32 noundef %report.0.i, i32 noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8350_hpr_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -140
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 231) #7
  %and8.i = and i16 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and8.i)
  %tobool.not.i = icmp eq i16 %and8.i, 0
  br i1 %tobool.not.i, label %entry.wm8350_hp_work.exit_crit_edge, label %if.then.i

entry.wm8350_hp_work.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %wm8350_hp_work.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %report3.i = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %report3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %report3.i, align 4
  br label %wm8350_hp_work.exit

wm8350_hp_work.exit:                              ; preds = %if.then.i, %entry.wm8350_hp_work.exit_crit_edge
  %report.0.i = phi i32 [ %3, %if.then.i ], [ 0, %entry.wm8350_hp_work.exit_crit_edge ]
  %hpr = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %hpr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hpr, align 4
  %report5.i = getelementptr i8, ptr %work, i32 100
  %6 = ptrtoint ptr %report5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %report5.i, align 4
  tail call void @snd_soc_jack_report(ptr noundef %5, i32 noundef %report.0.i, i32 noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @wm8350_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8350_reg_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_mic_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @trace_snd_soc_jack_irq(ptr noundef nonnull @.str.190)
  %call = tail call zeroext i16 @wm8350_reg_read(ptr noundef %1, i32 noundef 231) #7
  %conv = zext i16 %call to i32
  %and = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %short_report = getelementptr inbounds %struct.wm8350_data, ptr %data, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %short_report to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %short_report, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %report.0 = phi i32 [ %3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and3 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %report7 = getelementptr inbounds %struct.wm8350_data, ptr %data, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %report7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %report7, align 4
  %or8 = or i32 %5, %report.0
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %report.1 = phi i32 [ %or8, %if.then5 ], [ %report.0, %if.end.if.end9_crit_edge ]
  %mic10 = getelementptr inbounds %struct.wm8350_data, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %mic10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mic10, align 4
  %report12 = getelementptr inbounds %struct.wm8350_data, ptr %data, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %report12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %report12, align 4
  %short_report14 = getelementptr inbounds %struct.wm8350_data, ptr %data, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %short_report14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %short_report14, align 4
  %or15 = or i32 %11, %9
  tail call void @snd_soc_jack_report(ptr noundef %7, i32 noundef %report.1, i32 noundef %or15) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %clk_id, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 0, label %entry.sw.bb4_crit_edge
    i32 1, label %entry.sw.bb4_crit_edge18
    i32 2, label %entry.sw.bb4_crit_edge19
    i32 3, label %entry.sw.bb4_crit_edge20
  ]

entry.sw.bb4_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @wm8350_clear_bits(ptr noundef %7, i16 noundef zeroext 40, i16 noundef zeroext 2048) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge18, %entry.sw.bb4_crit_edge19, %entry.sw.bb4_crit_edge20
  %call5 = tail call i32 @wm8350_set_bits(ptr noundef %7, i16 noundef zeroext 40, i16 noundef zeroext 2048) #7
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 45) #7
  %conv = and i32 %call6, 65532
  %or = or i32 %conv, %clk_id
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 45, i32 noundef %or) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @wm8350_set_bits(ptr noundef %7, i16 noundef zeroext 41, i16 noundef zeroext 1) #7
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @wm8350_clear_bits(ptr noundef %7, i16 noundef zeroext 41, i16 noundef zeroext 1) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_set_fll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %fll_freq_in = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %fll_freq_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fll_freq_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %freq_in)
  %cmp = icmp eq i32 %9, %freq_in
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fll_freq_out = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %fll_freq_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fll_freq_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %freq_out)
  %cmp3 = icmp eq i32 %11, %freq_out
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @wm8350_clear_bits(ptr noundef %7, i16 noundef zeroext 11, i16 noundef zeroext 3072) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %cmp5 = icmp eq i32 %freq_out, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %cmp6 = icmp eq i32 %freq_in, 0
  %or.cond = or i1 %cmp6, %cmp5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %12 = add i32 %freq_out, -2815250
  call void @__sanitizer_cov_trace_const_cmp4(i32 309751, i32 %12)
  %13 = icmp ult i32 %12, 309751
  br i1 %13, label %if.end8.if.end22.i_crit_edge, label %if.else.i

if.end8.if.end22.i_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end8
  %14 = add i32 %freq_out, -5625000
  call void @__sanitizer_cov_trace_const_cmp4(i32 625001, i32 %14)
  %15 = icmp ult i32 %14, 625001
  br i1 %15, label %if.else.i.if.end22.i_crit_edge, label %if.else7.i

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.else7.i:                                       ; preds = %if.else.i
  %16 = add i32 %freq_out, -11250000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250001, i32 %16)
  %17 = icmp ult i32 %16, 1250001
  br i1 %17, label %if.else7.i.if.end22.i_crit_edge, label %if.else13.i

if.else7.i.if.end22.i_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.else13.i:                                      ; preds = %if.else7.i
  %18 = add i32 %freq_out, -22500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500001, i32 %18)
  %19 = icmp ult i32 %18, 2500001
  br i1 %19, label %if.else13.i.if.end22.i_crit_edge, label %fll_factors.exit

if.else13.i.if.end22.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else13.i.if.end22.i_crit_edge, %if.else7.i.if.end22.i_crit_edge, %if.else.i.if.end22.i_crit_edge, %if.end8.if.end22.i_crit_edge
  %.sink381.i = phi i32 [ 4, %if.end8.if.end22.i_crit_edge ], [ 3, %if.else.i.if.end22.i_crit_edge ], [ 2, %if.else7.i.if.end22.i_crit_edge ], [ 1, %if.else13.i.if.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %freq_in)
  %cmp23.i = icmp ugt i32 %freq_in, 48000
  %.sink.i = select i1 %cmp23.i, i32 1, i32 8
  %add.i = add nuw nsw i32 %.sink381.i, 1
  %mul.i = shl nuw nsw i32 %freq_out, %add.i
  %mul30.i = mul i32 %.sink.i, %freq_in
  %mul.i.frozen = freeze i32 %mul.i
  %div31.i = udiv i32 %mul.i.frozen, %mul30.i
  %20 = mul i32 %div31.i, %mul30.i
  %rem.i.decomposed = sub i32 %mul.i.frozen, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i, label %if.end22.i.do.body_crit_edge, label %if.then32.i

if.end22.i.do.body_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then32.i:                                      ; preds = %if.end22.i
  %conv.i = zext i32 %rem.i.decomposed to i64
  %mul33.i = mul nuw nsw i64 %conv.i, 655360
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul33.i)
  %cmp212.i = icmp ult i64 %mul33.i, 4294967296
  br i1 %cmp212.i, label %if.then216.i, label %if.else222.i, !prof !368

if.then216.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv217.i = trunc i64 %mul33.i to i32
  %div220.i = udiv i32 %conv217.i, %mul30.i
  br label %if.end226.i

if.else222.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul30.i, i64 %mul33.i) #11, !srcloc !373
  %asmresult1.i.i = extractvalue { i64, i64 } %21, 1
  %extract.t379.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.else222.i, %if.then216.i
  %Kpart.0.off0.i = phi i32 [ %div220.i, %if.then216.i ], [ %extract.t379.i, %if.else222.i ]
  %rem230.i = urem i32 %Kpart.0.off0.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem230.i)
  %cmp231.i = icmp ugt i32 %rem230.i, 4
  %add234.i = add i32 %Kpart.0.off0.i, 5
  %spec.select.i = select i1 %cmp231.i, i32 %add234.i, i32 %Kpart.0.off0.i
  %div236.i = udiv i32 %spec.select.i, 10
  br label %do.body

fll_factors.exit:                                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %freq_out) #10
  br label %cleanup

do.body:                                          ; preds = %if.end226.i, %if.end22.i.do.body_crit_edge
  %fll_div.sroa.10.0.ph = phi i32 [ 0, %if.end22.i.do.body_crit_edge ], [ %div236.i, %if.end226.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8350_set_fll.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8350_set_fll, %if.then16)) #7
          to label %do.end [label %if.then16], !srcloc !367

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8350_set_fll.__UNIQUE_ID_ddebug321, ptr noundef %23, ptr noundef nonnull @.str.196, i32 noundef %freq_in, i32 noundef %freq_out, i32 noundef %div31.i, i32 noundef %fll_div.sroa.10.0.ph, i32 noundef %.sink381.i, i32 noundef %.sink.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %call18 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 42) #7
  %conv = and i32 %call18, 14351
  %shl = shl nuw nsw i32 %.sink381.i, 8
  %or = or i32 %conv, %shl
  %or21 = or i32 %or, 80
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 42, i32 noundef %or21) #7
  %shl24 = shl nuw nsw i32 %.sink.i, 11
  %and26 = and i32 %div31.i, 1023
  %or27 = or i32 %and26, %shl24
  %call28 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 43, i32 noundef %or27) #7
  %call30 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 44, i32 noundef %fll_div.sroa.10.0.ph) #7
  %call31 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 45) #7
  %conv33 = and i32 %call31, 65487
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fll_div.sroa.10.0.ph)
  %tobool36.not = icmp eq i32 %fll_div.sroa.10.0.ph, 0
  %cond = select i1 %tobool36.not, i32 0, i32 32
  %cond41 = select i1 %cmp23.i, i32 0, i32 16
  %or37 = or i32 %cond, %cond41
  %or42 = or i32 %or37, %conv33
  %call43 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 45, i32 noundef %or42) #7
  %call44 = tail call i32 @wm8350_set_bits(ptr noundef %7, i16 noundef zeroext 11, i16 noundef zeroext 1024) #7
  %call45 = tail call i32 @wm8350_set_bits(ptr noundef %7, i16 noundef zeroext 11, i16 noundef zeroext 2048) #7
  %fll_freq_out46 = getelementptr inbounds %struct.wm8350_data, ptr %5, i32 0, i32 7
  %24 = ptrtoint ptr %fll_freq_out46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %freq_out, ptr %fll_freq_out46, align 4
  %25 = ptrtoint ptr %fll_freq_in to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %freq_in, ptr %fll_freq_in, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %fll_factors.exit, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %fll_factors.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_set_clkdiv(ptr nocapture noundef readonly %codec_dai, i32 noundef %div_id, i32 noundef %div) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div_id)
  %2 = icmp ult i32 %div_id, 8
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %div_id to i8
  %switch.shifted = lshr i8 -17, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.wm8350_set_clkdiv, i32 0, i32 %div_id
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep74 = getelementptr inbounds [8 x i32], ptr @switch.table.wm8350_set_clkdiv.199, i32 0, i32 %div_id
  %5 = ptrtoint ptr %switch.gep74 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load75 = load i32, ptr %switch.gep74, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %switch.load) #7
  %conv = and i32 %call, %switch.load75
  %or = or i32 %conv, %div
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %switch.load, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 112) #7
  %2 = trunc i32 %call to i16
  %conv = and i16 %2, 27903
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 115) #7
  %conv4 = and i32 %call2, 49151
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 53) #7
  %conv7 = and i32 %call5, 63487
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 70) #7
  %conv10 = and i32 %call8, 63487
  %3 = trunc i32 %fmt to i16
  %trunc = and i16 %3, -4096
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.211)
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
  %conv13 = or i32 %call2, 16384
  %conv16 = or i32 %call5, 2048
  %conv19 = or i32 %call8, 2048
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %master.0 = phi i32 [ %conv4, %entry.sw.epilog_crit_edge ], [ %conv13, %sw.bb ]
  %dac_lrc.0 = phi i32 [ %conv7, %entry.sw.epilog_crit_edge ], [ %conv16, %sw.bb ]
  %adc_lrc.0 = phi i32 [ %conv10, %entry.sw.epilog_crit_edge ], [ %conv19, %sw.bb ]
  %and20 = and i32 %fmt, 15
  %5 = zext i32 %and20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %and20, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb21
    i32 2, label %sw.epilog.sw.epilog38_crit_edge
    i32 3, label %sw.bb25
    i32 4, label %sw.bb29
    i32 5, label %sw.bb33
  ]

sw.epilog.sw.epilog38_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog38

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb21:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %6 = or i16 %conv, 512
  br label %sw.epilog38

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i16 %conv, 256
  br label %sw.epilog38

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i16 %conv, 768
  br label %sw.epilog38

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i16 %conv, 4864
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.bb33, %sw.bb29, %sw.bb25, %sw.bb21, %sw.epilog.sw.epilog38_crit_edge
  %iface.0 = phi i16 [ %9, %sw.bb33 ], [ %8, %sw.bb29 ], [ %7, %sw.bb25 ], [ %conv, %sw.epilog.sw.epilog38_crit_edge ], [ %6, %sw.bb21 ]
  %and39 = lshr i32 %fmt, 8
  %10 = and i32 %and39, 15
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %10, label %sw.epilog38.cleanup_crit_edge [
    i32 0, label %sw.epilog38.sw.epilog53_crit_edge
    i32 4, label %sw.bb40
    i32 3, label %sw.bb44
    i32 2, label %sw.bb48
  ]

sw.epilog38.sw.epilog53_crit_edge:                ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog53

sw.epilog38.cleanup_crit_edge:                    ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb40:                                          ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i16 %iface.0, -28672
  br label %sw.epilog53

sw.bb44:                                          ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i16 %iface.0, -32768
  br label %sw.epilog53

sw.bb48:                                          ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i16 %iface.0, 4096
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.bb48, %sw.bb44, %sw.bb40, %sw.epilog38.sw.epilog53_crit_edge
  %iface.1 = phi i16 [ %14, %sw.bb48 ], [ %13, %sw.bb44 ], [ %12, %sw.bb40 ], [ %iface.0, %sw.epilog38.sw.epilog53_crit_edge ]
  %conv54 = zext i16 %iface.1 to i32
  %call55 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 112, i32 noundef %conv54) #7
  %conv56 = and i32 %master.0, 65535
  %call57 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 115, i32 noundef %conv56) #7
  %conv58 = and i32 %dac_lrc.0, 65535
  %call59 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 53, i32 noundef %conv58) #7
  %conv60 = and i32 %adc_lrc.0, 65535
  %call61 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 70, i32 noundef %conv60) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog53, %sw.epilog38.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog53 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 16384
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 58, i32 noundef 16384, i32 noundef %.) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8350_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %codec_dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 112) #7
  %8 = trunc i32 %call3 to i16
  %conv = and i16 %8, -3073
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %10, %entry.if.then.i.i.i_crit_edge ], [ %13, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !374
  %add.i.i.i = or i32 %11, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %14 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %call1.i, label %params_width.exit.sw.epilog_crit_edge [
    i32 32, label %sw.bb11
    i32 20, label %sw.bb
    i32 24, label %sw.bb7
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i16 %conv, 1024
  br label %sw.epilog

sw.bb7:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = or i16 %conv, 2048
  br label %sw.epilog

sw.bb11:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = or i16 %8, 3072
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb, %params_width.exit.sw.epilog_crit_edge
  %iface.0 = phi i16 [ %conv, %params_width.exit.sw.epilog_crit_edge ], [ %16, %sw.bb7 ], [ %15, %sw.bb ], [ %conv14, %sw.bb11 ]
  %conv15 = zext i16 %iface.0 to i32
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 112, i32 noundef %conv15) #7
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %sw.epilog.if.end24_crit_edge

sw.epilog.if.end24_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then:                                          ; preds = %sw.epilog
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %20)
  %cmp19 = icmp ult i32 %20, 24000
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @wm8350_set_bits(ptr noundef %7, i16 noundef zeroext 59, i16 noundef zeroext 4096) #7
  br label %if.end24

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @wm8350_clear_bits(ptr noundef %7, i16 noundef zeroext 59, i16 noundef zeroext 4096) #7
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21, %sw.epilog.if.end24_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 235)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !302, !303, !304, !305, !306, !308, !309, !310, !311, !313, !314, !315, !316, !318, !319, !320, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !350, !351, !352, !354, !355, !356}
!llvm.named.register.sp = !{!357}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__ksymtab_wm8350_hp_jack_detect, !1, !"__ksymtab_wm8350_hp_jack_detect", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8350.c", i32 1362, i32 1}
!2 = !{ptr @__ksymtab_wm8350_mic_jack_detect, !3, !"__ksymtab_wm8350_mic_jack_detect", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8350.c", i32 1420, i32 1}
!4 = !{ptr @__initcall__kmod_snd_soc_wm8350__322_1613_wm8350_codec_driver_init6, !5, !"__initcall__kmod_snd_soc_wm8350__322_1613_wm8350_codec_driver_init6", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8350.c", i32 1613, i32 1}
!6 = !{ptr @__exitcall_wm8350_codec_driver_exit, !5, !"__exitcall_wm8350_codec_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description323, !8, !"__UNIQUE_ID_description323", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8350.c", i32 1615, i32 1}
!9 = !{ptr @__UNIQUE_ID_author324, !10, !"__UNIQUE_ID_author324", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/wm8350.c", i32 1616, i32 1}
!11 = !{ptr @__UNIQUE_ID_file325, !12, !"__UNIQUE_ID_file325", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/wm8350.c", i32 1617, i32 1}
!13 = !{ptr @__UNIQUE_ID_license326, !12, !"__UNIQUE_ID_license326", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias327, !15, !"__UNIQUE_ID_alias327", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8350.c", i32 1618, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/wm8350.c", i32 1278, i32 25}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/trace/events/asoc.h", i32 211, i32 1}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!22 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/wm8350.c", i32 1296, i32 25}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm8350.c", i32 1608, i32 14}
!30 = !{ptr @wm8350_codec_driver, !31, !"wm8350_codec_driver", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/wm8350.c", i32 1606, i32 31}
!32 = !{ptr @soc_component_dev_wm8350, !33, !"soc_component_dev_wm8350", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/wm8350.c", i32 1582, i32 46}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/wm8350.c", i32 401, i32 2}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/wm8350.c", i32 402, i32 2}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/wm8350.c", i32 403, i32 2}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/wm8350.c", i32 408, i32 2}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/wm8350.c", i32 409, i32 2}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wm8350.c", i32 410, i32 2}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wm8350.c", i32 411, i32 2}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/wm8350.c", i32 412, i32 2}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/wm8350.c", i32 413, i32 2}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/wm8350.c", i32 418, i32 2}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wm8350.c", i32 421, i32 2}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8350.c", i32 426, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/wm8350.c", i32 429, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8350.c", i32 431, i32 2}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm8350.c", i32 434, i32 2}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8350.c", i32 437, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8350.c", i32 440, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8350.c", i32 443, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm8350.c", i32 446, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8350.c", i32 448, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8350.c", i32 450, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/wm8350.c", i32 453, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8350.c", i32 458, i32 2}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/wm8350.c", i32 461, i32 2}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/wm8350.c", i32 466, i32 2}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/wm8350.c", i32 468, i32 2}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/wm8350.c", i32 469, i32 2}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/wm8350.c", i32 472, i32 2}
!90 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/wm8350.c", i32 476, i32 2}
!92 = !{ptr @wm8350_snd_controls, !93, !"wm8350_snd_controls", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/wm8350.c", i32 400, i32 38}
!94 = !{ptr @wm8350_enum, !95, !"wm8350_enum", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/wm8350.c", i32 378, i32 30}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/wm8350.c", i32 370, i32 39}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/wm8350.c", i32 370, i32 47}
!100 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wm8350.c", i32 370, i32 56}
!102 = !{ptr @.str.59, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/wm8350.c", i32 370, i32 67}
!104 = !{ptr @wm8350_deemp, !105, !"wm8350_deemp", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wm8350.c", i32 370, i32 20}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/wm8350.c", i32 371, i32 37}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wm8350.c", i32 371, i32 47}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/wm8350.c", i32 371, i32 56}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm8350.c", i32 371, i32 65}
!114 = !{ptr @wm8350_pol, !115, !"wm8350_pol", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8350.c", i32 371, i32 20}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wm8350.c", i32 372, i32 52}
!118 = !{ptr @wm8350_dacmutem, !119, !"wm8350_dacmutem", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8350.c", i32 372, i32 20}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wm8350.c", i32 373, i32 42}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8350.c", i32 373, i32 50}
!124 = !{ptr @wm8350_dacmutes, !125, !"wm8350_dacmutes", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8350.c", i32 373, i32 20}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wm8350.c", i32 374, i32 51}
!128 = !{ptr @wm8350_adcfilter, !129, !"wm8350_adcfilter", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8350.c", i32 374, i32 20}
!130 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm8350.c", i32 375, i32 50}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/wm8350.c", i32 375, i32 58}
!134 = !{ptr @wm8350_adchp, !135, !"wm8350_adchp", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/wm8350.c", i32 375, i32 20}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm8350.c", i32 376, i32 36}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/wm8350.c", i32 376, i32 44}
!140 = !{ptr @wm8350_lr, !141, !"wm8350_lr", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8350.c", i32 376, i32 20}
!142 = !{ptr @dac_pcm_tlv, !143, !"dac_pcm_tlv", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/wm8350.c", i32 391, i32 8}
!144 = !{ptr @adc_pcm_tlv, !145, !"adc_pcm_tlv", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8350.c", i32 392, i32 8}
!146 = !{ptr @capture_sd_tlv, !147, !"capture_sd_tlv", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8350.c", i32 395, i32 14}
!148 = !{ptr @pre_amp_tlv, !149, !"pre_amp_tlv", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8350.c", i32 389, i32 8}
!150 = !{ptr @out_mix_tlv, !151, !"out_mix_tlv", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wm8350.c", i32 393, i32 8}
!152 = !{ptr @out_pga_tlv, !153, !"out_pga_tlv", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8350.c", i32 390, i32 8}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8350.c", i32 586, i32 2}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8350.c", i32 587, i32 2}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8350.c", i32 588, i32 2}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8350.c", i32 591, i32 2}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8350.c", i32 594, i32 2}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8350.c", i32 597, i32 2}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8350.c", i32 601, i32 2}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8350.c", i32 605, i32 2}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8350.c", i32 609, i32 2}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8350.c", i32 613, i32 2}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8350.c", i32 617, i32 2}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8350.c", i32 621, i32 2}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8350.c", i32 625, i32 2}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8350.c", i32 629, i32 2}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8350.c", i32 634, i32 2}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wm8350.c", i32 636, i32 2}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm8350.c", i32 639, i32 2}
!188 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm8350.c", i32 641, i32 2}
!191 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wm8350.c", i32 643, i32 2}
!194 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm8350.c", i32 645, i32 2}
!197 = !{ptr @.str.95, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/wm8350.c", i32 648, i32 2}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wm8350.c", i32 650, i32 2}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/wm8350.c", i32 653, i32 2}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm8350.c", i32 654, i32 2}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm8350.c", i32 655, i32 2}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wm8350.c", i32 656, i32 2}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/wm8350.c", i32 657, i32 2}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm8350.c", i32 658, i32 2}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/wm8350.c", i32 660, i32 2}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/wm8350.c", i32 661, i32 2}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wm8350.c", i32 662, i32 2}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wm8350.c", i32 663, i32 2}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/wm8350.c", i32 664, i32 2}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wm8350.c", i32 665, i32 2}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/wm8350.c", i32 666, i32 2}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/wm8350.c", i32 667, i32 2}
!230 = !{ptr @wm8350_dapm_widgets, !231, !"wm8350_dapm_widgets", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/wm8350.c", i32 584, i32 41}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/wm8350.c", i32 272, i32 3}
!234 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm8350.c", i32 554, i32 2}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm8350.c", i32 556, i32 2}
!239 = !{ptr @.str.119, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wm8350.c", i32 558, i32 2}
!241 = !{ptr @wm8350_right_capt_mixer_controls, !242, !"wm8350_right_capt_mixer_controls", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wm8350.c", i32 553, i32 38}
!243 = !{ptr @wm8350_left_capt_mixer_controls, !244, !"wm8350_left_capt_mixer_controls", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/wm8350.c", i32 543, i32 38}
!245 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm8350.c", i32 516, i32 2}
!247 = !{ptr @.str.126, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wm8350.c", i32 518, i32 2}
!249 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm8350.c", i32 520, i32 2}
!251 = !{ptr @.str.130, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/wm8350.c", i32 522, i32 2}
!253 = !{ptr @.str.132, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/wm8350.c", i32 524, i32 2}
!255 = !{ptr @.str.134, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/wm8350.c", i32 526, i32 2}
!257 = !{ptr @wm8350_out4_mixer_controls, !258, !"wm8350_out4_mixer_controls", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/wm8350.c", i32 515, i32 38}
!259 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/wm8350.c", i32 534, i32 2}
!261 = !{ptr @.str.139, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/wm8350.c", i32 536, i32 2}
!263 = !{ptr @wm8350_out3_mixer_controls, !264, !"wm8350_out3_mixer_controls", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/wm8350.c", i32 531, i32 38}
!265 = !{ptr @.str.142, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/wm8350.c", i32 502, i32 2}
!267 = !{ptr @.str.144, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/wm8350.c", i32 504, i32 2}
!269 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/wm8350.c", i32 508, i32 2}
!271 = !{ptr @.str.149, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/wm8350.c", i32 510, i32 2}
!273 = !{ptr @wm8350_right_play_mixer_controls, !274, !"wm8350_right_play_mixer_controls", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/wm8350.c", i32 501, i32 38}
!275 = !{ptr @.str.152, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/wm8350.c", i32 490, i32 2}
!277 = !{ptr @wm8350_left_play_mixer_controls, !278, !"wm8350_left_play_mixer_controls", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/wm8350.c", i32 487, i32 38}
!279 = !{ptr @.str.157, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/wm8350.c", i32 564, i32 2}
!281 = !{ptr @.str.159, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/wm8350.c", i32 565, i32 2}
!283 = !{ptr @.str.161, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/wm8350.c", i32 566, i32 2}
!285 = !{ptr @wm8350_left_mic_mixer_controls, !286, !"wm8350_left_mic_mixer_controls", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/wm8350.c", i32 563, i32 38}
!287 = !{ptr @wm8350_right_mic_mixer_controls, !288, !"wm8350_right_mic_mixer_controls", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/wm8350.c", i32 570, i32 38}
!289 = !{ptr @.str.166, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/wm8350.c", i32 578, i32 1}
!291 = !{ptr @wm8350_beep_switch_controls, !292, !"wm8350_beep_switch_controls", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/wm8350.c", i32 577, i32 38}
!293 = !{ptr @.str.168, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/wm8350.c", i32 582, i32 1}
!295 = !{ptr @wm8350_out4_capture_controls, !296, !"wm8350_out4_capture_controls", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/wm8350.c", i32 581, i32 38}
!297 = !{ptr @wm8350_dapm_routes, !298, !"wm8350_dapm_routes", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/wm8350.c", i32 670, i32 40}
!299 = !{ptr @.str.169, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/wm8350.c", i32 1466, i32 3}
!301 = !{ptr @.str.170, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.171, !300, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.172, !300, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @wm8350_component_probe._entry, !300, !"_entry", i1 false, i1 false}
!305 = !{ptr @wm8350_component_probe._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @wm8350_component_probe.__key, !307, !"__key", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8350.c", i32 1491, i32 2}
!308 = !{ptr @.str.173, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @wm8350_component_probe.__key.174, !307, !"__key", i1 false, i1 false}
!310 = !{ptr @.str.175, !307, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @wm8350_component_probe.__key.176, !312, !"__key", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/wm8350.c", i32 1492, i32 2}
!313 = !{ptr @.str.177, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @wm8350_component_probe.__key.178, !312, !"__key", i1 false, i1 false}
!315 = !{ptr @.str.179, !312, !"<string literal>", i1 false, i1 false}
!316 = !{ptr @wm8350_component_probe.__key.180, !317, !"__key", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/wm8350.c", i32 1493, i32 2}
!318 = !{ptr @.str.181, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @wm8350_component_probe.__key.182, !317, !"__key", i1 false, i1 false}
!320 = !{ptr @.str.183, !317, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @.str.184, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/wm8350.c", i32 1541, i32 36}
!323 = !{ptr @.str.185, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/wm8350.c", i32 1544, i32 36}
!325 = !{ptr @.str.186, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/wm8350.c", i32 1547, i32 31}
!327 = !{ptr @.str.187, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/wm8350.c", i32 1549, i32 31}
!329 = !{ptr @.str.188, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/wm8350.c", i32 40, i32 2}
!331 = !{ptr @.str.189, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/wm8350.c", i32 41, i32 2}
!333 = distinct !{null, !334, !"supply_names", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/wm8350.c", i32 39, i32 20}
!335 = !{ptr @.str.190, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/wm8350.c", i32 1372, i32 25}
!337 = !{ptr @.str.191, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/wm8350.c", i32 1439, i32 10}
!339 = !{ptr @.str.192, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/wm8350.c", i32 1448, i32 19}
!341 = !{ptr @.str.193, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/wm8350.c", i32 1441, i32 18}
!343 = !{ptr @wm8350_dai, !344, !"wm8350_dai", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/wm8350.c", i32 1438, i32 34}
!345 = !{ptr @wm8350_dai_ops, !346, !"wm8350_dai_ops", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/wm8350.c", i32 1428, i32 37}
!347 = !{ptr @.str.194, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/wm8350.c", i32 1045, i32 2}
!349 = !{ptr @.str.195, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @.str.196, !348, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @wm8350_set_fll.__UNIQUE_ID_ddebug321, !348, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!352 = !{ptr @.str.197, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/wm8350.c", i32 988, i32 3}
!354 = !{ptr @.str.198, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @fll_factors._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @fll_factors._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{!"sp"}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{i64 2149000256, i64 2149000261, i64 2149000274, i64 2149000318, i64 2149000352, i64 2149000373}
!368 = !{!"branch_weights", i32 2000, i32 1}
!369 = !{i64 2156041971}
!370 = !{i64 2156042174}
!371 = !{i64 2149411597}
!372 = !{i64 2149412633}
!373 = !{i64 2148233303, i64 2148233583, i64 2148233917, i64 2148234251}
!374 = !{i32 0, i32 33}
