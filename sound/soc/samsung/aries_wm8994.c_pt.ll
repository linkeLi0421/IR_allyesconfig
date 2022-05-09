; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/aries_wm8994.c_pt.bc'
source_filename = "../sound/soc/samsung/aries_wm8994.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_jack_zone = type { i32, i32, i32, i32, %struct.list_head }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.aries_wm8994_variant = type { i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aries_wm8994_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_aries_wm8994__294_688_aries_audio_driver_init6 = internal global ptr @aries_audio_driver_init, section ".initcall6.init", align 4
@aries_audio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aries_audio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @samsung_wm8994_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aries_audio_driver_exit = internal global ptr @aries_audio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [55 x i8] c"snd_soc_aries_wm8994.description=ALSA SoC ARIES WM8994\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [65 x i8] c"snd_soc_aries_wm8994.file=sound/soc/samsung/snd-soc-aries-wm8994\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [33 x i8] c"snd_soc_aries_wm8994.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [55 x i8] c"snd_soc_aries_wm8994.alias=platform:aries-audio-wm8994\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aries-audio-wm8994\00", [45 x i8] zeroinitializer }, align 32
@samsung_wm8994_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,fascinate4g-wm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fascinate4g_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,aries-wm8994\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aries_variant }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@aries_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.40, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr @aries_late_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @aries_dai, i32 3, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @aries_controls, i32 2, ptr @aries_dapm_widgets, i32 11, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main-micbias\00", [19 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get main micbias regulator\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aries_audio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/samsung/aries_wm8994.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr = internal global ptr @aries_audio_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"headset-micbias\00", [16 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 575, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to get headset micbias regulator\0A\00", [55 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr.10 = internal global ptr @aries_audio_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"earpath-sel\00", [20 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 582, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get earpath selector gpio\00", [60 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr.14 = internal global ptr @aries_audio_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extcon\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get extcon device\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"headset-detect\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get ADC channel\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"headset-key\00", [20 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 604, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get headset key gpio\00", [33 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr.22 = internal global ptr @aries_audio_probe._entry.20, section ".printk_index", align 4
@aries_audio_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 611, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get headset detect gpio\00", [62 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr.25 = internal global ptr @aries_audio_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung,audio-routing\00", [42 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 620, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Audio routing invalid/unspecified\0A\00", [61 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr.30 = internal global ptr @aries_audio_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sound-dai\00", [22 x i8] zeroinitializer }, align 32
@aries_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.85, ptr null, i32 0, ptr @aries_modem_widgets, i32 2, ptr @aries_modem_routes, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@aries_ext_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.81, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.89, i64 4, i32 2, i32 8000, i32 8000, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.90, i64 4, i32 2, i32 8000, i32 8000, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 664, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr.36 = internal global ptr @aries_audio_probe._entry.34, section ".printk_index", align 4
@aries_audio_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 670, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_soc_register_card() failed:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@aries_audio_probe._entry_ptr.39 = internal global ptr @aries_audio_probe._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ARIES\00", [26 x i8] zeroinitializer }, align 32
@aries_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.64 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Dock\00", [27 x i8] zeroinitializer }, align 32
@aries_dock = internal global { %struct.snd_soc_jack, [36 x i8] } zeroinitializer, align 32
@dock_pins = internal global { [1 x %struct.snd_soc_jack_pin], [44 x i8] } { [1 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.49, i32 4, i8 0 }], [44 x i8] zeroinitializer }, align 32
@aries_extcon_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @aries_extcon_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Headset\00", [24 x i8] zeroinitializer }, align 32
@aries_headset = internal global { %struct.snd_soc_jack, [36 x i8] } zeroinitializer, align 32
@jack_pins = internal global { [2 x %struct.snd_soc_jack_pin], [56 x i8] } { [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.50, i32 1, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.51, i32 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@headset_zones = internal global { [3 x %struct.snd_soc_jack_zone], [56 x i8] } { [3 x %struct.snd_soc_jack_zone] [%struct.snd_soc_jack_zone { i32 0, i32 241, i32 1, i32 0, %struct.list_head zeroinitializer }, %struct.snd_soc_jack_zone { i32 242, i32 2980, i32 3, i32 0, %struct.list_head zeroinitializer }, %struct.snd_soc_jack_zone { i32 2981, i32 -1, i32 1, i32 0, %struct.list_head zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@aries_late_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to map headset detect gpio to irq\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aries_late_probe\00", [47 x i8] zeroinitializer }, align 32
@aries_late_probe._entry_ptr = internal global ptr @aries_late_probe._entry, section ".printk_index", align 4
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"headset_detect\00", [17 x i8] zeroinitializer }, align 32
@aries_late_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request headset detect irq\00", [59 x i8] zeroinitializer }, align 32
@aries_late_probe._entry_ptr.48 = internal global ptr @aries_late_probe._entry.46, section ".printk_index", align 4
@headset_button_gpio = internal global { [1 x %struct.snd_soc_jack_gpio], [32 x i8] } { [1 x %struct.snd_soc_jack_gpio] [%struct.snd_soc_jack_gpio { i32 0, i32 0, ptr null, ptr @.str.60, i32 16384, i32 0, i32 30, i8 0, ptr null, %struct.delayed_work zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, ptr @headset_button_check }], [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINE\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@headset_det_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s failed to enable micbias: %d\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"headset_det_irq_thread\00", [41 x i8] zeroinitializer }, align 32
@headset_det_irq_thread._entry_ptr = internal global ptr @headset_det_irq_thread._entry, section ".printk_index", align 4
@headset_det_irq_thread._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s failed to read ADC, assuming headphones\00", [51 x i8] zeroinitializer }, align 32
@headset_det_irq_thread._entry_ptr.56 = internal global ptr @headset_det_irq_thread._entry.54, section ".printk_index", align 4
@headset_det_irq_thread._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s failed disable micbias: %d\00", [32 x i8] zeroinitializer }, align 32
@headset_det_irq_thread._entry_ptr.59 = internal global ptr @headset_det_irq_thread._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Media Button\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Modem In Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Modem In\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Modem Out Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Modem Out\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCV\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Main Mic\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bluetooth Mic\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bluetooth SPK\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FM In\00", [26 x i8] zeroinitializer }, align 32
@aries_dapm_widgets = internal constant { [11 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [484 x i8] } { [11 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @aries_spk_cfg, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @aries_main_bias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @aries_headset_bias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [484 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WM8994 AIF1\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@aif1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.79 }], [20 x i8] zeroinitializer }, align 32
@aif1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.80 }], [20 x i8] zeroinitializer }, align 32
@aif1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@aries_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @aries_hw_params, ptr @aries_hw_free, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WM8994 AIF2\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Baseband\00", [23 x i8] zeroinitializer }, align 32
@baseband_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.81 }], [20 x i8] zeroinitializer }, align 32
@baseband_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.82 }], [20 x i8] zeroinitializer }, align 32
@baseband_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@baseband_params = internal constant { %struct.snd_soc_pcm_stream, [56 x i8] } { %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 0, i32 8000, i32 8000, i32 1, i32 1, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WM8994 AIF3\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bluetooth\00", [22 x i8] zeroinitializer }, align 32
@bluetooth_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.83 }], [20 x i8] zeroinitializer }, align 32
@bluetooth_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.84 }], [20 x i8] zeroinitializer }, align 32
@bluetooth_platforms = internal global { [0 x %struct.snd_soc_dai_link_component], [32 x i8] } zeroinitializer, align 32
@bluetooth_params = internal constant { %struct.snd_soc_pcm_stream, [56 x i8] } { %struct.snd_soc_pcm_stream { ptr null, i64 4, i32 0, i32 8000, i32 8000, i32 1, i32 2, i32 0 }, [56 x i8] zeroinitializer }, align 32
@aries_dai = internal global { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [68 x i8] } { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.72, ptr @.str.73, ptr @aif1_cpus, i32 1, ptr @aif1_codecs, i32 1, ptr @aif1_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @aries_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.74, ptr @.str.75, ptr @baseband_cpus, i32 1, ptr @baseband_codecs, i32 1, ptr @baseband_platforms, i32 0, i32 0, ptr @baseband_params, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @aries_baseband_init, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.76, ptr @.str.77, ptr @bluetooth_cpus, i32 1, ptr @bluetooth_codecs, i32 1, ptr @bluetooth_platforms, i32 0, i32 0, ptr @bluetooth_params, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [68 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung-i2s\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Voice call\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-aif2\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt-sco-pcm\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-aif3\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aries-audio\00", [20 x i8] zeroinitializer }, align 32
@aries_modem_routes = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Modem RX\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Modem TX\00", [23 x i8] zeroinitializer }, align 32
@aries_modem_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Modem Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Modem Playback\00", [17 x i8] zeroinitializer }, align 32
@fascinate4g_variant = internal constant { %struct.aries_wm8994_variant, [24 x i8] } { %struct.aries_wm8994_variant { i32 17156, i8 0 }, [24 x i8] zeroinitializer }, align 32
@aries_variant = internal constant { %struct.aries_wm8994_variant, [24 x i8] } { %struct.aries_wm8994_variant { i32 4868, i8 1 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 8000, i64 11025]
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"aries_audio_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 679, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 681, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"samsung_wm8994_of_match\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 525, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [11 x i8] c"aries_card\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 501, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 567, i32 51 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 569, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 573, i32 54 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 575, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 579, i32 47 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 582, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 586, i32 35 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 590, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 593, i32 40 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 596, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 601, i32 47 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 604, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 611, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 616, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 618, i32 45 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 620, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 626, i32 43 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 630, i32 45 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 636, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant [16 x i8] c"aries_component\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 426, i32 46 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"aries_ext_dai\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 438, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 664, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 670, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 502, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"aries_controls\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 234, i32 38 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 346, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant [11 x i8] c"aries_dock\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 38, i32 28 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"dock_pins\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 40, i32 32 }
@___asan_gen_.226 = private unnamed_addr constant [28 x i8] c"aries_extcon_notifier_block\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 59, i32 30 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 364, i32 36 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"aries_headset\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 64, i32 28 }
@___asan_gen_.235 = private unnamed_addr constant [10 x i8] c"jack_pins\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 66, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant [14 x i8] c"headset_zones\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 76, i32 33 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 378, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 385, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 387, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c"headset_button_gpio\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 152, i32 33 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 42, i32 10 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 68, i32 10 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 71, i32 10 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 113, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 120, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 131, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 154, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 235, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 236, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 242, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 243, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 247, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 250, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 251, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 257, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [19 x i8] c"aries_dapm_widgets\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 239, i32 41 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 477, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 478, i32 18 }
@___asan_gen_.334 = private unnamed_addr constant [10 x i8] c"aif1_cpus\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [12 x i8] c"aif1_codecs\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [15 x i8] c"aif1_platforms\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [10 x i8] c"aries_ops\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 313, i32 33 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 485, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 486, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant [14 x i8] c"baseband_cpus\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [16 x i8] c"baseband_codecs\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [19 x i8] c"baseband_platforms\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [16 x i8] c"baseband_params\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 400, i32 40 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 493, i32 11 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 494, i32 18 }
@___asan_gen_.370 = private unnamed_addr constant [15 x i8] c"bluetooth_cpus\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"bluetooth_codecs\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c"bluetooth_platforms\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [17 x i8] c"bluetooth_params\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 408, i32 40 }
@___asan_gen_.382 = private unnamed_addr constant [10 x i8] c"aries_dai\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 475, i32 32 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 462, i32 1 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 467, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 471, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 427, i32 12 }
@___asan_gen_.406 = private unnamed_addr constant [19 x i8] c"aries_modem_routes\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 421, i32 40 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 417, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 418, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c"aries_modem_widgets\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 416, i32 41 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 422, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 423, i32 22 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c"fascinate4g_variant\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 513, i32 42 }
@___asan_gen_.427 = private unnamed_addr constant [14 x i8] c"aries_variant\00", align 1
@___asan_gen_.428 = private constant [36 x i8] c"../sound/soc/samsung/aries_wm8994.c\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 519, i32 42 }
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_aries_audio_driver_exit, ptr @__initcall__kmod_snd_soc_aries_wm8994__294_688_aries_audio_driver_init6, ptr @aries_audio_driver_exit, ptr @aries_audio_probe._entry, ptr @aries_audio_probe._entry.12, ptr @aries_audio_probe._entry.20, ptr @aries_audio_probe._entry.23, ptr @aries_audio_probe._entry.28, ptr @aries_audio_probe._entry.34, ptr @aries_audio_probe._entry.37, ptr @aries_audio_probe._entry.8, ptr @aries_audio_probe._entry_ptr, ptr @aries_audio_probe._entry_ptr.10, ptr @aries_audio_probe._entry_ptr.14, ptr @aries_audio_probe._entry_ptr.22, ptr @aries_audio_probe._entry_ptr.25, ptr @aries_audio_probe._entry_ptr.30, ptr @aries_audio_probe._entry_ptr.36, ptr @aries_audio_probe._entry_ptr.39, ptr @aries_late_probe._entry, ptr @aries_late_probe._entry.46, ptr @aries_late_probe._entry_ptr, ptr @aries_late_probe._entry_ptr.48, ptr @headset_det_irq_thread._entry, ptr @headset_det_irq_thread._entry.54, ptr @headset_det_irq_thread._entry.57, ptr @headset_det_irq_thread._entry_ptr, ptr @headset_det_irq_thread._entry_ptr.56, ptr @headset_det_irq_thread._entry_ptr.59, ptr @aries_audio_driver, ptr @.str, ptr @samsung_wm8994_of_match, ptr @aries_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @aries_component, ptr @aries_ext_dai, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @aries_controls, ptr @.str.41, ptr @aries_dock, ptr @dock_pins, ptr @aries_extcon_notifier_block, ptr @.str.42, ptr @aries_headset, ptr @jack_pins, ptr @headset_zones, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @headset_button_gpio, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @aries_dapm_widgets, ptr @.str.72, ptr @.str.73, ptr @aif1_cpus, ptr @aif1_codecs, ptr @aif1_platforms, ptr @aries_ops, ptr @.str.74, ptr @.str.75, ptr @baseband_cpus, ptr @baseband_codecs, ptr @baseband_platforms, ptr @baseband_params, ptr @.str.76, ptr @.str.77, ptr @bluetooth_cpus, ptr @bluetooth_codecs, ptr @bluetooth_platforms, ptr @bluetooth_params, ptr @aries_dai, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @aries_modem_routes, ptr @.str.86, ptr @.str.87, ptr @aries_modem_widgets, ptr @.str.89, ptr @.str.90, ptr @fascinate4g_variant, ptr @aries_variant], section "llvm.metadata"
@0 = internal global [112 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_wm8994_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_ext_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_audio_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_dock to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dock_pins to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_extcon_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_headset to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jack_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_zones to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_late_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_late_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_button_gpio to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_det_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_det_irq_thread._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_det_irq_thread._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_dapm_widgets to i32), i32 1980, i32 2464, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @baseband_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluetooth_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluetooth_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluetooth_platforms to i32), i32 0, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bluetooth_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_dai to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_modem_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_modem_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fascinate4g_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aries_variant to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_audio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aries_audio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aries_audio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @aries_audio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_audio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i238 = alloca %struct.of_phandle_args, align 4
  %args.i232 = alloca %struct.of_phandle_args, align 4
  %args.i226 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @aries_card, i32 0, i32 5), align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @aries_card, i32 0, i32 57), align 4
  %call7 = tail call ptr @of_match_node(ptr noundef nonnull @samsung_wm8994_of_match, ptr noundef nonnull %1) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %variant = getelementptr inbounds %struct.aries_wm8994_data, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %variant, align 4
  %has_fm_radio = getelementptr inbounds %struct.aries_wm8994_variant, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %has_fm_radio to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_fm_radio, align 4, !range !223
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.then10, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @aries_card, i32 0, i32 36), align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @aries_card, i32 0, i32 36), align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end6.if.end11_crit_edge
  %call12 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %reg_main_micbias = getelementptr inbounds %struct.aries_wm8994_data, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg_main_micbias to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %reg_main_micbias, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %9 = ptrtoint ptr %reg_main_micbias to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_main_micbias, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #6
  %reg_headset_micbias = getelementptr inbounds %struct.aries_wm8994_data, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %reg_headset_micbias to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %reg_headset_micbias, align 4
  %cmp.i219 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %13 = ptrtoint ptr %reg_headset_micbias to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_headset_micbias, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 3) #6
  %gpio_earpath_sel = getelementptr inbounds %struct.aries_wm8994_data, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %gpio_earpath_sel to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %gpio_earpath_sel, align 4
  %cmp.i220 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  %17 = ptrtoint ptr %gpio_earpath_sel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_earpath_sel, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %20 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i221 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %tobool.not.i = icmp eq i32 %call.i221, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.of_parse_phandle.exit_crit_edge

