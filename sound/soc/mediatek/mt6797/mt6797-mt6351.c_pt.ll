; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt6797/mt6797-mt6351.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt6797/mt6797-mt6351.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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

@__initcall__kmod_mt6797_mt6351__238_253_mt6797_mt6351_driver_init6 = internal global ptr @mt6797_mt6351_driver_init, section ".initcall6.init", align 4
@mt6797_mt6351_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6797_mt6351_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6797_mt6351_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6797_mt6351_driver_exit = internal global ptr @mt6797_mt6351_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [64 x i8] c"mt6797_mt6351.description=MT6797 MT6351 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [68 x i8] c"mt6797_mt6351.author=KaiChieh Chuang <kaichieh.chuang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [59 x i8] c"mt6797_mt6351.file=sound/soc/mediatek/mt6797/mt6797-mt6351\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [29 x i8] c"mt6797_mt6351.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [43 x i8] c"mt6797_mt6351.alias=mt6797 mt6351 soc card\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt6797-mt6351\00", [18 x i8] zeroinitializer }, align 32
@mt6797_mt6351_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-mt6351-sound\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6797_mt6351_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt6797_mt6351_dai_links, i32 12, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt6797_mt6351_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt6797_mt6351_dev_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sound/soc/mediatek/mt6797/mt6797-mt6351.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6797_mt6351_dev_probe._entry_ptr = internal global ptr @mt6797_mt6351_dev_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,audio-codec\00", [43 x i8] zeroinitializer }, align 32
@mt6797_mt6351_dev_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Property 'audio-codec' missing or invalid\0A\00", [53 x i8] zeroinitializer }, align 32
@mt6797_mt6351_dev_probe._entry_ptr.10 = internal global ptr @mt6797_mt6351_dev_probe._entry.8, section ".printk_index", align 4
@mt6797_mt6351_dev_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 231, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s snd_soc_register_card fail %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mt6797_mt6351_dev_probe._entry_ptr.13 = internal global ptr @mt6797_mt6351_dev_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_1\00", [21 x i8] zeroinitializer }, align 32
@playback_1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.27 }], [20 x i8] zeroinitializer }, align 32
@playback_1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@playback_1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_2\00", [21 x i8] zeroinitializer }, align 32
@playback_2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.30 }], [20 x i8] zeroinitializer }, align 32
@playback_2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@playback_2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_3\00", [21 x i8] zeroinitializer }, align 32
@playback_3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.31 }], [20 x i8] zeroinitializer }, align 32
@playback_3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@playback_3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_1\00", [22 x i8] zeroinitializer }, align 32
@capture_1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.32 }], [20 x i8] zeroinitializer }, align 32
@capture_1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@capture_1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_2\00", [22 x i8] zeroinitializer }, align 32
@capture_2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.33 }], [20 x i8] zeroinitializer }, align 32
@capture_2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@capture_2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_3\00", [22 x i8] zeroinitializer }, align 32
@capture_3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.34 }], [20 x i8] zeroinitializer }, align 32
@capture_3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@capture_3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture_Mono_1\00", [17 x i8] zeroinitializer }, align 32
@capture_mono_1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.35 }], [20 x i8] zeroinitializer }, align 32
@capture_mono_1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@capture_mono_1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Hostless_LPBK\00", [18 x i8] zeroinitializer }, align 32
@hostless_lpbk_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.36 }], [20 x i8] zeroinitializer }, align 32
@hostless_lpbk_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@hostless_lpbk_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Hostless_Speech\00", [16 x i8] zeroinitializer }, align 32
@hostless_speech_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@hostless_speech_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@hostless_speech_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Primary Codec\00", [18 x i8] zeroinitializer }, align 32
@primary_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.38 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.39 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 1\00", [26 x i8] zeroinitializer }, align 32
@pcm1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.24 }], [20 x i8] zeroinitializer }, align 32
@pcm1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@pcm1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 2\00", [26 x i8] zeroinitializer }, align 32
@pcm2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.25 }], [20 x i8] zeroinitializer }, align 32
@pcm2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.28, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@pcm2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt6797_mt6351_dai_links = internal global { [12 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [336 x i8] } { [12 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.14, ptr @.str.14, ptr @playback_1_cpus, i32 1, ptr @playback_1_codecs, i32 1, ptr @playback_1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.15, ptr @.str.15, ptr @playback_2_cpus, i32 1, ptr @playback_2_codecs, i32 1, ptr @playback_2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.16, ptr @.str.16, ptr @playback_3_cpus, i32 1, ptr @playback_3_codecs, i32 1, ptr @playback_3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.17, ptr @.str.17, ptr @capture_1_cpus, i32 1, ptr @capture_1_codecs, i32 1, ptr @capture_1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.18, ptr @.str.18, ptr @capture_2_cpus, i32 1, ptr @capture_2_codecs, i32 1, ptr @capture_2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.19, ptr @.str.19, ptr @capture_3_cpus, i32 1, ptr @capture_3_codecs, i32 1, ptr @capture_3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.20, ptr @.str.20, ptr @capture_mono_1_cpus, i32 1, ptr @capture_mono_1_codecs, i32 1, ptr @capture_mono_1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.21, ptr @.str.21, ptr @hostless_lpbk_cpus, i32 1, ptr @hostless_lpbk_codecs, i32 1, ptr @hostless_lpbk_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 -32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.22, ptr @.str.22, ptr @hostless_speech_cpus, i32 1, ptr @hostless_speech_codecs, i32 1, ptr @hostless_speech_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 16, i8 -32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.23, ptr null, ptr @primary_codec_cpus, i32 1, ptr @primary_codec_codecs, i32 1, ptr @primary_codec_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.24, ptr null, ptr @pcm1_cpus, i32 1, ptr @pcm1_codecs, i32 1, ptr @pcm1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.25, ptr null, ptr @pcm2_cpus, i32 1, ptr @pcm2_codecs, i32 1, ptr @pcm2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }], [336 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_1\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hostless LPBK DAI\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Hostless Speech DAI\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADDA\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6351-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"mt6797_mt6351_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 243, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 245, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"mt6797_mt6351_dt_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 237, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"mt6797_mt6351_card\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 187, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 204, i32 7 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 206, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 216, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 218, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 230, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 76, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"playback_1_cpus\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"playback_1_codecs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"playback_1_platforms\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 85, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"playback_2_cpus\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"playback_2_codecs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"playback_2_platforms\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 94, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"playback_3_cpus\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"playback_3_codecs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"playback_3_platforms\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 103, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"capture_1_cpus\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"capture_1_codecs\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"capture_1_platforms\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 112, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"capture_2_cpus\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"capture_2_codecs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"capture_2_platforms\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 121, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant [15 x i8] c"capture_3_cpus\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"capture_3_codecs\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"capture_3_platforms\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 130, i32 11 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"capture_mono_1_cpus\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [22 x i8] c"capture_mono_1_codecs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"capture_mono_1_platforms\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 139, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"hostless_lpbk_cpus\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"hostless_lpbk_codecs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [24 x i8] c"hostless_lpbk_platforms\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 150, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant [21 x i8] c"hostless_speech_cpus\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [23 x i8] c"hostless_speech_codecs\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [26 x i8] c"hostless_speech_platforms\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 162, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"primary_codec_cpus\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [21 x i8] c"primary_codec_codecs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [24 x i8] c"primary_codec_platforms\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 170, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant [10 x i8] c"pcm1_cpus\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [12 x i8] c"pcm1_codecs\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [15 x i8] c"pcm1_platforms\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 63, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 178, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"pcm2_cpus\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [12 x i8] c"pcm2_codecs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [15 x i8] c"pcm2_platforms\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 68, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [24 x i8] c"mt6797_mt6351_dai_links\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 73, i32 32 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 13, i32 1 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 18, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 23, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 28, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 33, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 38, i32 1 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 43, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 48, i32 1 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 53, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [45 x i8] c"../sound/soc/mediatek/mt6797/mt6797-mt6351.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 58, i32 1 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_mt6797_mt6351_driver_exit, ptr @__initcall__kmod_mt6797_mt6351__238_253_mt6797_mt6351_driver_init6, ptr @mt6797_mt6351_dev_probe._entry, ptr @mt6797_mt6351_dev_probe._entry.11, ptr @mt6797_mt6351_dev_probe._entry.8, ptr @mt6797_mt6351_dev_probe._entry_ptr, ptr @mt6797_mt6351_dev_probe._entry_ptr.10, ptr @mt6797_mt6351_dev_probe._entry_ptr.13, ptr @mt6797_mt6351_driver_exit, ptr @mt6797_mt6351_driver, ptr @.str, ptr @mt6797_mt6351_dt_match, ptr @mt6797_mt6351_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @playback_1_cpus, ptr @playback_1_codecs, ptr @playback_1_platforms, ptr @.str.15, ptr @playback_2_cpus, ptr @playback_2_codecs, ptr @playback_2_platforms, ptr @.str.16, ptr @playback_3_cpus, ptr @playback_3_codecs, ptr @playback_3_platforms, ptr @.str.17, ptr @capture_1_cpus, ptr @capture_1_codecs, ptr @capture_1_platforms, ptr @.str.18, ptr @capture_2_cpus, ptr @capture_2_codecs, ptr @capture_2_platforms, ptr @.str.19, ptr @capture_3_cpus, ptr @capture_3_codecs, ptr @capture_3_platforms, ptr @.str.20, ptr @capture_mono_1_cpus, ptr @capture_mono_1_codecs, ptr @capture_mono_1_platforms, ptr @.str.21, ptr @hostless_lpbk_cpus, ptr @hostless_lpbk_codecs, ptr @hostless_lpbk_platforms, ptr @.str.22, ptr @hostless_speech_cpus, ptr @hostless_speech_codecs, ptr @hostless_speech_platforms, ptr @.str.23, ptr @primary_codec_cpus, ptr @primary_codec_codecs, ptr @primary_codec_platforms, ptr @.str.24, ptr @pcm1_cpus, ptr @pcm1_codecs, ptr @pcm1_platforms, ptr @.str.25, ptr @pcm2_cpus, ptr @pcm2_codecs, ptr @pcm2_platforms, ptr @mt6797_mt6351_dai_links, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mt6351_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mt6351_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mt6351_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mt6351_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mt6351_dev_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mt6351_dev_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostless_lpbk_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostless_lpbk_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostless_lpbk_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostless_speech_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostless_speech_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hostless_speech_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_mt6351_dai_links to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_mt6351_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6797_mt6351_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6797_mt6351_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6797_mt6351_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_mt6351_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i76 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt6797_mt6351_card, i32 0, i32 5), align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %for.cond.preheader

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.preheader:                               ; preds = %of_parse_phandle.exit
  %5 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt6797_mt6351_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp86 = icmp sgt i32 %5, 0
  br i1 %cmp86, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.087 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %6 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt6797_mt6351_card, i32 0, i32 24), align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.087
  %tobool5.not = icmp eq ptr %arrayidx, null
  br i1 %tobool5.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.087, i32 6
  %7 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platforms, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %of_node10 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %of_node10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %of_node10, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.087, 1
  %12 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt6797_mt6351_card, i32 0, i32 25), align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i76) #5
  %15 = call ptr @memset(ptr %args.i76, i32 255, i32 72)
  %call.i77 = call i32 @__of_parse_phandle_with_args(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i76) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %of_parse_phandle.exit81, label %of_parse_phandle.exit81.thread

