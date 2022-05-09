; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_aux_dev = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_dapm_pinctrl_priv = type { ptr, ptr }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.mt8183_da7219_max98357_priv = type { %struct.snd_soc_jack, %struct.snd_soc_jack }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_mt8183_da7219_max98357__294_817_mt8183_da7219_max98357_driver_init6 = internal global ptr @mt8183_da7219_max98357_driver_init, section ".initcall6.init", align 4
@mt8183_da7219_max98357_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8183_da7219_max98357_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8183_da7219_max98357_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8183_da7219_max98357_driver_exit = internal global ptr @mt8183_da7219_max98357_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [82 x i8] c"mt8183_da7219_max98357.description=MT8183-DA7219-MAX98357 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [69 x i8] c"mt8183_da7219_max98357.author=Shunli Wang <shunli.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [77 x i8] c"mt8183_da7219_max98357.file=sound/soc/mediatek/mt8183/mt8183-da7219-max98357\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [38 x i8] c"mt8183_da7219_max98357.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [61 x i8] c"mt8183_da7219_max98357.alias=mt8183_da7219_max98357 soc card\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt8183_da7219\00", [18 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dt_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183_da7219_max98357\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_da7219_max98357_card }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183_da7219_rt1015\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_da7219_rt1015_card }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183_da7219_rt1015p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_da7219_rt1015p_card }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 693, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt8183_da7219_max98357_dev_probe\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dev_probe._entry_ptr = internal global ptr @mt8183_da7219_max98357_dev_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,hdmi-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S3\00", [27 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.18, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8183_da7219_dai_links, i32 17, %struct.list_head zeroinitializer, i32 0, ptr @mt6358_codec_conf, i32 1, ptr @mt8183_da7219_max98357_headset_dev, i32 1, %struct.list_head zeroinitializer, ptr @mt8183_da7219_max98357_snd_controls, i32 1, ptr @mt8183_da7219_max98357_dapm_widgets, i32 2, ptr @mt8183_da7219_max98357_dapm_routes, i32 2, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@mt8183_da7219_i2s_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8183_da7219_i2s_hw_params, ptr @mt8183_da7219_hw_free, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2s3_max98357a_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.8 }], [20 x i8] zeroinitializer }, align 32
@i2s3_max98357a_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.73, ptr null, ptr @.str.74 }, %struct.snd_soc_dai_link_component { ptr @.str.50, ptr null, ptr @.str.51 }], [40 x i8] zeroinitializer }, align 32
@i2s3_max98357a_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_da7219_rt1015_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.75, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8183_da7219_dai_links, i32 17, %struct.list_head zeroinitializer, i32 0, ptr @mt8183_da7219_rt1015_codec_conf, i32 3, ptr @mt8183_da7219_max98357_headset_dev, i32 1, %struct.list_head zeroinitializer, ptr @mt8183_da7219_rt1015_snd_controls, i32 2, ptr @mt8183_da7219_rt1015_dapm_widgets, i32 3, ptr @mt8183_da7219_rt1015_dapm_routes, i32 3, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_i2s_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8183_da7219_rt1015_i2s_hw_params, ptr @mt8183_da7219_hw_free, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2s3_rt1015_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.8 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015_codecs = internal global { [3 x %struct.snd_soc_dai_link_component], [60 x i8] } { [3 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.92 }, %struct.snd_soc_dai_link_component { ptr @.str.78, ptr null, ptr @.str.92 }, %struct.snd_soc_dai_link_component { ptr @.str.50, ptr null, ptr @.str.51 }], [60 x i8] zeroinitializer }, align 32
@i2s3_rt1015_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_da7219_rt1015p_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.93, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8183_da7219_dai_links, i32 17, %struct.list_head zeroinitializer, i32 0, ptr @mt6358_codec_conf, i32 1, ptr @mt8183_da7219_max98357_headset_dev, i32 1, %struct.list_head zeroinitializer, ptr @mt8183_da7219_max98357_snd_controls, i32 1, ptr @mt8183_da7219_max98357_dapm_widgets, i32 2, ptr @mt8183_da7219_max98357_dapm_routes, i32 2, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.8 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.94, ptr null, ptr @.str.74 }, %struct.snd_soc_dai_link_component { ptr @.str.50, ptr null, ptr @.str.51 }], [40 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDM\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,headset-codec\00", [41 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_headset_dev = internal global { %struct.snd_soc_aux_dev, [16 x i8] } { %struct.snd_soc_aux_dev { %struct.snd_soc_dai_link_component zeroinitializer, ptr @mt8183_da7219_max98357_headset_init }, [16 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dev_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 763, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Property 'mediatek,headset-codec' missing/invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dev_probe._entry_ptr.13 = internal global ptr @mt8183_da7219_max98357_dev_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dev_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 777, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s failed to select default state %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dev_probe._entry_ptr.17 = internal global ptr @mt8183_da7219_max98357_dev_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt8183_da7219_max98357\00", [41 x i8] zeroinitializer }, align 32
@mt6358_codec_conf = internal global { [1 x %struct.snd_soc_codec_conf], [16 x i8] } { [1 x %struct.snd_soc_codec_conf] [%struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.46, ptr null, ptr null }, ptr @.str.54 }], [16 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_snd_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.56 to i32) }], [48 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dapm_routes = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_1\00", [21 x i8] zeroinitializer }, align 32
@playback1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.35 }], [20 x i8] zeroinitializer }, align 32
@playback1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@playback1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_da7219_max98357_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8183_da7219_max98357_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_2\00", [21 x i8] zeroinitializer }, align 32
@playback2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.38 }], [20 x i8] zeroinitializer }, align 32
@playback2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@playback2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_da7219_max98357_bt_sco_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8183_da7219_max98357_bt_sco_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_3\00", [21 x i8] zeroinitializer }, align 32
@playback3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.39 }], [20 x i8] zeroinitializer }, align 32
@playback3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@playback3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_1\00", [22 x i8] zeroinitializer }, align 32
@capture1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.40 }], [20 x i8] zeroinitializer }, align 32
@capture1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@capture1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_2\00", [22 x i8] zeroinitializer }, align 32
@capture2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.41 }], [20 x i8] zeroinitializer }, align 32
@capture2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@capture2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_3\00", [22 x i8] zeroinitializer }, align 32
@capture3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.42 }], [20 x i8] zeroinitializer }, align 32
@capture3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@capture3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture_Mono_1\00", [17 x i8] zeroinitializer }, align 32
@capture_mono_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.43 }], [20 x i8] zeroinitializer }, align 32
@capture_mono_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@capture_mono_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Playback_HDMI\00", [18 x i8] zeroinitializer }, align 32
@playback_hdmi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@playback_hdmi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@playback_hdmi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Primary Codec\00", [18 x i8] zeroinitializer }, align 32
@primary_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.45 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.46, ptr null, ptr @.str.47 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 1\00", [26 x i8] zeroinitializer }, align 32
@pcm1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.28 }], [20 x i8] zeroinitializer }, align 32
@pcm1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@pcm1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 2\00", [26 x i8] zeroinitializer }, align 32
@pcm2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.29 }], [20 x i8] zeroinitializer }, align 32
@pcm2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@pcm2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S0\00", [27 x i8] zeroinitializer }, align 32
@i2s0_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.30 }], [20 x i8] zeroinitializer }, align 32
@i2s0_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.48, ptr null, ptr @.str.49 }], [20 x i8] zeroinitializer }, align 32
@i2s0_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_mt6358_i2s_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8183_mt6358_i2s_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@i2s1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.31 }], [20 x i8] zeroinitializer }, align 32
@i2s1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.36, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@i2s1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@i2s2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.32 }], [20 x i8] zeroinitializer }, align 32
@i2s2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.50, ptr null, ptr @.str.51 }], [20 x i8] zeroinitializer }, align 32
@i2s2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S5\00", [27 x i8] zeroinitializer }, align 32
@i2s5_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.33 }], [20 x i8] zeroinitializer }, align 32
@i2s5_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.48, ptr null, ptr @.str.49 }], [20 x i8] zeroinitializer }, align 32
@i2s5_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tdm_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.9 }], [20 x i8] zeroinitializer }, align 32
@tdm_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.52 }], [20 x i8] zeroinitializer }, align 32
@tdm_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_da7219_dai_links = internal global { [17 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [492 x i8] } { [17 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.19, ptr @.str.19, ptr @playback1_cpus, i32 1, ptr @playback1_codecs, i32 1, ptr @playback1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_da7219_max98357_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.20, ptr @.str.20, ptr @playback2_cpus, i32 1, ptr @playback2_codecs, i32 1, ptr @playback2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_da7219_max98357_bt_sco_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.21, ptr @.str.21, ptr @playback3_cpus, i32 1, ptr @playback3_codecs, i32 1, ptr @playback3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.22, ptr @.str.22, ptr @capture1_cpus, i32 1, ptr @capture1_codecs, i32 1, ptr @capture1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_da7219_max98357_bt_sco_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.23, ptr @.str.23, ptr @capture2_cpus, i32 1, ptr @capture2_codecs, i32 1, ptr @capture2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.24, ptr @.str.24, ptr @capture3_cpus, i32 1, ptr @capture3_codecs, i32 1, ptr @capture3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_da7219_max98357_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.25, ptr @.str.25, ptr @capture_mono_cpus, i32 1, ptr @capture_mono_codecs, i32 1, ptr @capture_mono_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.26, ptr @.str.26, ptr @playback_hdmi_cpus, i32 1, ptr @playback_hdmi_codecs, i32 1, ptr @playback_hdmi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.27, ptr null, ptr @primary_codec_cpus, i32 1, ptr @primary_codec_codecs, i32 1, ptr @primary_codec_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.28, ptr null, ptr @pcm1_cpus, i32 1, ptr @pcm1_codecs, i32 1, ptr @pcm1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.29, ptr null, ptr @pcm2_cpus, i32 1, ptr @pcm2_codecs, i32 1, ptr @pcm2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.30, ptr null, ptr @i2s0_cpus, i32 1, ptr @i2s0_codecs, i32 1, ptr @i2s0_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_i2s_ops, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.31, ptr null, ptr @i2s1_cpus, i32 1, ptr @i2s1_codecs, i32 1, ptr @i2s1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_i2s_ops, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.32, ptr null, ptr @i2s2_cpus, i32 1, ptr @i2s2_codecs, i32 1, ptr @i2s2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_da7219_i2s_ops, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.8, ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.33, ptr null, ptr @i2s5_cpus, i32 1, ptr @i2s5_codecs, i32 1, ptr @i2s5_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_i2s_ops, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.9, ptr null, ptr @tdm_cpus, i32 1, ptr @tdm_codecs, i32 1, ptr @tdm_platforms, i32 1, i32 0, ptr null, i32 0, i32 5121, [2 x i32] zeroinitializer, ptr @mt8183_da7219_max98357_hdmi_init, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 33, i8 0, %struct.snd_soc_dobj zeroinitializer }], [492 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_da7219_max98357_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_startup.channels = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_da7219_max98357_startup.channels, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_bt_sco_startup.rates = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8000, i32 16000], [24 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_bt_sco_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_da7219_max98357_bt_sco_startup.rates, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_bt_sco_startup.channels = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_bt_sco_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_da7219_max98357_bt_sco_startup.channels, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_1\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADDA\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6358-sound\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6358-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt-sco\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt-sco-pcm\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"da7219.5-001a\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da7219-hifi\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI Jack\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mt6358\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Speakers Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speakers\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TDM_OUT_PINCTRL\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_tdm_out_on\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_tdm_out_off\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.snd_soc_dapm_pinctrl_priv, [24 x i8] } { %struct.snd_soc_dapm_pinctrl_priv { ptr @.str.58, ptr @.str.59 }, [24 x i8] zeroinitializer }, align 32
@mt8183_da7219_max98357_dapm_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 20, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr @.compoundliteral, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_pinctrl_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S Playback\00", [19 x i8] zeroinitializer }, align 32
@mt8183_da7219_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 62, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set cpu dai sysclk\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt8183_da7219_i2s_hw_params\00", [36 x i8] zeroinitializer }, align 32
@mt8183_da7219_i2s_hw_params._entry_ptr = internal global ptr @mt8183_da7219_i2s_hw_params._entry, section ".printk_index", align 4
@mt8183_da7219_i2s_hw_params._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to set sysclk\0A\00", [42 x i8] zeroinitializer }, align 32
@mt8183_da7219_i2s_hw_params._entry_ptr.67 = internal global ptr @mt8183_da7219_i2s_hw_params._entry.65, section ".printk_index", align 4
@mt8183_da7219_i2s_hw_params._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.64, ptr @.str.4, i32 83, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to start PLL: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mt8183_da7219_i2s_hw_params._entry_ptr.70 = internal global ptr @mt8183_da7219_i2s_hw_params._entry.68, section ".printk_index", align 4
@mt8183_da7219_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 102, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to stop PLL: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt8183_da7219_hw_free\00", [42 x i8] zeroinitializer }, align 32
@mt8183_da7219_hw_free._entry_ptr = internal global ptr @mt8183_da7219_hw_free._entry, section ".printk_index", align 4
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max98357a\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mt8183_da7219_rt1015\00", [43 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_codec_conf = internal global { [3 x %struct.snd_soc_codec_conf], [48 x i8] } { [3 x %struct.snd_soc_codec_conf] [%struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.46, ptr null, ptr null }, ptr @.str.54 }, %struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr null }, ptr @.str.77 }, %struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.78, ptr null, ptr null }, ptr @.str.79 }], [48 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_snd_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.83 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_dapm_routes = internal constant { [3 x %struct.snd_soc_dapm_route], [36 x i8] } { [3 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1015.6-0028\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1015.6-0029\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Spk Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left Spk\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Spk Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right Spk\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.snd_soc_dapm_pinctrl_priv, [24 x i8] } { %struct.snd_soc_dapm_pinctrl_priv { ptr @.str.58, ptr @.str.59 }, [24 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 20, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr @.compoundliteral.84, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_pinctrl_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left SPO\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right SPO\00", [22 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set pll\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mt8183_da7219_rt1015_i2s_hw_params\00", [61 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_i2s_hw_params._entry_ptr = internal global ptr @mt8183_da7219_rt1015_i2s_hw_params._entry, section ".printk_index", align 4
@mt8183_da7219_rt1015_i2s_hw_params._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.89, ptr @.str.4, i32 141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8183_da7219_rt1015_i2s_hw_params._entry_ptr.91 = internal global ptr @mt8183_da7219_rt1015_i2s_hw_params._entry.90, section ".printk_index", align 4
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt1015-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt8183_da7219_rt1015p\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt1015p\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.96 = private unnamed_addr constant [30 x i8] c"mt8183_da7219_max98357_driver\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 806, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 808, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [32 x i8] c"mt8183_da7219_max98357_dt_match\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 789, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 691, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 693, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 703, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 706, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"mt8183_da7219_max98357_card\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 596, i32 28 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"mt8183_da7219_i2s_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 111, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"i2s3_max98357a_cpus\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"i2s3_max98357a_codecs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [25 x i8] c"i2s3_max98357a_platforms\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"mt8183_da7219_rt1015_card\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 647, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant [29 x i8] c"mt8183_da7219_rt1015_i2s_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 150, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"i2s3_rt1015_cpus\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"i2s3_rt1015_codecs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"i2s3_rt1015_platforms\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"mt8183_da7219_rt1015p_card\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 664, i32 28 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"i2s3_rt1015p_cpus\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"i2s3_rt1015p_codecs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [23 x i8] c"i2s3_rt1015p_platforms\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 749, i32 44 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 760, i32 6 }
@___asan_gen_.180 = private unnamed_addr constant [35 x i8] c"mt8183_da7219_max98357_headset_dev\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 568, i32 31 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 762, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 773, i32 48 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 776, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 597, i32 10 }
@___asan_gen_.201 = private unnamed_addr constant [18 x i8] c"mt6358_codec_conf\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 573, i32 34 }
@___asan_gen_.204 = private unnamed_addr constant [36 x i8] c"mt8183_da7219_max98357_snd_controls\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 580, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant [35 x i8] c"mt8183_da7219_max98357_dapm_routes\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 591, i32 40 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 378, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant [15 x i8] c"playback1_cpus\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"playback1_codecs\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"playback1_platforms\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [27 x i8] c"mt8183_da7219_max98357_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 215, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 388, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"playback2_cpus\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"playback2_codecs\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"playback2_platforms\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [34 x i8] c"mt8183_da7219_max98357_bt_sco_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 255, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 398, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant [15 x i8] c"playback3_cpus\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"playback3_codecs\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c"playback3_platforms\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 407, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant [14 x i8] c"capture1_cpus\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [16 x i8] c"capture1_codecs\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [19 x i8] c"capture1_platforms\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 417, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant [14 x i8] c"capture2_cpus\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"capture2_codecs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c"capture2_platforms\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 426, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant [14 x i8] c"capture3_cpus\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [16 x i8] c"capture3_codecs\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"capture3_platforms\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 436, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"capture_mono_cpus\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c"capture_mono_codecs\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [23 x i8] c"capture_mono_platforms\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 445, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant [19 x i8] c"playback_hdmi_cpus\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [21 x i8] c"playback_hdmi_codecs\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [24 x i8] c"playback_hdmi_platforms\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 455, i32 11 }
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"primary_codec_cpus\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [21 x i8] c"primary_codec_codecs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [24 x i8] c"primary_codec_platforms\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 463, i32 11 }
@___asan_gen_.327 = private unnamed_addr constant [10 x i8] c"pcm1_cpus\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [12 x i8] c"pcm1_codecs\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [15 x i8] c"pcm1_platforms\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 306, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 471, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant [10 x i8] c"pcm2_cpus\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [12 x i8] c"pcm2_codecs\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [15 x i8] c"pcm2_platforms\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 311, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 479, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant [10 x i8] c"i2s0_cpus\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [12 x i8] c"i2s0_codecs\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [15 x i8] c"i2s0_platforms\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [22 x i8] c"mt8183_mt6358_i2s_ops\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 44, i32 33 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 488, i32 11 }
@___asan_gen_.366 = private unnamed_addr constant [10 x i8] c"i2s1_cpus\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [12 x i8] c"i2s1_codecs\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [15 x i8] c"i2s1_platforms\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 321, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 497, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant [10 x i8] c"i2s2_cpus\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [12 x i8] c"i2s2_codecs\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [15 x i8] c"i2s2_platforms\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 512, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant [10 x i8] c"i2s5_cpus\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [12 x i8] c"i2s5_codecs\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [15 x i8] c"i2s5_platforms\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 350, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant [9 x i8] c"tdm_cpus\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [11 x i8] c"tdm_codecs\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [14 x i8] c"tdm_platforms\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [24 x i8] c"mt8183_da7219_dai_links\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 375, i32 32 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 260, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 183, i32 28 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 186, i32 49 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 191, i32 28 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 194, i32 49 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 265, i32 1 }
@___asan_gen_.435 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 223, i32 28 }
@___asan_gen_.438 = private unnamed_addr constant [18 x i8] c"constraints_rates\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 226, i32 49 }
@___asan_gen_.441 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 231, i32 28 }
@___asan_gen_.444 = private unnamed_addr constant [21 x i8] c"constraints_channels\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 234, i32 49 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 270, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 275, i32 1 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 280, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 285, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 290, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 295, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 301, i32 1 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 316, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 326, i32 1 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 355, i32 1 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 366, i32 41 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 576, i32 18 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 581, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 587, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [36 x i8] c"mt8183_da7219_max98357_dapm_widgets\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 585, i32 28 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 592, i32 21 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 593, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 62, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 71, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 82, i32 5 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 101, i32 5 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 331, i32 1 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 648, i32 10 }
@___asan_gen_.559 = private unnamed_addr constant [32 x i8] c"mt8183_da7219_rt1015_codec_conf\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 613, i32 34 }
@___asan_gen_.562 = private unnamed_addr constant [34 x i8] c"mt8183_da7219_rt1015_snd_controls\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 628, i32 38 }
@___asan_gen_.565 = private unnamed_addr constant [33 x i8] c"mt8183_da7219_rt1015_dapm_routes\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 641, i32 40 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 619, i32 10 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 620, i32 18 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 623, i32 10 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 624, i32 18 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 629, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 630, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [34 x i8] c"mt8183_da7219_rt1015_dapm_widgets\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 634, i32 28 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 642, i32 21 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 643, i32 22 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 132, i32 5 }
@___asan_gen_.611 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 141, i32 5 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 337, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 665, i32 10 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 344, i32 1 }
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.624 = private constant [54 x i8] c"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 544, i32 9 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_mt8183_da7219_max98357_driver_exit, ptr @__initcall__kmod_mt8183_da7219_max98357__294_817_mt8183_da7219_max98357_driver_init6, ptr @mt8183_da7219_hw_free._entry, ptr @mt8183_da7219_hw_free._entry_ptr, ptr @mt8183_da7219_i2s_hw_params._entry, ptr @mt8183_da7219_i2s_hw_params._entry.65, ptr @mt8183_da7219_i2s_hw_params._entry.68, ptr @mt8183_da7219_i2s_hw_params._entry_ptr, ptr @mt8183_da7219_i2s_hw_params._entry_ptr.67, ptr @mt8183_da7219_i2s_hw_params._entry_ptr.70, ptr @mt8183_da7219_max98357_dev_probe._entry, ptr @mt8183_da7219_max98357_dev_probe._entry.11, ptr @mt8183_da7219_max98357_dev_probe._entry.15, ptr @mt8183_da7219_max98357_dev_probe._entry_ptr, ptr @mt8183_da7219_max98357_dev_probe._entry_ptr.13, ptr @mt8183_da7219_max98357_dev_probe._entry_ptr.17, ptr @mt8183_da7219_max98357_driver_exit, ptr @mt8183_da7219_rt1015_i2s_hw_params._entry, ptr @mt8183_da7219_rt1015_i2s_hw_params._entry.90, ptr @mt8183_da7219_rt1015_i2s_hw_params._entry_ptr, ptr @mt8183_da7219_rt1015_i2s_hw_params._entry_ptr.91, ptr @mt8183_da7219_max98357_driver, ptr @.str, ptr @mt8183_da7219_max98357_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mt8183_da7219_max98357_card, ptr @mt8183_da7219_i2s_ops, ptr @i2s3_max98357a_cpus, ptr @i2s3_max98357a_codecs, ptr @i2s3_max98357a_platforms, ptr @mt8183_da7219_rt1015_card, ptr @mt8183_da7219_rt1015_i2s_ops, ptr @i2s3_rt1015_cpus, ptr @i2s3_rt1015_codecs, ptr @i2s3_rt1015_platforms, ptr @mt8183_da7219_rt1015p_card, ptr @i2s3_rt1015p_cpus, ptr @i2s3_rt1015p_codecs, ptr @i2s3_rt1015p_platforms, ptr @.str.9, ptr @.str.10, ptr @mt8183_da7219_max98357_headset_dev, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @mt6358_codec_conf, ptr @mt8183_da7219_max98357_snd_controls, ptr @mt8183_da7219_max98357_dapm_routes, ptr @.str.19, ptr @playback1_cpus, ptr @playback1_codecs, ptr @playback1_platforms, ptr @mt8183_da7219_max98357_ops, ptr @.str.20, ptr @playback2_cpus, ptr @playback2_codecs, ptr @playback2_platforms, ptr @mt8183_da7219_max98357_bt_sco_ops, ptr @.str.21, ptr @playback3_cpus, ptr @playback3_codecs, ptr @playback3_platforms, ptr @.str.22, ptr @capture1_cpus, ptr @capture1_codecs, ptr @capture1_platforms, ptr @.str.23, ptr @capture2_cpus, ptr @capture2_codecs, ptr @capture2_platforms, ptr @.str.24, ptr @capture3_cpus, ptr @capture3_codecs, ptr @capture3_platforms, ptr @.str.25, ptr @capture_mono_cpus, ptr @capture_mono_codecs, ptr @capture_mono_platforms, ptr @.str.26, ptr @playback_hdmi_cpus, ptr @playback_hdmi_codecs, ptr @playback_hdmi_platforms, ptr @.str.27, ptr @primary_codec_cpus, ptr @primary_codec_codecs, ptr @primary_codec_platforms, ptr @.str.28, ptr @pcm1_cpus, ptr @pcm1_codecs, ptr @pcm1_platforms, ptr @.str.29, ptr @pcm2_cpus, ptr @pcm2_codecs, ptr @pcm2_platforms, ptr @.str.30, ptr @i2s0_cpus, ptr @i2s0_codecs, ptr @i2s0_platforms, ptr @mt8183_mt6358_i2s_ops, ptr @.str.31, ptr @i2s1_cpus, ptr @i2s1_codecs, ptr @i2s1_platforms, ptr @.str.32, ptr @i2s2_cpus, ptr @i2s2_codecs, ptr @i2s2_platforms, ptr @.str.33, ptr @i2s5_cpus, ptr @i2s5_codecs, ptr @i2s5_platforms, ptr @tdm_cpus, ptr @tdm_codecs, ptr @tdm_platforms, ptr @mt8183_da7219_dai_links, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mt8183_da7219_max98357_startup.rates, ptr @mt8183_da7219_max98357_startup.constraints_rates, ptr @mt8183_da7219_max98357_startup.channels, ptr @mt8183_da7219_max98357_startup.constraints_channels, ptr @.str.38, ptr @mt8183_da7219_max98357_bt_sco_startup.rates, ptr @mt8183_da7219_max98357_bt_sco_startup.constraints_rates, ptr @mt8183_da7219_max98357_bt_sco_startup.channels, ptr @mt8183_da7219_max98357_bt_sco_startup.constraints_channels, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.compoundliteral, ptr @mt8183_da7219_max98357_dapm_widgets, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @mt8183_da7219_rt1015_codec_conf, ptr @mt8183_da7219_rt1015_snd_controls, ptr @mt8183_da7219_rt1015_dapm_routes, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @mt8183_da7219_rt1015_dapm_widgets, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_dt_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_i2s_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_max98357a_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_max98357a_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_max98357a_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_i2s_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_codecs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015p_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_headset_dev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_dev_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_dev_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_codec_conf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_snd_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_dapm_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_bt_sco_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_i2s_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_dai_links to i32), i32 1972, i32 2464, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_startup.channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_bt_sco_startup.rates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_bt_sco_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_bt_sco_startup.channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_bt_sco_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_max98357_dapm_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_i2s_hw_params._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_i2s_hw_params._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_codec_conf to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_snd_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_dapm_routes to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_da7219_rt1015_i2s_hw_params._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_max98357_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8183_da7219_max98357_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8183_da7219_max98357_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8183_da7219_max98357_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_max98357_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i156 = alloca %struct.of_phandle_args, align 4
  %args.i150 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call3 = call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 5
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev8, align 4
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i150) #7
  %8 = call ptr @memset(ptr %args.i150, i32 255, i32 72)
  %call.i151 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i150) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i153, label %if.end6.of_parse_phandle.exit155_crit_edge