if.end38.of_parse_phandle.exit_crit_edge:         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %if.end38.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ null, %if.end38.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %call40 = call ptr @extcon_find_edev_by_node(ptr noundef %retval.0.i) #6
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call40, ptr %call.i, align 4
  %cmp.i222 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then43, label %if.end47

if.then43:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call40 to i32
  %call46 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %24, ptr noundef nonnull @.str.16) #6
  br label %cleanup

if.end47:                                         ; preds = %of_parse_phandle.exit
  call void @of_node_put(ptr noundef %retval.0.i) #6
  %call48 = call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.17) #6
  %adc = getelementptr inbounds %struct.aries_wm8994_data, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %adc to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call48, ptr %adc, align 4
  %cmp.i223 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call48 to i32
  %call54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %26, ptr noundef nonnull @.str.18) #6
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %channel = getelementptr inbounds %struct.iio_channel, ptr %call48, i32 0, i32 1
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %channel, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not = icmp eq i32 %30, 0
  br i1 %cmp.not, label %if.end58, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58:                                         ; preds = %if.end55
  %call59 = call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef 1) #6
  %gpio_headset_key = getelementptr inbounds %struct.aries_wm8994_data, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %gpio_headset_key to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call59, ptr %gpio_headset_key, align 4
  %cmp.i224 = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %do.end65, label %if.end68

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  %32 = ptrtoint ptr %gpio_headset_key to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gpio_headset_key, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup

