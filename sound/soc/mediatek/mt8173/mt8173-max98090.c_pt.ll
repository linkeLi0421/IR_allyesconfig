; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8173/mt8173-max98090.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8173/mt8173-max98090.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
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

@__initcall__kmod_mt8173_max98090__238_201_mt8173_max98090_driver_init6 = internal global ptr @mt8173_max98090_driver_init, section ".initcall6.init", align 4
@mt8173_max98090_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8173_max98090_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8173_max98090_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8173_max98090_driver_exit = internal global ptr @mt8173_max98090_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [68 x i8] c"mt8173_max98090.description=MT8173 MAX98090 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [58 x i8] c"mt8173_max98090.author=Koro Chen <koro.chen@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [63 x i8] c"mt8173_max98090.file=sound/soc/mediatek/mt8173/mt8173-max98090\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [31 x i8] c"mt8173_max98090.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [47 x i8] c"mt8173_max98090.alias=platform:mt8173-max98090\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt8173-max98090\00", [16 x i8] zeroinitializer }, align 32
@mt8173_max98090_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-max98090\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@mt8173_max98090_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8173_max98090_dais, i32 3, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @mt8173_max98090_controls, i32 4, ptr @mt8173_max98090_widgets, i32 4, ptr @mt8173_max98090_routes, i32 7, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt8173_max98090_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 156, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt8173_max98090_dev_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sound/soc/mediatek/mt8173/mt8173-max98090.c\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8173_max98090_dev_probe._entry_ptr = internal global ptr @mt8173_max98090_dev_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mediatek,audio-codec\00", [43 x i8] zeroinitializer }, align 32
@mt8173_max98090_dev_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Property 'audio-codec' missing or invalid\0A\00", [53 x i8] zeroinitializer }, align 32
@mt8173_max98090_dev_probe._entry_ptr.10 = internal global ptr @mt8173_max98090_dev_probe._entry.8, section ".printk_index", align 4
@mt8173_max98090_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.str.24 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt8173_max98090_routes = internal constant { [7 x %struct.snd_soc_dapm_route], [84 x i8] } { [7 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }], [84 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MAX98090 Playback\00", [46 x i8] zeroinitializer }, align 32
@playback_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.15 }], [20 x i8] zeroinitializer }, align 32
@playback_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.16, ptr null, ptr @.str.17 }], [20 x i8] zeroinitializer }, align 32
@playback_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAX98090 Capture\00", [47 x i8] zeroinitializer }, align 32
@capture_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.18 }], [20 x i8] zeroinitializer }, align 32
@capture_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.16, ptr null, ptr @.str.17 }], [20 x i8] zeroinitializer }, align 32
@capture_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Codec\00", [26 x i8] zeroinitializer }, align 32
@hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.19 }], [20 x i8] zeroinitializer }, align 32
@hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.20 }], [20 x i8] zeroinitializer }, align 32
@hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8173_max98090_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8173_max98090_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt8173_max98090_dais = internal global { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [68 x i8] } { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.11, ptr @.str.11, ptr @playback_cpus, i32 1, ptr @playback_codecs, i32 1, ptr @playback_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.12, ptr @.str.12, ptr @capture_cpus, i32 1, ptr @capture_codecs, i32 1, ptr @capture_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.13, ptr null, ptr @hifi_cpus, i32 1, ptr @hifi_codecs, i32 1, ptr @hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @mt8173_max98090_init, ptr null, ptr null, ptr @mt8173_max98090_ops, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }], [68 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VUL\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@mt8173_max98090_jack = internal global { %struct.snd_soc_jack, [36 x i8] } zeroinitializer, align 32
@mt8173_max98090_jack_pins = internal global { [2 x %struct.snd_soc_jack_pin], [56 x i8] } { [2 x %struct.snd_soc_jack_pin] [%struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.21, i32 1, i8 0 }, %struct.snd_soc_jack_pin { %struct.list_head zeroinitializer, ptr @.str.24, i32 2, i8 0 }], [56 x i8] zeroinitializer }, align 32
@mt8173_max98090_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 78, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't create a new Jack %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt8173_max98090_init\00", [43 x i8] zeroinitializer }, align 32
@mt8173_max98090_init._entry_ptr = internal global ptr @mt8173_max98090_init._entry, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Int Mic Switch\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Int Mic\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Mic Switch\00", [45 x i8] zeroinitializer }, align 32
@mt8173_max98090_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMICL\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN34\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"mt8173_max98090_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 192, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 194, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"mt8173_max98090_dt_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 186, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"mt8173_max98090_card\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 133, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 154, i32 7 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 156, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 166, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 168, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"mt8173_max98090_controls\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 45, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"mt8173_max98090_routes\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 35, i32 40 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 104, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"playback_cpus\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"playback_codecs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"playback_platforms\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 112, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"capture_cpus\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"capture_codecs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [18 x i8] c"capture_platforms\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 121, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant [10 x i8] c"hifi_cpus\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"hifi_codecs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [15 x i8] c"hifi_platforms\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"mt8173_max98090_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 62, i32 33 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"mt8173_max98090_dais\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 101, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 85, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 90, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 95, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 73, i32 36 }
@___asan_gen_.150 = private unnamed_addr constant [21 x i8] c"mt8173_max98090_jack\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 15, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant [26 x i8] c"mt8173_max98090_jack_pins\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 17, i32 32 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 78, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 23, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 46, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 47, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 48, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 49, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [24 x i8] c"mt8173_max98090_widgets\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 28, i32 41 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 36, i32 20 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 37, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 38, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 39, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 40, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 41, i32 24 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [47 x i8] c"../sound/soc/mediatek/mt8173/mt8173-max98090.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 42, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_mt8173_max98090_driver_exit, ptr @__initcall__kmod_mt8173_max98090__238_201_mt8173_max98090_driver_init6, ptr @mt8173_max98090_dev_probe._entry, ptr @mt8173_max98090_dev_probe._entry.8, ptr @mt8173_max98090_dev_probe._entry_ptr, ptr @mt8173_max98090_dev_probe._entry_ptr.10, ptr @mt8173_max98090_driver_exit, ptr @mt8173_max98090_init._entry, ptr @mt8173_max98090_init._entry_ptr, ptr @mt8173_max98090_driver, ptr @.str, ptr @mt8173_max98090_dt_match, ptr @mt8173_max98090_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mt8173_max98090_controls, ptr @mt8173_max98090_routes, ptr @.str.11, ptr @playback_cpus, ptr @playback_codecs, ptr @playback_platforms, ptr @.str.12, ptr @capture_cpus, ptr @capture_codecs, ptr @capture_platforms, ptr @.str.13, ptr @hifi_cpus, ptr @hifi_codecs, ptr @hifi_platforms, ptr @mt8173_max98090_ops, ptr @mt8173_max98090_dais, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @mt8173_max98090_jack, ptr @mt8173_max98090_jack_pins, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @mt8173_max98090_widgets, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_dev_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_routes to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_dais to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_jack to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_jack_pins to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_max98090_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_max98090_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8173_max98090_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8173_max98090_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8173_max98090_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_max98090_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i68 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
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
  %5 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8173_max98090_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp78 = icmp sgt i32 %5, 0
  br i1 %cmp78, label %for.cond.preheader.land.rhs_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.079 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %6 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8173_max98090_card, i32 0, i32 24), align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.079
  %tobool3.not = icmp eq ptr %arrayidx, null
  br i1 %tobool3.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %6, i32 %i.079, i32 6
  %7 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %platforms, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.end6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %of_node8 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %of_node8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %of_node8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %12 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8173_max98090_card, i32 0, i32 25), align 4
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
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i68) #5
  %15 = call ptr @memset(ptr %args.i68, i32 255, i32 72)
  %call.i69 = call i32 @__of_parse_phandle_with_args(ptr noundef %14, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %of_parse_phandle.exit73, label %of_parse_phandle.exit73.thread

of_parse_phandle.exit73.thread:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i68) #5
  br label %do.end16