if.end6.of_parse_phandle.exit155_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit155

if.end.i153:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %args.i150 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i150, align 4
  br label %of_parse_phandle.exit155

of_parse_phandle.exit155:                         ; preds = %if.end.i153, %if.end6.of_parse_phandle.exit155_crit_edge
  %retval.0.i154 = phi ptr [ %10, %if.end.i153 ], [ null, %if.end6.of_parse_phandle.exit155_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i150) #7
  %dai_link12 = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 24
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 25
  %11 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp171 = icmp sgt i32 %12, 0
  br i1 %cmp171, label %land.rhs.lr.ph, label %of_parse_phandle.exit155.for.end_crit_edge

of_parse_phandle.exit155.for.end_crit_edge:       ; preds = %of_parse_phandle.exit155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %of_parse_phandle.exit155
  %cmp17 = icmp eq ptr %call3, @mt8183_da7219_max98357_card
  %cmp19 = icmp eq ptr %call3, @mt8183_da7219_rt1015_card
  %cmp30 = icmp eq ptr %call3, @mt8183_da7219_rt1015p_card
  %tobool44.not = icmp eq ptr %retval.0.i154, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0172 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %13 = ptrtoint ptr %dai_link12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dai_link12, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172
  %tobool13.not = icmp eq ptr %arrayidx, null
  br i1 %tobool13.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call14 = call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(5) @.str.8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %for.body.if.end43_crit_edge