if.end68:                                         ; preds = %if.end58
  %call69 = call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 1) #6
  %gpio_headset_detect = getelementptr inbounds %struct.aries_wm8994_data, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call69, ptr %gpio_headset_detect, align 4
  %cmp.i225 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %do.end75, label %if.end78

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #9
  %36 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpio_headset_detect, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.end68
  %call79 = call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @aries_card, ptr noundef nonnull @.str.26) #6
  %call80 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull @aries_card, ptr noundef nonnull @.str.27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %do.end85, label %if.end86

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end86:                                         ; preds = %if.end78
  %39 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %variant, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  store i32 %42, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @aries_dai, i32 0, i32 1, i32 11), align 4
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %call89 = call ptr @of_get_child_by_name(ptr noundef %44, ptr noundef nonnull @.str.31) #6
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %if.end86.cleanup_crit_edge, label %if.end92

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end92:                                         ; preds = %if.end86
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %call94 = call ptr @of_get_child_by_name(ptr noundef %46, ptr noundef nonnull @.str.32) #6
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.end92.cleanup_crit_edge, label %for.cond.preheader

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end92
  %47 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @aries_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp98244 = icmp sgt i32 %47, 0
  br i1 %cmp98244, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond:                                         ; preds = %of_parse_phandle.exit231
  %inc = add nuw nsw i32 %i.0245, 1
  %48 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @aries_card, i32 0, i32 25), align 4
  %cmp98 = icmp slt i32 %inc, %48
  br i1 %cmp98, label %for.cond.land.rhs_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0245 = phi i32 [ %inc, %for.cond.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %49 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @aries_card, i32 0, i32 24), align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %49, i32 %i.0245
  %tobool100.not = icmp eq ptr %arrayidx, null
  br i1 %tobool100.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i226) #6
  %50 = call ptr @memset(ptr %args.i226, i32 255, i32 72)
  %call.i227 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call94, ptr noundef nonnull @.str.33, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i226) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i228, label %if.end.i229, label %for.body.of_parse_phandle.exit231_crit_edge