of_parse_phandle.exit73:                          ; preds = %for.end
  %16 = ptrtoint ptr %args.i68 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args.i68, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i68) #5
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %of_parse_phandle.exit73.do.end16_crit_edge, label %for.cond19.preheader

of_parse_phandle.exit73.do.end16_crit_edge:       ; preds = %of_parse_phandle.exit73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end16

for.cond19.preheader:                             ; preds = %of_parse_phandle.exit73
  %18 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8173_max98090_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2180 = icmp sgt i32 %18, 0
  br i1 %cmp2180, label %for.cond19.preheader.land.rhs22_crit_edge, label %for.cond19.preheader.for.end36_crit_edge

for.cond19.preheader.for.end36_crit_edge:         ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

for.cond19.preheader.land.rhs22_crit_edge:        ; preds = %for.cond19.preheader
  br label %land.rhs22

do.end16:                                         ; preds = %of_parse_phandle.exit73.do.end16_crit_edge, %of_parse_phandle.exit73.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

land.rhs22:                                       ; preds = %for.inc34.land.rhs22_crit_edge, %for.cond19.preheader.land.rhs22_crit_edge
  %i.181 = phi i32 [ %inc35, %for.inc34.land.rhs22_crit_edge ], [ 0, %for.cond19.preheader.land.rhs22_crit_edge ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8173_max98090_card, i32 0, i32 24), align 4
  %arrayidx24 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.181
  %tobool25.not = icmp eq ptr %arrayidx24, null
  br i1 %tobool25.not, label %land.rhs22.for.end36_crit_edge, label %for.body27

land.rhs22.for.end36_crit_edge:                   ; preds = %land.rhs22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

for.body27:                                       ; preds = %land.rhs22
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.181, i32 4
  %20 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %codecs, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool29.not = icmp eq ptr %23, null
  br i1 %tobool29.not, label %if.end31, label %for.body27.for.inc34_crit_edge