for.body.if.end43_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then16:                                        ; preds = %for.body
  br i1 %cmp17, label %if.then16.if.end43.sink.split_crit_edge, label %if.else

if.then16.if.end43.sink.split_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split

if.else:                                          ; preds = %if.then16
  br i1 %cmp19, label %if.else.if.end43.sink.split_crit_edge, label %if.else29

if.else.if.end43.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split

if.else29:                                        ; preds = %if.else
  br i1 %cmp30, label %if.else29.if.end43.sink.split_crit_edge, label %if.else29.if.end43_crit_edge

if.else29.if.end43_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.else29.if.end43.sink.split_crit_edge:          ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.sink.split

if.end43.sink.split:                              ; preds = %if.else29.if.end43.sink.split_crit_edge, %if.else.if.end43.sink.split_crit_edge, %if.then16.if.end43.sink.split_crit_edge
  %mt8183_i2s_hw_params_fixup.sink = phi ptr [ @mt8183_i2s_hw_params_fixup, %if.then16.if.end43.sink.split_crit_edge ], [ @mt8183_rt1015_i2s_hw_params_fixup, %if.else.if.end43.sink.split_crit_edge ], [ @mt8183_rt1015_i2s_hw_params_fixup, %if.else29.if.end43.sink.split_crit_edge ]
  %mt8183_da7219_i2s_ops.sink = phi ptr [ @mt8183_da7219_i2s_ops, %if.then16.if.end43.sink.split_crit_edge ], [ @mt8183_da7219_rt1015_i2s_ops, %if.else.if.end43.sink.split_crit_edge ], [ @mt8183_da7219_i2s_ops, %if.else29.if.end43.sink.split_crit_edge ]
  %i2s3_max98357a_cpus.sink = phi ptr [ @i2s3_max98357a_cpus, %if.then16.if.end43.sink.split_crit_edge ], [ @i2s3_rt1015_cpus, %if.else.if.end43.sink.split_crit_edge ], [ @i2s3_rt1015p_cpus, %if.else29.if.end43.sink.split_crit_edge ]
  %i2s3_max98357a_codecs.sink = phi ptr [ @i2s3_max98357a_codecs, %if.then16.if.end43.sink.split_crit_edge ], [ @i2s3_rt1015_codecs, %if.else.if.end43.sink.split_crit_edge ], [ @i2s3_rt1015p_codecs, %if.else29.if.end43.sink.split_crit_edge ]
  %.sink = phi i32 [ 2, %if.then16.if.end43.sink.split_crit_edge ], [ 3, %if.else.if.end43.sink.split_crit_edge ], [ 2, %if.else29.if.end43.sink.split_crit_edge ]
  %i2s3_max98357a_platforms.sink = phi ptr [ @i2s3_max98357a_platforms, %if.then16.if.end43.sink.split_crit_edge ], [ @i2s3_rt1015_platforms, %if.else.if.end43.sink.split_crit_edge ], [ @i2s3_rt1015p_platforms, %if.else29.if.end43.sink.split_crit_edge ]
  %be_hw_params_fixup = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 15
  %17 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mt8183_i2s_hw_params_fixup.sink, ptr %be_hw_params_fixup, align 4
  %ops = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 16
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mt8183_da7219_i2s_ops.sink, ptr %ops, align 4
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 2
  %19 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %i2s3_max98357a_cpus.sink, ptr %cpus, align 4
  %num_cpus = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 3
  %20 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %num_cpus, align 4
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 4
  %21 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %i2s3_max98357a_codecs.sink, ptr %codecs, align 4
  %num_codecs = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 5
  %22 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %num_codecs, align 4
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 6
  %23 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %i2s3_max98357a_platforms.sink, ptr %platforms, align 4
  %num_platforms = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 7
  %24 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %num_platforms, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end43.sink.split, %if.else29.if.end43_crit_edge, %for.body.if.end43_crit_edge
  br i1 %tobool44.not, label %if.end43.if.end51_crit_edge, label %land.lhs.true

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end43
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %call46 = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(4) @.str.9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %codecs49 = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 4
  %27 = ptrtoint ptr %codecs49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %codecs49, align 4
  %of_node50 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %of_node50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i154, ptr %of_node50, align 4
  %ignore = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 18
  %30 = ptrtoint ptr %ignore to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %ignore, align 4
  %bf.clear = and i32 %bf.load, -65537
  store i32 %bf.clear, ptr %ignore, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %land.lhs.true.if.end51_crit_edge, %if.end43.if.end51_crit_edge
  %platforms52 = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0172, i32 6
  %31 = ptrtoint ptr %platforms52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %platforms52, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool54.not = icmp eq ptr %34, null
  br i1 %tobool54.not, label %if.then55, label %if.end51.for.inc_crit_edge

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %of_node57 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %of_node57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %4, ptr %of_node57, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then55, %if.end51.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0172, 1
  %36 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_links, align 4
  %cmp = icmp slt i32 %inc, %37
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %of_parse_phandle.exit155.for.end_crit_edge
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i156) #7
  %40 = call ptr @memset(ptr %args.i156, i32 255, i32 72)
  %call.i157 = call i32 @__of_parse_phandle_with_args(ptr noundef %39, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i156) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %of_parse_phandle.exit161, label %of_parse_phandle.exit161.thread