for.body.of_parse_phandle.exit231_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit231

if.end.i229:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %args.i226 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %args.i226, align 4
  br label %of_parse_phandle.exit231

of_parse_phandle.exit231:                         ; preds = %if.end.i229, %for.body.of_parse_phandle.exit231_crit_edge
  %retval.0.i230 = phi ptr [ %52, %if.end.i229 ], [ null, %for.body.of_parse_phandle.exit231_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i226) #6
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %49, i32 %i.0245, i32 4
  %53 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %codecs, align 4
  %of_node102 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %of_node102 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i230, ptr %of_node102, align 4
  %56 = load ptr, ptr %codecs, align 4
  %of_node104 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %of_node104 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %of_node104, align 4
  %tobool105.not = icmp eq ptr %58, null
  br i1 %tobool105.not, label %of_parse_phandle.exit231.out_crit_edge, label %for.cond

of_parse_phandle.exit231.out_crit_edge:           ; preds = %of_parse_phandle.exit231
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i232) #6
  %59 = call ptr @memset(ptr %args.i232, i32 255, i32 72)
  %call.i233 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call89, ptr noundef nonnull @.str.33, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i232) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i233)
  %tobool.not.i234 = icmp eq i32 %call.i233, 0
  br i1 %tobool.not.i234, label %if.end.i235, label %for.end.of_parse_phandle.exit237_crit_edge

for.end.of_parse_phandle.exit237_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit237

if.end.i235:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %args.i232 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %args.i232, align 4
  br label %of_parse_phandle.exit237

of_parse_phandle.exit237:                         ; preds = %if.end.i235, %for.end.of_parse_phandle.exit237_crit_edge
  %retval.0.i236 = phi ptr [ %61, %if.end.i235 ], [ null, %for.end.of_parse_phandle.exit237_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i232) #6
  %62 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @aries_dai, i32 0, i32 0, i32 2), align 4
  %of_node109 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %of_node109 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %retval.0.i236, ptr %of_node109, align 4
  %64 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @aries_dai, i32 0, i32 0, i32 2), align 4
  %of_node110 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %of_node110 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node110, align 4
  %tobool111.not = icmp eq ptr %66, null
  br i1 %tobool111.not, label %of_parse_phandle.exit237.out_crit_edge, label %if.end113

of_parse_phandle.exit237.out_crit_edge:           ; preds = %of_parse_phandle.exit237
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end113:                                        ; preds = %of_parse_phandle.exit237
  %67 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @aries_dai, i32 0, i32 0, i32 6), align 4
  %of_node115 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %of_node115 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %of_node115, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i238) #6
  %69 = call ptr @memset(ptr %args.i238, i32 255, i32 72)
  %call.i239 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call89, ptr noundef nonnull @.str.33, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i238) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool.not.i240 = icmp eq i32 %call.i239, 0
  br i1 %tobool.not.i240, label %if.end.i241, label %if.end113.of_parse_phandle.exit243_crit_edge