for.body27.for.inc34_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

if.end31:                                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  %of_node33 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %of_node33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %of_node33, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %if.end31, %for.body27.for.inc34_crit_edge
  %inc35 = add nuw nsw i32 %i.181, 1
  %25 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8173_max98090_card, i32 0, i32 25), align 4
  %cmp21 = icmp slt i32 %inc35, %25
  br i1 %cmp21, label %for.inc34.land.rhs22_crit_edge, label %for.inc34.for.end36_crit_edge

for.inc34.for.end36_crit_edge:                    ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end36

for.inc34.land.rhs22_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs22

for.end36:                                        ; preds = %for.inc34.for.end36_crit_edge, %land.rhs22.for.end36_crit_edge, %for.cond19.preheader.for.end36_crit_edge
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8173_max98090_card, i32 0, i32 5), align 4
  %call40 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @mt8173_max98090_card) #5
  call void @of_node_put(ptr noundef nonnull %17) #5
  call void @of_node_put(ptr noundef nonnull %4) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end36, %do.end16, %do.end
  %retval.0 = phi i32 [ %call40, %for.end36 ], [ -22, %do.end16 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_max98090_init(ptr nocapture noundef readonly %runtime) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %runtime, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %runtime, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %runtime, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %component2, align 4
  %call = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull @mt8173_max98090_jack, ptr noundef nonnull @mt8173_max98090_jack_pins, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @max98090_mic_detect(ptr noundef %9, ptr noundef nonnull @mt8173_max98090_jack) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max98090_mic_detect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_max98090_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %9, 8
  %call1 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mul, i32 noundef 0) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_mt8173_max98090__238_201_mt8173_max98090_driver_init6, !1, !"__initcall__kmod_mt8173_max98090__238_201_mt8173_max98090_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 201, i32 1}
!2 = !{ptr @__exitcall_mt8173_max98090_driver_exit, !1, !"__exitcall_mt8173_max98090_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 204, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 205, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 206, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias243, !11, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 207, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 194, i32 14}
!14 = !{ptr @mt8173_max98090_driver, !15, !"mt8173_max98090_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 192, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 154, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 156, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt8173_max98090_dev_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt8173_max98090_dev_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 166, i32 11}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 168, i32 3}
!30 = !{ptr @mt8173_max98090_dev_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt8173_max98090_dev_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mt8173_max98090_card, !33, !"mt8173_max98090_card", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 133, i32 28}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 104, i32 11}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 112, i32 11}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 121, i32 11}
!40 = !{ptr @mt8173_max98090_dais, !41, !"mt8173_max98090_dais", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 101, i32 32}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 85, i32 1}
!44 = !{ptr @playback_cpus, !43, !"playback_cpus", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @playback_codecs, !43, !"playback_codecs", i1 false, i1 false}
!48 = !{ptr @playback_platforms, !43, !"playback_platforms", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 90, i32 1}
!51 = !{ptr @capture_cpus, !50, !"capture_cpus", i1 false, i1 false}
!52 = !{ptr @capture_codecs, !50, !"capture_codecs", i1 false, i1 false}
!53 = !{ptr @capture_platforms, !50, !"capture_platforms", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 95, i32 1}
!56 = !{ptr @hifi_cpus, !55, !"hifi_cpus", i1 false, i1 false}
!57 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hifi_codecs, !55, !"hifi_codecs", i1 false, i1 false}
!59 = !{ptr @hifi_platforms, !55, !"hifi_platforms", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 73, i32 36}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 78, i32 3}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mt8173_max98090_init._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mt8173_max98090_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @mt8173_max98090_jack, !68, !"mt8173_max98090_jack", i1 false, i1 false}
!68 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 15, i32 28}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 23, i32 10}
!71 = !{ptr @mt8173_max98090_jack_pins, !72, !"mt8173_max98090_jack_pins", i1 false, i1 false}
!72 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 17, i32 32}
!73 = !{ptr @mt8173_max98090_ops, !74, !"mt8173_max98090_ops", i1 false, i1 false}
!74 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 62, i32 33}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 46, i32 2}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 47, i32 2}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 48, i32 2}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 49, i32 2}
!85 = !{ptr @mt8173_max98090_controls, !86, !"mt8173_max98090_controls", i1 false, i1 false}
!86 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 45, i32 38}
!87 = !{ptr @mt8173_max98090_widgets, !88, !"mt8173_max98090_widgets", i1 false, i1 false}
!88 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 28, i32 41}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 36, i32 20}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 37, i32 20}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 38, i32 3}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 39, i32 22}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 40, i32 22}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 41, i32 24}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 42, i32 3}
!103 = !{ptr @mt8173_max98090_routes, !104, !"mt8173_max98090_routes", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 35, i32 40}
!105 = !{ptr @mt8173_max98090_dt_match, !106, !"mt8173_max98090_dt_match", i1 false, i1 false}
!106 = !{!"../sound/soc/mediatek/mt8173/mt8173-max98090.c", i32 186, i32 34}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
