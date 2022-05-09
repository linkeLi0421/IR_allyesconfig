; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/speyside.c_pt.bc'
source_filename = "../sound/soc/samsung/speyside.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_aux_dev = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }

@__initcall__kmod_snd_soc_speyside__238_347_speyside_driver_init6 = internal global ptr @speyside_driver_init, section ".initcall6.init", align 4
@speyside_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @speyside_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_speyside_driver_exit = internal global ptr @speyside_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [52 x i8] c"snd_soc_speyside.description=Speyside audio support\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [73 x i8] c"snd_soc_speyside.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [57 x i8] c"snd_soc_speyside.file=sound/soc/samsung/snd-soc-speyside\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [29 x i8] c"snd_soc_speyside.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [41 x i8] c"snd_soc_speyside.alias=platform:speyside\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"speyside\00", [23 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@speyside = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.2, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @speyside_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @speyside_set_bias_level, ptr @speyside_set_bias_level_post, ptr null, ptr null, i32 0, ptr @speyside_dai, i32 3, %struct.list_head zeroinitializer, i32 0, ptr @speyside_codec_conf, i32 1, ptr @speyside_aux_dev, i32 1, %struct.list_head zeroinitializer, ptr @controls, i32 6, ptr @widgets, i32 5, ptr @audio_paths, i32 19, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_soc_register_card() failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speyside\00", [23 x i8] zeroinitializer }, align 32
@speyside_codec_conf = internal global { [1 x %struct.snd_soc_codec_conf], [16 x i8] } { [1 x %struct.snd_soc_codec_conf] [%struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.32, ptr null, ptr null }, ptr @.str.33 }], [16 x i8] zeroinitializer }, align 32
@speyside_aux_dev = internal global { [1 x %struct.snd_soc_aux_dev], [16 x i8] } { [1 x %struct.snd_soc_aux_dev] [%struct.snd_soc_aux_dev { %struct.snd_soc_dai_link_component { ptr @.str.32, ptr null, ptr null }, ptr @speyside_wm9081_init }], [16 x i8] zeroinitializer }, align 32
@controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.5 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.3 to i32) }], [64 x i8] zeroinitializer }, align 32
@audio_paths = internal global { [19 x %struct.snd_soc_dapm_route], [228 x i8] } { [19 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.4, ptr @speyside_get_micbias, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.4, ptr @speyside_get_micbias, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.6, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.3, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.3, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.7, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }], [228 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Main AMIC\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Main DMIC\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Main Speaker\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WM1250 Output\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WM1250 Input\00", [19 x i8] zeroinitializer }, align 32
@speyside_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Failed to stop FLL\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"speyside_set_bias_level\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/samsung/speyside.c\00", [35 x i8] zeroinitializer }, align 32
@speyside_set_bias_level._entry_ptr = internal global ptr @speyside_set_bias_level._entry, section ".printk_index", align 4
@speyside_set_bias_level_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.12, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Failed to start FLL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"speyside_set_bias_level_post\00", [35 x i8] zeroinitializer }, align 32
@speyside_set_bias_level_post._entry_ptr = internal global ptr @speyside_set_bias_level_post._entry, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CPU-DSP\00", [24 x i8] zeroinitializer }, align 32
@cpu_dsp_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.19 }], [20 x i8] zeroinitializer }, align 32
@cpu_dsp_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.20, ptr null, ptr @.str.21 }], [20 x i8] zeroinitializer }, align 32
@cpu_dsp_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.19, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DSP-CODEC\00", [22 x i8] zeroinitializer }, align 32
@dsp_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.22 }], [20 x i8] zeroinitializer }, align 32
@dsp_codec_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.23, ptr null, ptr @.str.24 }], [20 x i8] zeroinitializer }, align 32
@dsp_codec_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@dsp_codec_params = internal constant { %struct.snd_soc_pcm_stream, [56 x i8] } { %struct.snd_soc_pcm_stream { ptr null, i64 1024, i32 0, i32 48000, i32 48000, i32 2, i32 2, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Baseband\00", [23 x i8] zeroinitializer }, align 32
@baseband_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@baseband_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.30, ptr null, ptr @.str.31 }], [20 x i8] zeroinitializer }, align 32
@baseband_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@speyside_dai = internal global { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [68 x i8] } { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.15, ptr @.str.15, ptr @cpu_dsp_cpus, i32 1, ptr @cpu_dsp_codecs, i32 1, ptr @cpu_dsp_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr @speyside_wm0010_init, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.16, ptr @.str.16, ptr @dsp_codec_cpus, i32 1, ptr @dsp_codec_codecs, i32 1, ptr @dsp_codec_platforms, i32 0, i32 0, ptr @dsp_codec_params, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr @speyside_wm8996_init, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.17, ptr @.str.17, ptr @baseband_cpus, i32 1, ptr @baseband_codecs, i32 1, ptr @baseband_platforms, i32 0, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [68 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-i2s.0\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi0.0\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm0010-sdi1\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm0010-sdi2\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm8996.1-001a\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8996-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP_SEL\00", [25 x i8] zeroinitializer }, align 32
@speyside_wm8996_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.12, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to request HP_SEL GPIO: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"speyside_wm8996_init\00", [43 x i8] zeroinitializer }, align 32
@speyside_wm8996_init._entry_ptr = internal global ptr @speyside_wm8996_init._entry, section ".printk_index", align 4
@speyside_jack_polarity = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Headset\00", [24 x i8] zeroinitializer }, align 32
@speyside_headset = internal global { %struct.snd_soc_jack, [36 x i8] } zeroinitializer, align 32
@speyside_headset_pins = internal global { [1 x %struct.snd_soc_jack_pin], [44 x i8] } { [1 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.4, i32 2, i8 0 }], [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8996-aif2\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm1250-ev1.1-0027\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm1250-ev1\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wm9081.1-006c\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Sub\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Main Speaker Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Main DMIC Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Main AMIC Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WM1250 Input Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WM1250 Output Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@widgets = internal global { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.3, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.4, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.7, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.6, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1RN\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MICB1\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1RP\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MICB2\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN1LP\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC1DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC2DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT1L\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT1R\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub IN1\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT2L\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub IN2\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPOUT2R\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sub SPKN\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sub SPKP\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKDAT\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"speyside_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 339, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 341, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [9 x i8] c"speyside\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 301, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 334, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 302, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c"speyside_codec_conf\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 248, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"speyside_aux_dev\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 241, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 255, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"audio_paths\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 274, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 173, i32 43 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 174, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 175, i32 43 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 176, i32 43 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 177, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 178, i32 43 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 179, i32 43 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 43, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 76, i32 5 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 207, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [13 x i8] c"cpu_dsp_cpus\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [15 x i8] c"cpu_dsp_codecs\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"cpu_dsp_platforms\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 215, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"dsp_codec_cpus\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"dsp_codec_codecs\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"dsp_codec_platforms\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"dsp_codec_params\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 184, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 225, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"baseband_cpus\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"baseband_codecs\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [19 x i8] c"baseband_platforms\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"speyside_dai\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 205, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 192, i32 1 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 197, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 154, i32 40 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 156, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant [23 x i8] c"speyside_jack_polarity\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 109, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 159, i32 41 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"speyside_headset\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 98, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant [22 x i8] c"speyside_headset_pins\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 101, i32 32 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 201, i32 1 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 250, i32 10 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 251, i32 18 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 256, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 257, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 258, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 259, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 260, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 261, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [8 x i8] c"widgets\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 264, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 275, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 275, i32 19 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 276, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 277, i32 19 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 282, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 286, i32 4 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 287, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 290, i32 23 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 291, i32 23 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 293, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 293, i32 21 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 294, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 294, i32 21 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 296, i32 26 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 297, i32 26 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.292 = private constant [32 x i8] c"../sound/soc/samsung/speyside.c\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.292, i32 298, i32 26 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_speyside_driver_exit, ptr @__initcall__kmod_snd_soc_speyside__238_347_speyside_driver_init6, ptr @speyside_driver_exit, ptr @speyside_set_bias_level._entry, ptr @speyside_set_bias_level._entry_ptr, ptr @speyside_set_bias_level_post._entry, ptr @speyside_set_bias_level_post._entry_ptr, ptr @speyside_wm8996_init._entry, ptr @speyside_wm8996_init._entry_ptr, ptr @speyside_driver, ptr @.str, ptr @speyside, ptr @.str.1, ptr @.str.2, ptr @speyside_codec_conf, ptr @speyside_aux_dev, ptr @controls, ptr @audio_paths, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @cpu_dsp_cpus, ptr @cpu_dsp_codecs, ptr @cpu_dsp_platforms, ptr @.str.16, ptr @dsp_codec_cpus, ptr @dsp_codec_codecs, ptr @dsp_codec_platforms, ptr @dsp_codec_params, ptr @.str.17, ptr @baseband_cpus, ptr @baseband_codecs, ptr @baseband_platforms, ptr @speyside_dai, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @speyside_jack_polarity, ptr @.str.28, ptr @speyside_headset, ptr @speyside_headset_pins, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @widgets, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_codec_conf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_aux_dev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_paths to i32), i32 988, i32 1216, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_set_bias_level_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_dsp_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_dsp_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_dsp_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_codec_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_codec_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_codec_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_dai to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_wm8996_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_jack_polarity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_headset to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speyside_headset_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @speyside_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @speyside_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @speyside_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @speyside, i32 0, i32 5), align 4
  %call = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @speyside) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_late_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 50
  %call = tail call i32 @snd_soc_dapm_ignore_suspend(ptr noundef %dapm, ptr noundef nonnull @.str.3) #7
  %call2 = tail call i32 @snd_soc_dapm_ignore_suspend(ptr noundef %dapm, ptr noundef nonnull @.str.4) #7
  %call4 = tail call i32 @snd_soc_dapm_ignore_suspend(ptr noundef %dapm, ptr noundef nonnull @.str.5) #7
  %call6 = tail call i32 @snd_soc_dapm_ignore_suspend(ptr noundef %dapm, ptr noundef nonnull @.str.6) #7
  %call8 = tail call i32 @snd_soc_dapm_ignore_suspend(ptr noundef %dapm, ptr noundef nonnull @.str.7) #7
  %call10 = tail call i32 @snd_soc_dapm_ignore_suspend(ptr noundef %dapm, ptr noundef nonnull @.str.8) #7
  %call12 = tail call i32 @snd_soc_dapm_ignore_suspend(ptr noundef %dapm, ptr noundef nonnull @.str.9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_set_bias_level(ptr noundef %card, ptr nocapture noundef readonly %dapm, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 1
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx) #7
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %cmp.not = icmp eq ptr %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cond = icmp eq i32 %level, 1
  %or.cond = and i1 %cond, %cmp.not
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call3 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %sw.bb.cleanup_crit_edge, label %if.end6

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %call7 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %7, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %sw.bb.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_set_bias_level_post(ptr noundef %card, ptr nocapture noundef readonly %dapm, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 1
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %card, ptr noundef %arrayidx) #7
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx1 = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %cmp.not = icmp eq ptr %9, %11
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %cond = icmp eq i32 %level, 2
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %dapm3 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 50
  %12 = ptrtoint ptr %dapm3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dapm3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp4 = icmp eq i32 %13, 1
  br i1 %cmp4, label %if.then5, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then5:                                         ; preds = %sw.bb
  %call6 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %7, i32 noundef 0, i32 noundef 2, i32 noundef 32768, i32 noundef 24576000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %call11 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 3, i32 noundef 24576000, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end10.sw.epilog_crit_edge

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end10.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %dapm16 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 50
  %14 = ptrtoint ptr %dapm16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %level, ptr %dapm16, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_ignore_suspend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_wm0010_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %2 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 0, i32 noundef 24576000, i32 noundef 0) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_wm8996_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %2 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 2, i32 noundef 32768, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @gpio_request(i32 noundef 214, ptr noundef nonnull @.str.25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 0
  br i1 %cmp3.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call2) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %8 = load i32, ptr @speyside_jack_polarity, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 214) #7
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %8) #7
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %call8 = tail call i32 @snd_soc_card_jack_new(ptr noundef %10, ptr noundef nonnull @.str.28, i32 noundef 16391, ptr noundef nonnull @speyside_headset, ptr noundef nonnull @speyside_headset_pins, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @wm8996_detect(ptr noundef %7, ptr noundef nonnull @speyside_headset, ptr noundef nonnull @speyside_set_polarity) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm8996_detect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @speyside_set_polarity(ptr noundef %component, i32 noundef %polarity) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polarity)
  %tobool.not = icmp eq i32 %polarity, 0
  %lnot.ext = zext i1 %tobool.not to i32
  store i32 %lnot.ext, ptr @speyside_jack_polarity, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 214) #7
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %lnot.ext) #7
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call2 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speyside_wm9081_init(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_set_sysclk(ptr noundef %component, i32 noundef 1, i32 noundef 0, i32 noundef 24576000, i32 noundef 0) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @speyside_get_micbias(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @speyside_jack_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %name3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %1 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name3, align 4
  br i1 %tobool.not, label %land.lhs.true2, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

land.lhs.true2:                                   ; preds = %entry
  %call4 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %land.lhs.true2.return_crit_edge, label %land.lhs.true2.if.end7_crit_edge

land.lhs.true2.if.end7_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end7:                                          ; preds = %land.lhs.true2.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge
  br label %return

return:                                           ; preds = %if.end7, %land.lhs.true2.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 1, %land.lhs.true.return_crit_edge ], [ 1, %land.lhs.true2.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_snd_soc_speyside__238_347_speyside_driver_init6, !1, !"__initcall__kmod_snd_soc_speyside__238_347_speyside_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/speyside.c", i32 347, i32 1}
!2 = !{ptr @__exitcall_speyside_driver_exit, !1, !"__exitcall_speyside_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/speyside.c", i32 349, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/speyside.c", i32 350, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/samsung/speyside.c", i32 351, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias243, !11, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/speyside.c", i32 352, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/speyside.c", i32 341, i32 11}
!14 = !{ptr @speyside_driver, !15, !"speyside_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/speyside.c", i32 339, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/speyside.c", i32 334, i32 34}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/samsung/speyside.c", i32 302, i32 10}
!20 = !{ptr @speyside, !21, !"speyside", i1 false, i1 false}
!21 = !{!"../sound/soc/samsung/speyside.c", i32 301, i32 28}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/samsung/speyside.c", i32 173, i32 43}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/samsung/speyside.c", i32 174, i32 43}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/samsung/speyside.c", i32 175, i32 43}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/samsung/speyside.c", i32 176, i32 43}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/samsung/speyside.c", i32 177, i32 43}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/speyside.c", i32 178, i32 43}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/samsung/speyside.c", i32 179, i32 43}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/samsung/speyside.c", i32 43, i32 4}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @speyside_set_bias_level._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @speyside_set_bias_level._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/samsung/speyside.c", i32 76, i32 5}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @speyside_set_bias_level_post._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @speyside_set_bias_level_post._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/samsung/speyside.c", i32 207, i32 11}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/samsung/speyside.c", i32 215, i32 11}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/samsung/speyside.c", i32 225, i32 11}
!53 = !{ptr @speyside_dai, !54, !"speyside_dai", i1 false, i1 false}
!54 = !{!"../sound/soc/samsung/speyside.c", i32 205, i32 32}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/samsung/speyside.c", i32 192, i32 1}
!57 = !{ptr @cpu_dsp_cpus, !56, !"cpu_dsp_cpus", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cpu_dsp_codecs, !56, !"cpu_dsp_codecs", i1 false, i1 false}
!61 = !{ptr @cpu_dsp_platforms, !56, !"cpu_dsp_platforms", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/samsung/speyside.c", i32 197, i32 1}
!64 = !{ptr @dsp_codec_cpus, !63, !"dsp_codec_cpus", i1 false, i1 false}
!65 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @dsp_codec_codecs, !63, !"dsp_codec_codecs", i1 false, i1 false}
!68 = !{ptr @dsp_codec_platforms, !63, !"dsp_codec_platforms", i1 false, i1 false}
!69 = !{ptr @dsp_codec_params, !70, !"dsp_codec_params", i1 false, i1 false}
!70 = !{!"../sound/soc/samsung/speyside.c", i32 184, i32 40}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/samsung/speyside.c", i32 154, i32 40}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/samsung/speyside.c", i32 156, i32 3}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @speyside_wm8996_init._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @speyside_wm8996_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/samsung/speyside.c", i32 159, i32 41}
!80 = !{ptr @speyside_jack_polarity, !81, !"speyside_jack_polarity", i1 false, i1 false}
!81 = !{!"../sound/soc/samsung/speyside.c", i32 109, i32 12}
!82 = !{ptr @speyside_headset, !83, !"speyside_headset", i1 false, i1 false}
!83 = !{!"../sound/soc/samsung/speyside.c", i32 98, i32 28}
!84 = !{ptr @speyside_headset_pins, !85, !"speyside_headset_pins", i1 false, i1 false}
!85 = !{!"../sound/soc/samsung/speyside.c", i32 101, i32 32}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/samsung/speyside.c", i32 201, i32 1}
!88 = !{ptr @baseband_cpus, !87, !"baseband_cpus", i1 false, i1 false}
!89 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @baseband_codecs, !87, !"baseband_codecs", i1 false, i1 false}
!92 = !{ptr @baseband_platforms, !87, !"baseband_platforms", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/samsung/speyside.c", i32 250, i32 10}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/samsung/speyside.c", i32 251, i32 18}
!97 = !{ptr @speyside_codec_conf, !98, !"speyside_codec_conf", i1 false, i1 false}
!98 = !{!"../sound/soc/samsung/speyside.c", i32 248, i32 34}
!99 = !{ptr @speyside_aux_dev, !100, !"speyside_aux_dev", i1 false, i1 false}
!100 = !{!"../sound/soc/samsung/speyside.c", i32 241, i32 31}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/samsung/speyside.c", i32 256, i32 2}
!103 = !{ptr @.str.35, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/samsung/speyside.c", i32 257, i32 2}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/samsung/speyside.c", i32 258, i32 2}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/samsung/speyside.c", i32 259, i32 2}
!109 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/samsung/speyside.c", i32 260, i32 2}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/samsung/speyside.c", i32 261, i32 2}
!113 = !{ptr @controls, !114, !"controls", i1 false, i1 false}
!114 = !{!"../sound/soc/samsung/speyside.c", i32 255, i32 38}
!115 = !{ptr @widgets, !116, !"widgets", i1 false, i1 false}
!116 = !{!"../sound/soc/samsung/speyside.c", i32 264, i32 35}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/samsung/speyside.c", i32 275, i32 4}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/samsung/speyside.c", i32 275, i32 19}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/samsung/speyside.c", i32 276, i32 4}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/samsung/speyside.c", i32 277, i32 19}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/samsung/speyside.c", i32 282, i32 4}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/samsung/speyside.c", i32 286, i32 4}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/samsung/speyside.c", i32 287, i32 4}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/samsung/speyside.c", i32 290, i32 23}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/samsung/speyside.c", i32 291, i32 23}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/samsung/speyside.c", i32 293, i32 4}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/samsung/speyside.c", i32 293, i32 21}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/samsung/speyside.c", i32 294, i32 4}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/samsung/speyside.c", i32 294, i32 21}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/samsung/speyside.c", i32 296, i32 26}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/samsung/speyside.c", i32 297, i32 26}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/samsung/speyside.c", i32 298, i32 26}
!149 = !{ptr @audio_paths, !150, !"audio_paths", i1 false, i1 false}
!150 = !{!"../sound/soc/samsung/speyside.c", i32 274, i32 34}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