if.end113.of_parse_phandle.exit243_crit_edge:     ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit243

if.end.i241:                                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %args.i238 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %args.i238, align 4
  br label %of_parse_phandle.exit243

of_parse_phandle.exit243:                         ; preds = %if.end.i241, %if.end113.of_parse_phandle.exit243_crit_edge
  %retval.0.i242 = phi ptr [ %71, %if.end.i241 ], [ null, %if.end113.of_parse_phandle.exit243_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i238) #6
  %72 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @aries_dai, i32 0, i32 2, i32 2), align 4
  %of_node117 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %of_node117 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %retval.0.i242, ptr %of_node117, align 4
  %74 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @aries_dai, i32 0, i32 2, i32 2), align 4
  %of_node118 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %of_node118 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %of_node118, align 4
  %tobool119.not = icmp eq ptr %76, null
  br i1 %tobool119.not, label %of_parse_phandle.exit243.out_crit_edge, label %if.end121

of_parse_phandle.exit243.out_crit_edge:           ; preds = %of_parse_phandle.exit243
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end121:                                        ; preds = %of_parse_phandle.exit243
  %call122 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @aries_component, ptr noundef nonnull @aries_ext_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %do.end127, label %if.end128

do.end127:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call122) #9
  br label %out

if.end128:                                        ; preds = %if.end121
  %call129 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @aries_card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end128.out_crit_edge, label %do.end134

if.end128.out_crit_edge:                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end134:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %call129) #9
  br label %out