of_parse_phandle.exit161.thread:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i156) #7
  store ptr null, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @mt8183_da7219_max98357_headset_dev, i32 0, i32 0, i32 1), align 4
  br label %do.end66

of_parse_phandle.exit161:                         ; preds = %for.end
  %41 = ptrtoint ptr %args.i156 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %args.i156, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i156) #7
  store ptr %42, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @mt8183_da7219_max98357_headset_dev, i32 0, i32 0, i32 1), align 4
  %tobool62.not = icmp eq ptr %42, null
  br i1 %tobool62.not, label %of_parse_phandle.exit161.do.end66_crit_edge, label %if.end68

of_parse_phandle.exit161.do.end66_crit_edge:      ; preds = %of_parse_phandle.exit161
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end66:                                         ; preds = %of_parse_phandle.exit161.do.end66_crit_edge, %of_parse_phandle.exit161.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end68:                                         ; preds = %of_parse_phandle.exit161
  %call.i162 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 440, i32 noundef 3520) #7
  %tobool71.not = icmp eq ptr %call.i162, null
  br i1 %tobool71.not, label %if.end68.cleanup_crit_edge, label %if.end73

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 57
  %43 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i162, ptr %drvdata.i, align 4
  %call.i163 = call ptr @devm_pinctrl_get(ptr noundef %dev) #7
  %cmp.i.i = icmp ugt ptr %call.i163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end73.devm_pinctrl_get_select.exit_crit_edge, label %if.end.i164