of_parse_phandle.exit81.thread:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i76) #5
  br label %do.end18

of_parse_phandle.exit81:                          ; preds = %for.end
  %16 = ptrtoint ptr %args.i76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i76, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i76) #5
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %of_parse_phandle.exit81.do.end18_crit_edge, label %for.cond21.preheader

of_parse_phandle.exit81.do.end18_crit_edge:       ; preds = %of_parse_phandle.exit81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

for.cond21.preheader:                             ; preds = %of_parse_phandle.exit81
  %18 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt6797_mt6351_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2388 = icmp sgt i32 %18, 0
  br i1 %cmp2388, label %for.cond21.preheader.land.rhs24_crit_edge, label %for.cond21.preheader.for.end38_crit_edge

for.cond21.preheader.for.end38_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.cond21.preheader.land.rhs24_crit_edge:        ; preds = %for.cond21.preheader
  br label %land.rhs24

do.end18:                                         ; preds = %of_parse_phandle.exit81.do.end18_crit_edge, %of_parse_phandle.exit81.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

land.rhs24:                                       ; preds = %for.inc36.land.rhs24_crit_edge, %for.cond21.preheader.land.rhs24_crit_edge
  %i.189 = phi i32 [ %inc37, %for.inc36.land.rhs24_crit_edge ], [ 0, %for.cond21.preheader.land.rhs24_crit_edge ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt6797_mt6351_card, i32 0, i32 24), align 4
  %arrayidx26 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.189
  %tobool27.not = icmp eq ptr %arrayidx26, null
  br i1 %tobool27.not, label %land.rhs24.for.end38_crit_edge, label %for.body29