out:                                              ; preds = %do.end134, %if.end128.out_crit_edge, %do.end127, %of_parse_phandle.exit243.out_crit_edge, %of_parse_phandle.exit237.out_crit_edge, %of_parse_phandle.exit231.out_crit_edge
  %ret.0 = phi i32 [ %call122, %do.end127 ], [ %call129, %do.end134 ], [ 0, %if.end128.out_crit_edge ], [ -22, %of_parse_phandle.exit237.out_crit_edge ], [ -22, %of_parse_phandle.exit243.out_crit_edge ], [ -22, %of_parse_phandle.exit231.out_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call89) #6
  call void @of_node_put(ptr noundef nonnull %call94) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end92.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %do.end85, %do.end75, %do.end65, %if.end55.cleanup_crit_edge, %if.then51, %if.then43, %do.end35, %do.end25, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ %15, %do.end25 ], [ %19, %do.end35 ], [ %call46, %if.then43 ], [ %call54, %if.then51 ], [ %34, %do.end65 ], [ %38, %do.end75 ], [ %call80, %do.end85 ], [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end55.cleanup_crit_edge ], [ -22, %if.end86.cleanup_crit_edge ], [ -22, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_find_edev_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_late_probe(ptr noundef %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %call1 = tail call i32 @snd_soc_card_jack_new(ptr noundef %card, ptr noundef nonnull @.str.41, i32 noundef 4, ptr noundef nonnull @aries_dock, ptr noundef nonnull @dock_pins, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @devm_extcon_register_notifier(ptr noundef %3, ptr noundef %5, i32 noundef 23, ptr noundef nonnull @aries_extcon_notifier_block) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call7 = tail call i32 @extcon_get_state(ptr noundef %7, i32 noundef 23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp sgt i32 %call7, 0
  %. = select i1 %cmp, i32 4, i32 0
  tail call void @snd_soc_jack_report(ptr noundef nonnull @aries_dock, i32 noundef %., i32 noundef 4) #6
  %call10 = tail call i32 @snd_soc_card_jack_new(ptr noundef %card, ptr noundef nonnull @.str.42, i32 noundef 16387, ptr noundef nonnull @aries_headset, ptr noundef nonnull @jack_pins, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i32 @snd_soc_jack_add_zones(ptr noundef nonnull @aries_headset, i32 noundef 3, ptr noundef nonnull @headset_zones) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %gpio_headset_detect = getelementptr inbounds %struct.aries_wm8994_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_headset_detect, align 4
  %call18 = tail call i32 @gpiod_to_irq(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br i1 %cmp19, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.43) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call24 = tail call i32 @devm_request_threaded_irq(ptr noundef %11, i32 noundef %call18, ptr noundef null, ptr noundef nonnull @headset_det_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.45, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.47) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %1, ptr getelementptr inbounds ([1 x %struct.snd_soc_jack_gpio], ptr @headset_button_gpio, i32 0, i32 0, i32 12), align 4
  %gpio_headset_key = getelementptr inbounds %struct.aries_wm8994_data, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %gpio_headset_key to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_headset_key, align 4
  store ptr %15, ptr getelementptr inbounds ([1 x %struct.snd_soc_jack_gpio], ptr @headset_button_gpio, i32 0, i32 0, i32 11), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_jack, ptr @aries_headset, i32 0, i32 1), align 4
  %call32 = tail call i32 @snd_jack_set_key(ptr noundef %16, i32 noundef 16384, i32 noundef 226) #6
  %call33 = tail call i32 @snd_soc_jack_add_gpios(ptr noundef nonnull @aries_headset, i32 noundef 1, ptr noundef nonnull @headset_button_gpio) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end29, %do.end, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call24, %do.end29 ], [ %call33, %if.end31 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call10, %if.end5.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_zones(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headset_det_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %adc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adc) #6
  %0 = ptrtoint ptr %adc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %adc, align 4, !annotation !224
  %gpio_headset_detect = getelementptr inbounds %struct.aries_wm8994_data, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gpio_headset_detect, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.end.13.if.then_crit_edge, %if.end.12.if.then_crit_edge, %if.end.11.if.then_crit_edge, %if.end.10.if.then_crit_edge, %if.end.9.if.then_crit_edge, %if.end.8.if.then_crit_edge, %if.end.7.if.then_crit_edge, %if.end.6.if.then_crit_edge, %if.end.5.if.then_crit_edge, %if.end.4.if.then_crit_edge, %if.end.3.if.then_crit_edge, %if.end.2.if.then_crit_edge, %if.end.1.if.then_crit_edge, %if.end.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @snd_soc_jack_report(ptr noundef nonnull @aries_headset, i32 noundef 0, i32 noundef 3) #6
  %gpio_earpath_sel = getelementptr inbounds %struct.aries_wm8994_data, ptr %data, i32 0, i32 5
  %3 = ptrtoint ptr %gpio_earpath_sel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_earpath_sel, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 0) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #6
  %5 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpio_headset_detect, align 4
  %call.1 = tail call i32 @gpiod_get_value(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 20) #6
  %7 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_headset_detect, align 4
  %call.2 = tail call i32 @gpiod_get_value(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.1.if.then_crit_edge, label %if.end.2

if.end.1.if.then_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 20) #6
  %9 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpio_headset_detect, align 4
  %call.3 = tail call i32 @gpiod_get_value(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %if.end.2.if.then_crit_edge, label %if.end.3

if.end.2.if.then_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 20) #6
  %11 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_headset_detect, align 4
  %call.4 = tail call i32 @gpiod_get_value(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %if.end.3.if.then_crit_edge, label %if.end.4

if.end.3.if.then_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 20) #6
  %13 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_headset_detect, align 4
  %call.5 = tail call i32 @gpiod_get_value(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %if.end.4.if.then_crit_edge, label %if.end.5

if.end.4.if.then_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 20) #6
  %15 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_headset_detect, align 4
  %call.6 = tail call i32 @gpiod_get_value(ptr noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %if.end.5.if.then_crit_edge, label %if.end.6

if.end.5.if.then_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 20) #6
  %17 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_headset_detect, align 4
  %call.7 = tail call i32 @gpiod_get_value(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %if.end.6.if.then_crit_edge, label %if.end.7

if.end.6.if.then_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 20) #6
  %19 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpio_headset_detect, align 4
  %call.8 = tail call i32 @gpiod_get_value(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %if.end.7.if.then_crit_edge, label %if.end.8

if.end.7.if.then_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 20) #6
  %21 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpio_headset_detect, align 4
  %call.9 = tail call i32 @gpiod_get_value(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %if.end.8.if.then_crit_edge, label %if.end.9

if.end.8.if.then_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.9:                                         ; preds = %if.end.8
  tail call void @msleep(i32 noundef 20) #6
  %23 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpio_headset_detect, align 4
  %call.10 = tail call i32 @gpiod_get_value(ptr noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.10)
  %tobool.not.10 = icmp eq i32 %call.10, 0
  br i1 %tobool.not.10, label %if.end.9.if.then_crit_edge, label %if.end.10

if.end.9.if.then_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.10:                                        ; preds = %if.end.9
  tail call void @msleep(i32 noundef 20) #6
  %25 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpio_headset_detect, align 4
  %call.11 = tail call i32 @gpiod_get_value(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.11)
  %tobool.not.11 = icmp eq i32 %call.11, 0
  br i1 %tobool.not.11, label %if.end.10.if.then_crit_edge, label %if.end.11

if.end.10.if.then_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.11:                                        ; preds = %if.end.10
  tail call void @msleep(i32 noundef 20) #6
  %27 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpio_headset_detect, align 4
  %call.12 = tail call i32 @gpiod_get_value(ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.12)
  %tobool.not.12 = icmp eq i32 %call.12, 0
  br i1 %tobool.not.12, label %if.end.11.if.then_crit_edge, label %if.end.12

if.end.11.if.then_crit_edge:                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.12:                                        ; preds = %if.end.11
  tail call void @msleep(i32 noundef 20) #6
  %29 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpio_headset_detect, align 4
  %call.13 = tail call i32 @gpiod_get_value(ptr noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.13)
  %tobool.not.13 = icmp eq i32 %call.13, 0
  br i1 %tobool.not.13, label %if.end.12.if.then_crit_edge, label %if.end.13

if.end.12.if.then_crit_edge:                      ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.13:                                        ; preds = %if.end.12
  tail call void @msleep(i32 noundef 20) #6
  %31 = ptrtoint ptr %gpio_headset_detect to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpio_headset_detect, align 4
  %call.14 = tail call i32 @gpiod_get_value(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.14)
  %tobool.not.14 = icmp eq i32 %call.14, 0
  br i1 %tobool.not.14, label %if.end.13.if.then_crit_edge, label %if.end.14

if.end.13.if.then_crit_edge:                      ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.14:                                        ; preds = %if.end.13
  tail call void @msleep(i32 noundef 20) #6
  %reg_headset_micbias = getelementptr inbounds %struct.aries_wm8994_data, ptr %data, i32 0, i32 2
  %33 = ptrtoint ptr %reg_headset_micbias to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_headset_micbias, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.14.if.end5_crit_edge, label %do.end

if.end.14.if.end5_crit_edge:                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %call1) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.14.if.end5_crit_edge
  %gpio_earpath_sel6 = getelementptr inbounds %struct.aries_wm8994_data, ptr %data, i32 0, i32 5
  %35 = ptrtoint ptr %gpio_earpath_sel6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gpio_earpath_sel6, align 4
  tail call void @gpiod_set_value(ptr noundef %36, i32 noundef 1) #6
  %adc7 = getelementptr inbounds %struct.aries_wm8994_data, ptr %data, i32 0, i32 6
  %37 = ptrtoint ptr %adc7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adc7, align 4
  %call8 = call i32 @iio_read_channel_processed(ptr noundef %38, ptr noundef nonnull %adc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.else

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53) #9
  br label %if.end17

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %adc, align 4
  %call16 = call i32 @snd_soc_jack_get_type(ptr noundef nonnull @aries_headset, i32 noundef %40) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else, %do.end13
  %call16.sink = phi i32 [ %call16, %if.else ], [ 1, %do.end13 ]
  call void @snd_soc_jack_report(ptr noundef nonnull @aries_headset, i32 noundef %call16.sink, i32 noundef 3) #6
  %41 = ptrtoint ptr %reg_headset_micbias to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_headset_micbias, align 4
  %call19 = call i32 @regulator_disable(ptr noundef %42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end17.if.end27_crit_edge, label %do.end24

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef %call19) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end17.if.end27_crit_edge
  %43 = load i32, ptr getelementptr inbounds (%struct.snd_soc_jack, ptr @aries_headset, i32 0, i32 4), align 4
  %and = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.then29, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %gpio_earpath_sel6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gpio_earpath_sel6, align 4
  call void @gpiod_set_value(ptr noundef %45, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.end27.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adc) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_add_gpios(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_extcon_notifier(ptr nocapture noundef readnone %this, i32 noundef %connected, ptr nocapture noundef readnone %_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connected)
  %tobool.not = icmp eq i32 %connected, 0
  %. = select i1 %tobool.not, i32 0, i32 4
  tail call void @snd_soc_jack_report(ptr noundef nonnull @aries_dock, i32 noundef %., i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_jack_get_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headset_button_check(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_headset_key = getelementptr inbounds %struct.aries_wm8994_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %gpio_headset_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_headset_key, align 4
  %call = tail call i32 @gpiod_get_value_cansleep(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds (%struct.snd_soc_jack, ptr @aries_headset, i32 0, i32 4), align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 16384, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_spk_cfg(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dai_link, align 4
  %call = tail call ptr @snd_soc_get_pcm_runtime(ptr noundef %3, ptr noundef %5) #6
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %call, i32 0, i32 11
  %8 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cpus, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %component3 = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %component3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %component3, align 4
  %14 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb5
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb5 ], [ 128, %entry.sw.epilog.sink.split_crit_edge ]
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %13, i32 noundef 1056, i32 noundef 128, i32 noundef %.sink) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call6, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_main_bias(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_main_micbias = getelementptr inbounds %struct.aries_wm8994_data, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %reg_main_micbias to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_main_micbias, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %8) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_main_micbias4 = getelementptr inbounds %struct.aries_wm8994_data, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %reg_main_micbias4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_main_micbias4, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %10) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call5, %sw.bb3 ], [ %call2, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_headset_bias(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_headset_micbias = getelementptr inbounds %struct.aries_wm8994_data, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %reg_headset_micbias to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_headset_micbias, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %8) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_headset_micbias4 = getelementptr inbounds %struct.aries_wm8994_data, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %reg_headset_micbias4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_headset_micbias4, align 4
  %call5 = tail call i32 @regulator_disable(ptr noundef %10) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call5, %sw.bb3 ], [ %call2, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_get_pcm_runtime(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_baseband_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call = tail call i32 @snd_soc_dai_set_pll(ptr noundef %5, i32 noundef 2, i32 noundef 1, i32 noundef 24000000, i32 noundef 4096000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 4, i32 noundef 4096000, i32 noundef 0) #6
  %6 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %entry.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !225
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call1.i)
  %cmp = icmp eq i32 %call1.i, 24
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i32 %14, 384
  br label %if.end12

if.else:                                          ; preds = %params_width.exit
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %14, label %if.else9 [
    i32 8000, label %if.else.if.then6_crit_edge
    i32 11025, label %if.else.if.then6_crit_edge39
  ]

if.else.if.then6_crit_edge39:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %if.else.if.then6_crit_edge, %if.else.if.then6_crit_edge39
  %mul8 = shl nuw nsw i32 %14, 9
  br label %if.end12

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %mul11 = shl i32 %14, 8
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6, %if.then
  %pll_out.0 = phi i32 [ %mul, %if.then ], [ %mul8, %if.then6 ], [ %mul11, %if.else9 ]
  %call13 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %7, i32 noundef 1, i32 noundef 1, i32 noundef 24000000, i32 noundef %pll_out.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 3, i32 noundef %pll_out.0, i32 noundef 0) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %call17, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12.cleanup_crit_edge ], [ %16, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aries_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 1, i32 noundef 24000000, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %7, i32 noundef 1, i32 noundef 1, i32 noundef 24000000, i32 noundef 0) #6
  %8 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 112)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !66, !68, !70, !71, !72, !74, !75, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !132, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !169, !170, !171, !172, !174, !176, !177, !178, !179, !180, !182, !184, !185, !186, !187, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__initcall__kmod_snd_soc_aries_wm8994__294_688_aries_audio_driver_init6, !1, !"__initcall__kmod_snd_soc_aries_wm8994__294_688_aries_audio_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 688, i32 1}
!2 = !{ptr @__exitcall_aries_audio_driver_exit, !1, !"__exitcall_aries_audio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 690, i32 1}
!5 = !{ptr @__UNIQUE_ID_file296, !6, !"__UNIQUE_ID_file296", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 691, i32 1}
!7 = !{ptr @__UNIQUE_ID_license297, !6, !"__UNIQUE_ID_license297", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias298, !9, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!9 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 692, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 681, i32 11}
!12 = !{ptr @aries_audio_driver, !13, !"aries_audio_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 679, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 567, i32 51}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 569, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @aries_audio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @aries_audio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 573, i32 54}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 575, i32 3}
!28 = !{ptr @aries_audio_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @aries_audio_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 579, i32 47}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 582, i32 3}
!34 = !{ptr @aries_audio_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @aries_audio_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 586, i32 35}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 590, i32 10}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 593, i32 40}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 596, i32 10}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 601, i32 47}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 604, i32 3}
!48 = !{ptr @aries_audio_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @aries_audio_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 611, i32 3}
!52 = !{ptr @aries_audio_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @aries_audio_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 616, i32 35}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 618, i32 45}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 620, i32 3}
!60 = !{ptr @aries_audio_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @aries_audio_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 626, i32 43}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 630, i32 45}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 636, i32 5}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 664, i32 3}
!70 = !{ptr @aries_audio_probe._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @aries_audio_probe._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 670, i32 3}
!74 = !{ptr @aries_audio_probe._entry.37, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @aries_audio_probe._entry_ptr.39, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 502, i32 10}
!78 = !{ptr @aries_card, !79, !"aries_card", i1 false, i1 false}
!79 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 501, i32 28}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 346, i32 36}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 364, i32 36}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 378, i32 3}
!86 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @aries_late_probe._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @aries_late_probe._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 385, i32 18}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 387, i32 3}
!93 = !{ptr @aries_late_probe._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @aries_late_probe._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @aries_dock, !96, !"aries_dock", i1 false, i1 false}
!96 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 38, i32 28}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 42, i32 10}
!99 = !{ptr @dock_pins, !100, !"dock_pins", i1 false, i1 false}
!100 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 40, i32 32}
!101 = !{ptr @aries_extcon_notifier_block, !102, !"aries_extcon_notifier_block", i1 false, i1 false}
!102 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 59, i32 30}
!103 = !{ptr @aries_headset, !104, !"aries_headset", i1 false, i1 false}
!104 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 64, i32 28}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 68, i32 10}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 71, i32 10}
!109 = !{ptr @jack_pins, !110, !"jack_pins", i1 false, i1 false}
!110 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 66, i32 32}
!111 = !{ptr @headset_zones, !112, !"headset_zones", i1 false, i1 false}
!112 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 76, i32 33}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 113, i32 3}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @headset_det_irq_thread._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @headset_det_irq_thread._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 120, i32 3}
!120 = !{ptr @headset_det_irq_thread._entry.54, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @headset_det_irq_thread._entry_ptr.56, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 131, i32 3}
!124 = !{ptr @headset_det_irq_thread._entry.57, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @headset_det_irq_thread._entry_ptr.59, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 154, i32 11}
!128 = !{ptr @headset_button_gpio, !129, !"headset_button_gpio", i1 false, i1 false}
!129 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 152, i32 33}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 235, i32 2}
!132 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 236, i32 2}
!135 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @aries_controls, !137, !"aries_controls", i1 false, i1 false}
!137 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 234, i32 38}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 242, i32 2}
!140 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 243, i32 2}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 247, i32 2}
!144 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 250, i32 2}
!146 = !{ptr @.str.69, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 251, i32 2}
!148 = !{ptr @.str.70, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 257, i32 2}
!150 = !{ptr @aries_dapm_widgets, !151, !"aries_dapm_widgets", i1 false, i1 false}
!151 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 239, i32 41}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 477, i32 11}
!154 = !{ptr @.str.73, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 478, i32 18}
!156 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 485, i32 11}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 486, i32 18}
!160 = !{ptr @.str.76, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 493, i32 11}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 494, i32 18}
!164 = !{ptr @aries_dai, !165, !"aries_dai", i1 false, i1 false}
!165 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 475, i32 32}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 462, i32 1}
!168 = !{ptr @aif1_cpus, !167, !"aif1_cpus", i1 false, i1 false}
!169 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @aif1_codecs, !167, !"aif1_codecs", i1 false, i1 false}
!171 = !{ptr @aif1_platforms, !167, !"aif1_platforms", i1 false, i1 false}
!172 = !{ptr @aries_ops, !173, !"aries_ops", i1 false, i1 false}
!173 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 313, i32 33}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 467, i32 1}
!176 = !{ptr @baseband_cpus, !175, !"baseband_cpus", i1 false, i1 false}
!177 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @baseband_codecs, !175, !"baseband_codecs", i1 false, i1 false}
!179 = !{ptr @baseband_platforms, !175, !"baseband_platforms", i1 false, i1 false}
!180 = !{ptr @baseband_params, !181, !"baseband_params", i1 false, i1 false}
!181 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 400, i32 40}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 471, i32 1}
!184 = !{ptr @bluetooth_cpus, !183, !"bluetooth_cpus", i1 false, i1 false}
!185 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @bluetooth_codecs, !183, !"bluetooth_codecs", i1 false, i1 false}
!187 = !{ptr @bluetooth_platforms, !183, !"bluetooth_platforms", i1 false, i1 false}
!188 = !{ptr @bluetooth_params, !189, !"bluetooth_params", i1 false, i1 false}
!189 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 408, i32 40}
!190 = !{ptr @.str.85, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 427, i32 12}
!192 = !{ptr @aries_component, !193, !"aries_component", i1 false, i1 false}
!193 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 426, i32 46}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 417, i32 2}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 418, i32 2}
!198 = !{ptr @aries_modem_widgets, !199, !"aries_modem_widgets", i1 false, i1 false}
!199 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 416, i32 41}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 422, i32 4}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 423, i32 22}
!204 = !{ptr @aries_modem_routes, !205, !"aries_modem_routes", i1 false, i1 false}
!205 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 421, i32 40}
!206 = !{ptr @aries_ext_dai, !207, !"aries_ext_dai", i1 false, i1 false}
!207 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 438, i32 34}
!208 = !{ptr @samsung_wm8994_of_match, !209, !"samsung_wm8994_of_match", i1 false, i1 false}
!209 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 525, i32 34}
!210 = !{ptr @fascinate4g_variant, !211, !"fascinate4g_variant", i1 false, i1 false}
!211 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 513, i32 42}
!212 = !{ptr @aries_variant, !213, !"aries_variant", i1 false, i1 false}
!213 = !{!"../sound/soc/samsung/aries_wm8994.c", i32 519, i32 42}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i8 0, i8 2}
!224 = !{!"auto-init"}
!225 = !{i32 0, i32 33}