if.end73.devm_pinctrl_get_select.exit_crit_edge:  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_pinctrl_get_select.exit

if.end.i164:                                      ; preds = %if.end73
  %call2.i = call ptr @pinctrl_lookup_state(ptr noundef %call.i163, ptr noundef nonnull @.str.14) #7
  %cmp.i1.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  call void @devm_pinctrl_put(ptr noundef %call.i163) #7
  br label %devm_pinctrl_get_select.exit

if.end6.i:                                        ; preds = %if.end.i164
  %call7.i = call i32 @pinctrl_select_state(ptr noundef %call.i163, ptr noundef %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end6.i.devm_pinctrl_get_select.exit_crit_edge

if.end6.i.devm_pinctrl_get_select.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_pinctrl_get_select.exit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @devm_pinctrl_put(ptr noundef %call.i163) #7
  %44 = inttoptr i32 %call7.i to ptr
  br label %devm_pinctrl_get_select.exit

devm_pinctrl_get_select.exit:                     ; preds = %if.then8.i, %if.end6.i.devm_pinctrl_get_select.exit_crit_edge, %if.then4.i, %if.end73.devm_pinctrl_get_select.exit_crit_edge
  %retval.0.i165 = phi ptr [ %call2.i, %if.then4.i ], [ %44, %if.then8.i ], [ %call.i163, %if.end73.devm_pinctrl_get_select.exit_crit_edge ], [ %call.i163, %if.end6.i.devm_pinctrl_get_select.exit_crit_edge ]
  %cmp.i166 = icmp ugt ptr %retval.0.i165, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then77, label %if.end83

if.then77:                                        ; preds = %devm_pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %retval.0.i165 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, i32 noundef %45) #10
  br label %cleanup