land.rhs24.for.end38_crit_edge:                   ; preds = %land.rhs24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.body29:                                       ; preds = %land.rhs24
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.189, i32 4
  %20 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %codecs, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %if.end33, label %for.body29.for.inc36_crit_edge

for.body29.for.inc36_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36

if.end33:                                         ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #7
  %of_node35 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %of_node35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %of_node35, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %if.end33, %for.body29.for.inc36_crit_edge
  %inc37 = add nuw nsw i32 %i.189, 1
  %25 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt6797_mt6351_card, i32 0, i32 25), align 4
  %cmp23 = icmp slt i32 %inc37, %25
  br i1 %cmp23, label %for.inc36.land.rhs24_crit_edge, label %for.inc36.for.end38_crit_edge

for.inc36.for.end38_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end38

for.inc36.land.rhs24_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs24

for.end38:                                        ; preds = %for.inc36.for.end38_crit_edge, %land.rhs24.for.end38_crit_edge, %for.cond21.preheader.for.end38_crit_edge
  %call40 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @mt6797_mt6351_card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.end38.cleanup_crit_edge, label %do.end45

for.end38.cleanup_crit_edge:                      ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end45:                                         ; preds = %for.end38
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef %call40) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %for.end38.cleanup_crit_edge, %do.end18, %do.end
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -22, %do.end ], [ %call40, %do.end45 ], [ 0, %for.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_mt6797_mt6351__238_253_mt6797_mt6351_driver_init6, !1, !"__initcall__kmod_mt6797_mt6351__238_253_mt6797_mt6351_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 253, i32 1}
!2 = !{ptr @__exitcall_mt6797_mt6351_driver_exit, !1, !"__exitcall_mt6797_mt6351_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 256, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 257, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 258, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias243, !11, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 259, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 245, i32 11}
!14 = !{ptr @mt6797_mt6351_driver, !15, !"mt6797_mt6351_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 243, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 204, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 206, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt6797_mt6351_dev_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt6797_mt6351_dev_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 216, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 218, i32 3}
!30 = !{ptr @mt6797_mt6351_dev_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt6797_mt6351_dev_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 230, i32 3}
!34 = !{ptr @mt6797_mt6351_dev_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt6797_mt6351_dev_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mt6797_mt6351_card, !37, !"mt6797_mt6351_card", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 187, i32 28}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 76, i32 11}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 85, i32 11}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 94, i32 11}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 103, i32 11}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 112, i32 11}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 121, i32 11}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 130, i32 11}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 139, i32 11}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 150, i32 11}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 162, i32 11}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 170, i32 11}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 178, i32 11}
!62 = !{ptr @mt6797_mt6351_dai_links, !63, !"mt6797_mt6351_dai_links", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 73, i32 32}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 13, i32 1}
!66 = !{ptr @playback_1_cpus, !65, !"playback_1_cpus", i1 false, i1 false}
!67 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @playback_1_codecs, !65, !"playback_1_codecs", i1 false, i1 false}
!70 = !{ptr @playback_1_platforms, !65, !"playback_1_platforms", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 18, i32 1}
!73 = !{ptr @playback_2_cpus, !72, !"playback_2_cpus", i1 false, i1 false}
!74 = !{ptr @playback_2_codecs, !72, !"playback_2_codecs", i1 false, i1 false}
!75 = !{ptr @playback_2_platforms, !72, !"playback_2_platforms", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 23, i32 1}
!78 = !{ptr @playback_3_cpus, !77, !"playback_3_cpus", i1 false, i1 false}
!79 = !{ptr @playback_3_codecs, !77, !"playback_3_codecs", i1 false, i1 false}
!80 = !{ptr @playback_3_platforms, !77, !"playback_3_platforms", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 28, i32 1}
!83 = !{ptr @capture_1_cpus, !82, !"capture_1_cpus", i1 false, i1 false}
!84 = !{ptr @capture_1_codecs, !82, !"capture_1_codecs", i1 false, i1 false}
!85 = !{ptr @capture_1_platforms, !82, !"capture_1_platforms", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 33, i32 1}
!88 = !{ptr @capture_2_cpus, !87, !"capture_2_cpus", i1 false, i1 false}
!89 = !{ptr @capture_2_codecs, !87, !"capture_2_codecs", i1 false, i1 false}
!90 = !{ptr @capture_2_platforms, !87, !"capture_2_platforms", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 38, i32 1}
!93 = !{ptr @capture_3_cpus, !92, !"capture_3_cpus", i1 false, i1 false}
!94 = !{ptr @capture_3_codecs, !92, !"capture_3_codecs", i1 false, i1 false}
!95 = !{ptr @capture_3_platforms, !92, !"capture_3_platforms", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 43, i32 1}
!98 = !{ptr @capture_mono_1_cpus, !97, !"capture_mono_1_cpus", i1 false, i1 false}
!99 = !{ptr @capture_mono_1_codecs, !97, !"capture_mono_1_codecs", i1 false, i1 false}
!100 = !{ptr @capture_mono_1_platforms, !97, !"capture_mono_1_platforms", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 48, i32 1}
!103 = !{ptr @hostless_lpbk_cpus, !102, !"hostless_lpbk_cpus", i1 false, i1 false}
!104 = !{ptr @hostless_lpbk_codecs, !102, !"hostless_lpbk_codecs", i1 false, i1 false}
!105 = !{ptr @hostless_lpbk_platforms, !102, !"hostless_lpbk_platforms", i1 false, i1 false}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 53, i32 1}
!108 = !{ptr @hostless_speech_cpus, !107, !"hostless_speech_cpus", i1 false, i1 false}
!109 = !{ptr @hostless_speech_codecs, !107, !"hostless_speech_codecs", i1 false, i1 false}
!110 = !{ptr @hostless_speech_platforms, !107, !"hostless_speech_platforms", i1 false, i1 false}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 58, i32 1}
!113 = !{ptr @primary_codec_cpus, !112, !"primary_codec_cpus", i1 false, i1 false}
!114 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @primary_codec_codecs, !112, !"primary_codec_codecs", i1 false, i1 false}
!116 = !{ptr @primary_codec_platforms, !112, !"primary_codec_platforms", i1 false, i1 false}
!117 = !{ptr @pcm1_cpus, !118, !"pcm1_cpus", i1 false, i1 false}
!118 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 63, i32 1}
!119 = !{ptr @pcm1_codecs, !118, !"pcm1_codecs", i1 false, i1 false}
!120 = !{ptr @pcm1_platforms, !118, !"pcm1_platforms", i1 false, i1 false}
!121 = !{ptr @pcm2_cpus, !122, !"pcm2_cpus", i1 false, i1 false}
!122 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 68, i32 1}
!123 = !{ptr @pcm2_codecs, !122, !"pcm2_codecs", i1 false, i1 false}
!124 = !{ptr @pcm2_platforms, !122, !"pcm2_platforms", i1 false, i1 false}
!125 = !{ptr @mt6797_mt6351_dt_match, !126, !"mt6797_mt6351_dt_match", i1 false, i1 false}
!126 = !{!"../sound/soc/mediatek/mt6797/mt6797-mt6351.c", i32 237, i32 34}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