if.end83:                                         ; preds = %devm_pinctrl_get_select.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call85 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull %call3) #7
  call void @of_node_put(ptr noundef nonnull %4) #7
  call void @of_node_put(ptr noundef %retval.0.i154) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then77, %if.end68.cleanup_crit_edge, %do.end66, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %45, %if.then77 ], [ %call85, %if.end83 ], [ -22, %do.end66 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_i2s_hw_params_fixup(ptr nocapture noundef readnone %rtd, ptr nocapture noundef %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %and.i = and i32 %i.01.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %shr.i = lshr i32 %i.01.i, 5
  %arrayidx.i2 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i2, align 4
  %and1.i = and i32 %1, %neg.i
  store i32 %and1.i, ptr %arrayidx.i2, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %snd_mask_reset_range.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

snd_mask_reset_range.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %or.i.i.i = or i32 %3, 1024
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_rt1015_i2s_hw_params_fixup(ptr nocapture noundef readnone %rtd, ptr nocapture noundef %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %and.i = and i32 %i.01.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %shr.i = lshr i32 %i.01.i, 5
  %arrayidx.i2 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %0 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i2, align 4
  %and1.i = and i32 %1, %neg.i
  store i32 %and1.i, ptr %arrayidx.i2, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %snd_mask_reset_range.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

snd_mask_reset_range.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %or.i.i.i = or i32 %3, 64
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_max98357_hdmi_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %hdmi_jack = getelementptr inbounds %struct.mt8183_da7219_max98357_priv, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef 4, ptr noundef %hdmi_jack, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component, align 4
  %call4 = tail call i32 @snd_soc_component_set_jack(ptr noundef %11, ptr noundef %hdmi_jack, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_max98357_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8183_da7219_max98357_startup.constraints_rates) #7
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 6
  %2 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %channels_max, align 8
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8183_da7219_max98357_startup.constraints_channels) #7
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4, ptr %formats, align 8
  %call4 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_max98357_bt_sco_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8183_da7219_max98357_bt_sco_startup.constraints_rates) #7
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 6
  %2 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %channels_max, align 8
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8183_da7219_max98357_bt_sco_startup.constraints_channels) #7
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4, ptr %formats, align 8
  %call4 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef 16) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %3, 7
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_pinctrl_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %3, 8
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.63) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp244.not = icmp eq i32 %11, 0
  br i1 %cmp244.not, label %if.end.for.end_crit_edge, label %land.rhs.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %rem = urem i32 %3, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp16 = icmp eq i32 %rem, 0
  %. = select i1 %cmp16, i32 98304000, i32 90316800
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %j.046 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %ret.045 = phi i32 [ %call1, %land.rhs.lr.ph ], [ %ret.1, %for.inc.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dais, align 4
  %14 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cpus, align 4
  %add = add i32 %15, %j.046
  %arrayidx4 = getelementptr ptr, ptr %13, i32 %add
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %component, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(14) @.str.50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then7:                                         ; preds = %for.body
  %call8 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %17, i32 noundef 0, i32 noundef %mul, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %do.end13, label %if.then7.if.end15_crit_edge

if.then7.if.end15_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.66) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.then7.if.end15_crit_edge
  %call19 = tail call i32 @snd_soc_dai_set_pll(ptr noundef nonnull %17, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef %.) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end15.for.inc_crit_edge, label %do.end24

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.69, i32 noundef %call19) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end24, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.045, %for.body.for.inc_crit_edge ], [ %call19, %do.end24 ], [ 0, %if.end15.for.inc_crit_edge ]
  %inc = add nuw i32 %j.046, 1
  %26 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_codecs, align 4
  %cmp2 = icmp ult i32 %inc, %27
  br i1 %cmp2, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call1, %if.end.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ], [ %ret.045, %land.rhs.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %j.017 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %ret.016 = phi i32 [ 0, %land.rhs.lr.ph ], [ %ret.1, %for.inc.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpus, align 4
  %add = add i32 %7, %j.017
  %arrayidx = getelementptr ptr, ptr %5, i32 %add
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %component, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call = tail call i32 @strcmp(ptr noundef %13, ptr noundef nonnull dereferenceable(14) @.str.50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call2 = tail call i32 @snd_soc_dai_set_pll(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.71, i32 noundef %call2) #10
  br label %for.end

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.016, %for.body.for.inc_crit_edge ], [ %call2, %if.then.for.inc_crit_edge ]
  %inc = add nuw i32 %j.017, 1
  %16 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.2 = phi i32 [ %call2, %do.end ], [ 0, %entry.for.end_crit_edge ], [ %ret.016, %land.rhs.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_rt1015_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43.not = icmp eq i32 %3, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %mul = shl i32 %5, 6
  %mul7 = shl i32 %5, 8
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.044 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cpus, align 4
  %add = add i32 %9, %i.044
  %arrayidx = getelementptr ptr, ptr %7, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %component, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(14) @.str.76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %call5 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(14) @.str.78) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %call8 = tail call i32 @snd_soc_dai_set_pll(ptr noundef nonnull %11, i32 noundef 0, i32 noundef 1, i32 noundef %mul, i32 noundef %mul7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.88) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call12 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %11, i32 noundef 1, i32 noundef %mul7, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end.for.inc_crit_edge, label %do.end17

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.66) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw i32 %i.044, 1
  %20 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %call21 = tail call i32 @mt8183_da7219_i2s_hw_params(ptr noundef %substream, ptr noundef %params)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end17, %do.end
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call12, %do.end17 ], [ %call21, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_da7219_max98357_headset_init(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef 30727, ptr noundef %3, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %jack = getelementptr inbounds %struct.snd_soc_jack, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jack, align 4
  %call4 = tail call i32 @snd_jack_set_key(ptr noundef %5, i32 noundef 16384, i32 noundef 164) #7
  %6 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jack, align 4
  %call7 = tail call i32 @snd_jack_set_key(ptr noundef %7, i32 noundef 8192, i32 noundef 115) #7
  %8 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jack, align 4
  %call10 = tail call i32 @snd_jack_set_key(ptr noundef %9, i32 noundef 4096, i32 noundef 114) #7
  %10 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jack, align 4
  %call13 = tail call i32 @snd_jack_set_key(ptr noundef %11, i32 noundef 2048, i32 noundef 582) #7
  tail call void @da7219_aad_jack_det(ptr noundef %component, ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @da7219_aad_jack_det(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !163, !165, !167, !168, !169, !171, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !188, !190, !192, !193, !195, !197, !198, !199, !201, !203, !205, !207, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !232, !233, !235, !237, !239, !241, !243, !245, !247, !249, !250, !252, !253, !255, !257, !259, !261, !263, !265, !267, !268, !269, !270, !272, !273, !275, !276, !277, !278, !280, !282, !284, !285, !286, !287, !289, !291}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @__initcall__kmod_mt8183_da7219_max98357__294_817_mt8183_da7219_max98357_driver_init6, !1, !"__initcall__kmod_mt8183_da7219_max98357__294_817_mt8183_da7219_max98357_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 817, i32 1}
!2 = !{ptr @__exitcall_mt8183_da7219_max98357_driver_exit, !1, !"__exitcall_mt8183_da7219_max98357_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 820, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 821, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 822, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias299, !11, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 823, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 808, i32 11}
!14 = !{ptr @mt8183_da7219_max98357_driver, !15, !"mt8183_da7219_max98357_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 806, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 691, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 693, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt8183_da7219_max98357_dev_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt8183_da7219_max98357_dev_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 703, i32 11}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 706, i32 30}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 749, i32 44}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 760, i32 6}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 762, i32 3}
!36 = !{ptr @mt8183_da7219_max98357_dev_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt8183_da7219_max98357_dev_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 773, i32 48}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 776, i32 3}
!42 = !{ptr @mt8183_da7219_max98357_dev_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt8183_da7219_max98357_dev_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 597, i32 10}
!46 = !{ptr @mt8183_da7219_max98357_card, !47, !"mt8183_da7219_max98357_card", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 596, i32 28}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 378, i32 11}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 388, i32 11}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 398, i32 11}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 407, i32 11}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 417, i32 11}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 426, i32 11}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 436, i32 11}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 445, i32 11}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 455, i32 11}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 463, i32 11}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 471, i32 11}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 479, i32 11}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 488, i32 11}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 497, i32 11}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 512, i32 11}
!78 = !{ptr @mt8183_da7219_dai_links, !79, !"mt8183_da7219_dai_links", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 375, i32 32}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 260, i32 1}
!82 = !{ptr @playback1_cpus, !81, !"playback1_cpus", i1 false, i1 false}
!83 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @playback1_codecs, !81, !"playback1_codecs", i1 false, i1 false}
!86 = !{ptr @playback1_platforms, !81, !"playback1_platforms", i1 false, i1 false}
!87 = !{ptr @mt8183_da7219_max98357_ops, !88, !"mt8183_da7219_max98357_ops", i1 false, i1 false}
!88 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 215, i32 33}
!89 = !{ptr @mt8183_da7219_max98357_startup.rates, !90, !"rates", i1 false, i1 false}
!90 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 183, i32 28}
!91 = !{ptr @mt8183_da7219_max98357_startup.constraints_rates, !92, !"constraints_rates", i1 false, i1 false}
!92 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 186, i32 49}
!93 = !{ptr @mt8183_da7219_max98357_startup.channels, !94, !"channels", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 191, i32 28}
!95 = !{ptr @mt8183_da7219_max98357_startup.constraints_channels, !96, !"constraints_channels", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 194, i32 49}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 265, i32 1}
!99 = !{ptr @playback2_cpus, !98, !"playback2_cpus", i1 false, i1 false}
!100 = !{ptr @playback2_codecs, !98, !"playback2_codecs", i1 false, i1 false}
!101 = !{ptr @playback2_platforms, !98, !"playback2_platforms", i1 false, i1 false}
!102 = !{ptr @mt8183_da7219_max98357_bt_sco_ops, !103, !"mt8183_da7219_max98357_bt_sco_ops", i1 false, i1 false}
!103 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 255, i32 33}
!104 = !{ptr @mt8183_da7219_max98357_bt_sco_startup.rates, !105, !"rates", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 223, i32 28}
!106 = !{ptr @mt8183_da7219_max98357_bt_sco_startup.constraints_rates, !107, !"constraints_rates", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 226, i32 49}
!108 = !{ptr @mt8183_da7219_max98357_bt_sco_startup.channels, !109, !"channels", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 231, i32 28}
!110 = !{ptr @mt8183_da7219_max98357_bt_sco_startup.constraints_channels, !111, !"constraints_channels", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 234, i32 49}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 270, i32 1}
!114 = !{ptr @playback3_cpus, !113, !"playback3_cpus", i1 false, i1 false}
!115 = !{ptr @playback3_codecs, !113, !"playback3_codecs", i1 false, i1 false}
!116 = !{ptr @playback3_platforms, !113, !"playback3_platforms", i1 false, i1 false}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 275, i32 1}
!119 = !{ptr @capture1_cpus, !118, !"capture1_cpus", i1 false, i1 false}
!120 = !{ptr @capture1_codecs, !118, !"capture1_codecs", i1 false, i1 false}
!121 = !{ptr @capture1_platforms, !118, !"capture1_platforms", i1 false, i1 false}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 280, i32 1}
!124 = !{ptr @capture2_cpus, !123, !"capture2_cpus", i1 false, i1 false}
!125 = !{ptr @capture2_codecs, !123, !"capture2_codecs", i1 false, i1 false}
!126 = !{ptr @capture2_platforms, !123, !"capture2_platforms", i1 false, i1 false}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 285, i32 1}
!129 = !{ptr @capture3_cpus, !128, !"capture3_cpus", i1 false, i1 false}
!130 = !{ptr @capture3_codecs, !128, !"capture3_codecs", i1 false, i1 false}
!131 = !{ptr @capture3_platforms, !128, !"capture3_platforms", i1 false, i1 false}
!132 = !{ptr @.str.43, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 290, i32 1}
!134 = !{ptr @capture_mono_cpus, !133, !"capture_mono_cpus", i1 false, i1 false}
!135 = !{ptr @capture_mono_codecs, !133, !"capture_mono_codecs", i1 false, i1 false}
!136 = !{ptr @capture_mono_platforms, !133, !"capture_mono_platforms", i1 false, i1 false}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 295, i32 1}
!139 = !{ptr @playback_hdmi_cpus, !138, !"playback_hdmi_cpus", i1 false, i1 false}
!140 = !{ptr @playback_hdmi_codecs, !138, !"playback_hdmi_codecs", i1 false, i1 false}
!141 = !{ptr @playback_hdmi_platforms, !138, !"playback_hdmi_platforms", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 301, i32 1}
!144 = !{ptr @primary_codec_cpus, !143, !"primary_codec_cpus", i1 false, i1 false}
!145 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.47, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @primary_codec_codecs, !143, !"primary_codec_codecs", i1 false, i1 false}
!148 = !{ptr @primary_codec_platforms, !143, !"primary_codec_platforms", i1 false, i1 false}
!149 = !{ptr @pcm1_cpus, !150, !"pcm1_cpus", i1 false, i1 false}
!150 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 306, i32 1}
!151 = !{ptr @pcm1_codecs, !150, !"pcm1_codecs", i1 false, i1 false}
!152 = !{ptr @pcm1_platforms, !150, !"pcm1_platforms", i1 false, i1 false}
!153 = !{ptr @pcm2_cpus, !154, !"pcm2_cpus", i1 false, i1 false}
!154 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 311, i32 1}
!155 = !{ptr @pcm2_codecs, !154, !"pcm2_codecs", i1 false, i1 false}
!156 = !{ptr @pcm2_platforms, !154, !"pcm2_platforms", i1 false, i1 false}
!157 = !{ptr @i2s0_cpus, !158, !"i2s0_cpus", i1 false, i1 false}
!158 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 316, i32 1}
!159 = !{ptr @.str.48, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.49, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @i2s0_codecs, !158, !"i2s0_codecs", i1 false, i1 false}
!162 = !{ptr @i2s0_platforms, !158, !"i2s0_platforms", i1 false, i1 false}
!163 = !{ptr @mt8183_mt6358_i2s_ops, !164, !"mt8183_mt6358_i2s_ops", i1 false, i1 false}
!164 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 44, i32 33}
!165 = !{ptr @i2s1_cpus, !166, !"i2s1_cpus", i1 false, i1 false}
!166 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 321, i32 1}
!167 = !{ptr @i2s1_codecs, !166, !"i2s1_codecs", i1 false, i1 false}
!168 = !{ptr @i2s1_platforms, !166, !"i2s1_platforms", i1 false, i1 false}
!169 = !{ptr @i2s2_cpus, !170, !"i2s2_cpus", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 326, i32 1}
!171 = !{ptr @.str.50, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.51, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @i2s2_codecs, !170, !"i2s2_codecs", i1 false, i1 false}
!174 = !{ptr @i2s2_platforms, !170, !"i2s2_platforms", i1 false, i1 false}
!175 = !{ptr @i2s5_cpus, !176, !"i2s5_cpus", i1 false, i1 false}
!176 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 350, i32 1}
!177 = !{ptr @i2s5_codecs, !176, !"i2s5_codecs", i1 false, i1 false}
!178 = !{ptr @i2s5_platforms, !176, !"i2s5_platforms", i1 false, i1 false}
!179 = !{ptr @tdm_cpus, !180, !"tdm_cpus", i1 false, i1 false}
!180 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 355, i32 1}
!181 = !{ptr @.str.52, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @tdm_codecs, !180, !"tdm_codecs", i1 false, i1 false}
!183 = !{ptr @tdm_platforms, !180, !"tdm_platforms", i1 false, i1 false}
!184 = !{ptr @.str.53, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 366, i32 41}
!186 = !{ptr @.str.54, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 576, i32 18}
!188 = !{ptr @mt6358_codec_conf, !189, !"mt6358_codec_conf", i1 false, i1 false}
!189 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 573, i32 34}
!190 = !{ptr @.str.55, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 581, i32 2}
!192 = !{ptr @.str.56, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mt8183_da7219_max98357_snd_controls, !194, !"mt8183_da7219_max98357_snd_controls", i1 false, i1 false}
!194 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 580, i32 38}
!195 = !{ptr @.str.57, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 587, i32 2}
!197 = !{ptr @.str.58, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.59, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mt8183_da7219_max98357_dapm_widgets, !200, !"mt8183_da7219_max98357_dapm_widgets", i1 false, i1 false}
!200 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 585, i32 28}
!201 = !{ptr @.str.61, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 592, i32 21}
!203 = !{ptr @.str.62, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 593, i32 3}
!205 = !{ptr @mt8183_da7219_max98357_dapm_routes, !206, !"mt8183_da7219_max98357_dapm_routes", i1 false, i1 false}
!206 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 591, i32 40}
!207 = !{ptr @mt8183_da7219_i2s_ops, !208, !"mt8183_da7219_i2s_ops", i1 false, i1 false}
!208 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 111, i32 33}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 62, i32 3}
!211 = !{ptr @.str.64, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @mt8183_da7219_i2s_hw_params._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @mt8183_da7219_i2s_hw_params._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.66, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 71, i32 5}
!216 = !{ptr @mt8183_da7219_i2s_hw_params._entry.65, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @mt8183_da7219_i2s_hw_params._entry_ptr.67, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.69, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 82, i32 5}
!220 = !{ptr @mt8183_da7219_i2s_hw_params._entry.68, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @mt8183_da7219_i2s_hw_params._entry_ptr.70, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.71, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 101, i32 5}
!224 = !{ptr @.str.72, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @mt8183_da7219_hw_free._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @mt8183_da7219_hw_free._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @i2s3_max98357a_cpus, !228, !"i2s3_max98357a_cpus", i1 false, i1 false}
!228 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 331, i32 1}
!229 = !{ptr @.str.73, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.74, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @i2s3_max98357a_codecs, !228, !"i2s3_max98357a_codecs", i1 false, i1 false}
!232 = !{ptr @i2s3_max98357a_platforms, !228, !"i2s3_max98357a_platforms", i1 false, i1 false}
!233 = !{ptr @.str.75, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 648, i32 10}
!235 = !{ptr @mt8183_da7219_rt1015_card, !236, !"mt8183_da7219_rt1015_card", i1 false, i1 false}
!236 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 647, i32 28}
!237 = !{ptr @.str.76, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 619, i32 10}
!239 = !{ptr @.str.77, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 620, i32 18}
!241 = !{ptr @.str.78, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 623, i32 10}
!243 = !{ptr @.str.79, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 624, i32 18}
!245 = !{ptr @mt8183_da7219_rt1015_codec_conf, !246, !"mt8183_da7219_rt1015_codec_conf", i1 false, i1 false}
!246 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 613, i32 34}
!247 = !{ptr @.str.80, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 629, i32 2}
!249 = !{ptr @.str.81, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.82, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 630, i32 2}
!252 = !{ptr @.str.83, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @mt8183_da7219_rt1015_snd_controls, !254, !"mt8183_da7219_rt1015_snd_controls", i1 false, i1 false}
!254 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 628, i32 38}
!255 = !{ptr @mt8183_da7219_rt1015_dapm_widgets, !256, !"mt8183_da7219_rt1015_dapm_widgets", i1 false, i1 false}
!256 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 634, i32 28}
!257 = !{ptr @.str.86, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 642, i32 21}
!259 = !{ptr @.str.87, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 643, i32 22}
!261 = !{ptr @mt8183_da7219_rt1015_dapm_routes, !262, !"mt8183_da7219_rt1015_dapm_routes", i1 false, i1 false}
!262 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 641, i32 40}
!263 = !{ptr @mt8183_da7219_rt1015_i2s_ops, !264, !"mt8183_da7219_rt1015_i2s_ops", i1 false, i1 false}
!264 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 150, i32 33}
!265 = !{ptr @.str.88, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 132, i32 5}
!267 = !{ptr @.str.89, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @mt8183_da7219_rt1015_i2s_hw_params._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @mt8183_da7219_rt1015_i2s_hw_params._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @mt8183_da7219_rt1015_i2s_hw_params._entry.90, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 141, i32 5}
!272 = !{ptr @mt8183_da7219_rt1015_i2s_hw_params._entry_ptr.91, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @i2s3_rt1015_cpus, !274, !"i2s3_rt1015_cpus", i1 false, i1 false}
!274 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 337, i32 1}
!275 = !{ptr @.str.92, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @i2s3_rt1015_codecs, !274, !"i2s3_rt1015_codecs", i1 false, i1 false}
!277 = !{ptr @i2s3_rt1015_platforms, !274, !"i2s3_rt1015_platforms", i1 false, i1 false}
!278 = !{ptr @.str.93, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 665, i32 10}
!280 = !{ptr @mt8183_da7219_rt1015p_card, !281, !"mt8183_da7219_rt1015p_card", i1 false, i1 false}
!281 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 664, i32 28}
!282 = !{ptr @i2s3_rt1015p_cpus, !283, !"i2s3_rt1015p_cpus", i1 false, i1 false}
!283 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 344, i32 1}
!284 = !{ptr @.str.94, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @i2s3_rt1015p_codecs, !283, !"i2s3_rt1015p_codecs", i1 false, i1 false}
!286 = !{ptr @i2s3_rt1015p_platforms, !283, !"i2s3_rt1015p_platforms", i1 false, i1 false}
!287 = !{ptr @mt8183_da7219_max98357_headset_dev, !288, !"mt8183_da7219_max98357_headset_dev", i1 false, i1 false}
!288 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 568, i32 31}
!289 = !{ptr @.str.95, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 544, i32 9}
!291 = !{ptr @mt8183_da7219_max98357_dt_match, !292, !"mt8183_da7219_max98357_dt_match", i1 false, i1 false}
!292 = !{!"../sound/soc/mediatek/mt8183/mt8183-da7219-max98357.c", i32 789, i32 34}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
