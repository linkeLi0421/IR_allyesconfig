; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c"
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
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
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
%struct.mt8183_mt6358_ts3a227_max98357_priv = type { ptr, [4 x ptr], %struct.snd_soc_jack, %struct.snd_soc_jack }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
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

@__initcall__kmod_mt8183_mt6358_ts3a227_max98357__240_821_mt8183_mt6358_ts3a227_max98357_driver_init6 = internal global ptr @mt8183_mt6358_ts3a227_max98357_driver_init, section ".initcall6.init", align 4
@mt8183_mt6358_ts3a227_max98357_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8183_mt6358_ts3a227_max98357_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8183_mt6358_ts3a227_max98357_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8183_mt6358_ts3a227_max98357_driver_exit = internal global ptr @mt8183_mt6358_ts3a227_max98357_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [98 x i8] c"mt8183_mt6358_ts3a227_max98357.description=MT8183-MT6358-TS3A227-MAX98357 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [77 x i8] c"mt8183_mt6358_ts3a227_max98357.author=Shunli Wang <shunli.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [93 x i8] c"mt8183_mt6358_ts3a227_max98357.file=sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [46 x i8] c"mt8183_mt6358_ts3a227_max98357.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [77 x i8] c"mt8183_mt6358_ts3a227_max98357.alias=mt8183_mt6358_ts3a227_max98357 soc card\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt8183_mt6358_ts3a227\00", [42 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183_mt6358_ts3a227_max98357\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mt6358_ts3a227_max98357_card }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183_mt6358_ts3a227_max98357b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mt6358_ts3a227_max98357b_card }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183_mt6358_ts3a227_rt1015\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mt6358_ts3a227_rt1015_card }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183_mt6358_ts3a227_rt1015p\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_mt6358_ts3a227_rt1015p_card }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 645, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mt8183_mt6358_ts3a227_max98357_dev_probe\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr = internal global ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,ec-codec\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,hdmi-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Wake on Voice\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S3\00", [27 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.26, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8183_mt6358_ts3a227_dai_links, i32 18, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357b_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.62, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8183_mt6358_ts3a227_dai_links, i32 18, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@mt8183_mt6358_i2s_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8183_mt6358_i2s_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2s3_max98357a_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.10 }], [20 x i8] zeroinitializer }, align 32
@i2s3_max98357a_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.65, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@i2s3_max98357a_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_mt6358_ts3a227_rt1015_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.67, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8183_mt6358_ts3a227_dai_links, i32 18, %struct.list_head zeroinitializer, i32 0, ptr @mt8183_mt6358_ts3a227_rt1015_amp_conf, i32 2, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@mt8183_mt6358_rt1015_i2s_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8183_mt6358_rt1015_i2s_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2s3_rt1015_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.10 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.79 }, %struct.snd_soc_dai_link_component { ptr @.str.70, ptr null, ptr @.str.79 }], [40 x i8] zeroinitializer }, align 32
@i2s3_rt1015_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_mt6358_ts3a227_rt1015p_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.80, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8183_mt6358_ts3a227_dai_links, i32 18, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.10 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.81, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDM\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,headset-codec\00", [41 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_headset_dev = internal global { %struct.snd_soc_aux_dev, [16 x i8] } { %struct.snd_soc_aux_dev { %struct.snd_soc_dai_link_component zeroinitializer, ptr @mt8183_mt6358_ts3a227_max98357_headset_init }, [16 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s devm_pinctrl_get failed\0A\00", [36 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.16 = internal global ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.14, section ".printk_index", align 4
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 758, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s Can't find pin state %s %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.20 = internal global ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.17, section ".printk_index", align 4
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 768, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s failed to select state %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.23 = internal global ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.21, section ".printk_index", align 4
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 777, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.25 = internal global ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mt8183_mt6358_ts3a227_max98357\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_1\00", [21 x i8] zeroinitializer }, align 32
@playback1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.42 }], [20 x i8] zeroinitializer }, align 32
@playback1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@playback1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_mt6358_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8183_mt6358_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_2\00", [21 x i8] zeroinitializer }, align 32
@playback2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.45 }], [20 x i8] zeroinitializer }, align 32
@playback2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@playback2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_mt6358_ts3a227_max98357_bt_sco_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_3\00", [21 x i8] zeroinitializer }, align 32
@playback3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.46 }], [20 x i8] zeroinitializer }, align 32
@playback3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@playback3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_1\00", [22 x i8] zeroinitializer }, align 32
@capture1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.47 }], [20 x i8] zeroinitializer }, align 32
@capture1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@capture1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_2\00", [22 x i8] zeroinitializer }, align 32
@capture2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.48 }], [20 x i8] zeroinitializer }, align 32
@capture2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@capture2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_3\00", [22 x i8] zeroinitializer }, align 32
@capture3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.49 }], [20 x i8] zeroinitializer }, align 32
@capture3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@capture3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture_Mono_1\00", [17 x i8] zeroinitializer }, align 32
@capture_mono_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.50 }], [20 x i8] zeroinitializer }, align 32
@capture_mono_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@capture_mono_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Playback_HDMI\00", [18 x i8] zeroinitializer }, align 32
@playback_hdmi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.51 }], [20 x i8] zeroinitializer }, align 32
@playback_hdmi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@playback_hdmi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@wake_on_voice_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@wake_on_voice_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@wake_on_voice_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_mt6358_ts3a227_max98357_wov_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8183_mt6358_ts3a227_max98357_wov_startup, ptr @mt8183_mt6358_ts3a227_max98357_wov_shutdown, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Primary Codec\00", [18 x i8] zeroinitializer }, align 32
@primary_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.53 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 1\00", [26 x i8] zeroinitializer }, align 32
@pcm1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.36 }], [20 x i8] zeroinitializer }, align 32
@pcm1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@pcm1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 2\00", [26 x i8] zeroinitializer }, align 32
@pcm2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.37 }], [20 x i8] zeroinitializer }, align 32
@pcm2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@pcm2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S0\00", [27 x i8] zeroinitializer }, align 32
@i2s0_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.38 }], [20 x i8] zeroinitializer }, align 32
@i2s0_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.56, ptr null, ptr @.str.57 }], [20 x i8] zeroinitializer }, align 32
@i2s0_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@i2s1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.39 }], [20 x i8] zeroinitializer }, align 32
@i2s1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@i2s1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@i2s2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.11 }], [20 x i8] zeroinitializer }, align 32
@i2s2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.43, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@i2s2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S5\00", [27 x i8] zeroinitializer }, align 32
@i2s5_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.40 }], [20 x i8] zeroinitializer }, align 32
@i2s5_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.56, ptr null, ptr @.str.57 }], [20 x i8] zeroinitializer }, align 32
@i2s5_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tdm_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.12 }], [20 x i8] zeroinitializer }, align 32
@tdm_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.58 }], [20 x i8] zeroinitializer }, align 32
@tdm_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8183_mt6358_tdm_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8183_mt6358_tdm_startup, ptr @mt8183_mt6358_tdm_shutdown, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_dai_links = internal global { [18 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [536 x i8] } { [18 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.27, ptr @.str.27, ptr @playback1_cpus, i32 1, ptr @playback1_codecs, i32 1, ptr @playback1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_mt6358_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.28, ptr @.str.28, ptr @playback2_cpus, i32 1, ptr @playback2_codecs, i32 1, ptr @playback2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.29, ptr @.str.29, ptr @playback3_cpus, i32 1, ptr @playback3_codecs, i32 1, ptr @playback3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.30, ptr @.str.30, ptr @capture1_cpus, i32 1, ptr @capture1_codecs, i32 1, ptr @capture1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.31, ptr @.str.31, ptr @capture2_cpus, i32 1, ptr @capture2_codecs, i32 1, ptr @capture2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.32, ptr @.str.32, ptr @capture3_cpus, i32 1, ptr @capture3_codecs, i32 1, ptr @capture3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_mt6358_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.33, ptr @.str.33, ptr @capture_mono_cpus, i32 1, ptr @capture_mono_codecs, i32 1, ptr @capture_mono_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.34, ptr @.str.34, ptr @playback_hdmi_cpus, i32 1, ptr @playback_hdmi_codecs, i32 1, ptr @playback_hdmi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.9, ptr @.str.9, ptr @wake_on_voice_cpus, i32 1, ptr @wake_on_voice_codecs, i32 1, ptr @wake_on_voice_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8183_mt6358_ts3a227_max98357_wov_ops, ptr null, i8 16, i8 1, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.35, ptr null, ptr @primary_codec_cpus, i32 1, ptr @primary_codec_codecs, i32 1, ptr @primary_codec_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.36, ptr null, ptr @pcm1_cpus, i32 1, ptr @pcm1_codecs, i32 1, ptr @pcm1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.37, ptr null, ptr @pcm2_cpus, i32 1, ptr @pcm2_codecs, i32 1, ptr @pcm2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.38, ptr null, ptr @i2s0_cpus, i32 1, ptr @i2s0_codecs, i32 1, ptr @i2s0_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_i2s_ops, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.39, ptr null, ptr @i2s1_cpus, i32 1, ptr @i2s1_codecs, i32 1, ptr @i2s1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_i2s_ops, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.11, ptr null, ptr @i2s2_cpus, i32 1, ptr @i2s2_codecs, i32 1, ptr @i2s2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_i2s_ops, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.10, ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.40, ptr null, ptr @i2s5_cpus, i32 1, ptr @i2s5_codecs, i32 1, ptr @i2s5_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_i2s_ops, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.12, ptr null, ptr @tdm_cpus, i32 1, ptr @tdm_codecs, i32 1, ptr @tdm_platforms, i32 1, i32 0, ptr null, i32 0, i32 5121, [2 x i32] zeroinitializer, ptr @mt8183_mt6358_ts3a227_max98357_hdmi_init, ptr null, ptr @mt8183_i2s_hw_params_fixup, ptr @mt8183_mt6358_tdm_ops, ptr null, i8 17, i8 33, i8 0, %struct.snd_soc_dobj zeroinitializer }], [536 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@mt8183_mt6358_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8183_mt6358_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_mt6358_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8183_mt6358_startup.channels = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@mt8183_mt6358_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_mt6358_startup.channels, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_bt_sco_startup.rates = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8000, i32 16000], [24 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.rates, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_bt_sco_startup.channels = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.channels, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_1\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.52, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mt8183_mt6358_ts3a227_max98357_wov_shutdown\00", [52 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry_ptr = internal global ptr @mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry, section ".printk_index", align 4
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADDA\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6358-sound\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6358-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bt-sco\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bt-sco-pcm\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI Jack\00", [22 x i8] zeroinitializer }, align 32
@mt8183_mt6358_tdm_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.60, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt8183_mt6358_tdm_startup\00", [38 x i8] zeroinitializer }, align 32
@mt8183_mt6358_tdm_startup._entry_ptr = internal global ptr @mt8183_mt6358_tdm_startup._entry, section ".printk_index", align 4
@mt8183_mt6358_tdm_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.61, ptr @.str.4, i32 335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8183_mt6358_tdm_shutdown\00", [37 x i8] zeroinitializer }, align 32
@mt8183_mt6358_tdm_shutdown._entry_ptr = internal global ptr @mt8183_mt6358_tdm_shutdown._entry, section ".printk_index", align 4
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mt8183_mt6358_ts3a227_max98357b\00", [32 x i8] zeroinitializer }, align 32
@mt8183_i2s_hw_params_fixup.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.63, ptr @.str.4, ptr @.str.64, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8183_i2s_hw_params_fixup\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(), fix format to S32_LE\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max98357a\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt8183_mt6358_ts3a227_rt1015\00", [35 x i8] zeroinitializer }, align 32
@mt8183_mt6358_ts3a227_rt1015_amp_conf = internal global { [2 x %struct.snd_soc_codec_conf], [32 x i8] } { [2 x %struct.snd_soc_codec_conf] [%struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr null }, ptr @.str.69 }, %struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.70, ptr null, ptr null }, ptr @.str.71 }], [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1015.6-0028\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1015.6-0029\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@mt8183_rt1015_i2s_hw_params_fixup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.72, ptr @.str.4, ptr @.str.73, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"mt8183_rt1015_i2s_hw_params_fixup\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(), fix format to S24_LE\0A\00", [36 x i8] zeroinitializer }, align 32
@mt8183_mt6358_rt1015_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.4, i32 74, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set pll\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mt8183_mt6358_rt1015_i2s_hw_params\00", [61 x i8] zeroinitializer }, align 32
@mt8183_mt6358_rt1015_i2s_hw_params._entry_ptr = internal global ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry, section ".printk_index", align 4
@mt8183_mt6358_rt1015_i2s_hw_params._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.4, i32 81, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to set sysclk\0A\00", [42 x i8] zeroinitializer }, align 32
@mt8183_mt6358_rt1015_i2s_hw_params._entry_ptr.78 = internal global ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt1015-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt8183_mt6358_ts3a227_rt1015p\00", [34 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt1015p\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_tdm_out_on\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_tdm_out_off\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wov\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.87 = private unnamed_addr constant [38 x i8] c"mt8183_mt6358_ts3a227_max98357_driver\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 810, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 812, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant [40 x i8] c"mt8183_mt6358_ts3a227_max98357_dt_match\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 789, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 643, i32 7 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 645, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 654, i32 49 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 656, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 659, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 670, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant [36 x i8] c"mt8183_mt6358_ts3a227_max98357_card\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 564, i32 28 }
@___asan_gen_.132 = private unnamed_addr constant [37 x i8] c"mt8183_mt6358_ts3a227_max98357b_card\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 571, i32 28 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"mt8183_mt6358_i2s_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 54, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant [20 x i8] c"i2s3_max98357a_cpus\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [22 x i8] c"i2s3_max98357a_codecs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [25 x i8] c"i2s3_max98357a_platforms\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [34 x i8] c"mt8183_mt6358_ts3a227_rt1015_card\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 589, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant [29 x i8] c"mt8183_mt6358_rt1015_i2s_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 90, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"i2s3_rt1015_cpus\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"i2s3_rt1015_codecs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [22 x i8] c"i2s3_rt1015_platforms\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [35 x i8] c"mt8183_mt6358_ts3a227_rt1015p_card\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 598, i32 28 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"i2s3_rt1015p_cpus\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"i2s3_rt1015p_codecs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [23 x i8] c"i2s3_rt1015p_platforms\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 715, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 722, i32 44 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 733, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant [43 x i8] c"mt8183_mt6358_ts3a227_max98357_headset_dev\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 628, i32 31 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 747, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 757, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 766, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 775, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 565, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 397, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"playback1_cpus\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"playback1_codecs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c"playback1_platforms\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [18 x i8] c"mt8183_mt6358_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 155, i32 33 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 407, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"playback2_cpus\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"playback2_codecs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"playback2_platforms\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [42 x i8] c"mt8183_mt6358_ts3a227_max98357_bt_sco_ops\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 195, i32 33 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 417, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"playback3_cpus\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"playback3_codecs\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [20 x i8] c"playback3_platforms\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 426, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant [14 x i8] c"capture1_cpus\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [16 x i8] c"capture1_codecs\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [19 x i8] c"capture1_platforms\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 436, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant [14 x i8] c"capture2_cpus\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [16 x i8] c"capture2_codecs\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"capture2_platforms\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 445, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant [14 x i8] c"capture3_cpus\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [16 x i8] c"capture3_codecs\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [19 x i8] c"capture3_platforms\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 455, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant [18 x i8] c"capture_mono_cpus\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c"capture_mono_codecs\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [23 x i8] c"capture_mono_platforms\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 464, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant [19 x i8] c"playback_hdmi_cpus\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [21 x i8] c"playback_hdmi_codecs\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [24 x i8] c"playback_hdmi_platforms\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [19 x i8] c"wake_on_voice_cpus\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [21 x i8] c"wake_on_voice_codecs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [24 x i8] c"wake_on_voice_platforms\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 240, i32 1 }
@___asan_gen_.324 = private unnamed_addr constant [39 x i8] c"mt8183_mt6358_ts3a227_max98357_wov_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 373, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 483, i32 11 }
@___asan_gen_.330 = private unnamed_addr constant [19 x i8] c"primary_codec_cpus\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [21 x i8] c"primary_codec_codecs\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [24 x i8] c"primary_codec_platforms\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 491, i32 11 }
@___asan_gen_.342 = private unnamed_addr constant [10 x i8] c"pcm1_cpus\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [12 x i8] c"pcm1_codecs\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [15 x i8] c"pcm1_platforms\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 251, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 499, i32 11 }
@___asan_gen_.354 = private unnamed_addr constant [10 x i8] c"pcm2_cpus\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [12 x i8] c"pcm2_codecs\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [15 x i8] c"pcm2_platforms\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 256, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 507, i32 11 }
@___asan_gen_.366 = private unnamed_addr constant [10 x i8] c"i2s0_cpus\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [12 x i8] c"i2s0_codecs\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [15 x i8] c"i2s0_platforms\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 516, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant [10 x i8] c"i2s1_cpus\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [12 x i8] c"i2s1_codecs\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [15 x i8] c"i2s1_platforms\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 266, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [10 x i8] c"i2s2_cpus\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [12 x i8] c"i2s2_codecs\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [15 x i8] c"i2s2_platforms\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 271, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 540, i32 11 }
@___asan_gen_.399 = private unnamed_addr constant [10 x i8] c"i2s5_cpus\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [12 x i8] c"i2s5_codecs\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [15 x i8] c"i2s5_platforms\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 292, i32 1 }
@___asan_gen_.408 = private unnamed_addr constant [9 x i8] c"tdm_cpus\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [11 x i8] c"tdm_codecs\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [14 x i8] c"tdm_platforms\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [22 x i8] c"mt8183_mt6358_tdm_ops\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 338, i32 33 }
@___asan_gen_.420 = private unnamed_addr constant [32 x i8] c"mt8183_mt6358_ts3a227_dai_links\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 394, i32 32 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 200, i32 1 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 123, i32 28 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 126, i32 49 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 131, i32 28 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 134, i32 49 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 205, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 163, i32 28 }
@___asan_gen_.450 = private unnamed_addr constant [18 x i8] c"constraints_rates\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 166, i32 49 }
@___asan_gen_.453 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 171, i32 28 }
@___asan_gen_.456 = private unnamed_addr constant [21 x i8] c"constraints_channels\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 174, i32 49 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 210, i32 1 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 215, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 220, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 225, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 230, i32 1 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 235, i32 1 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 369, i32 3 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 246, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 261, i32 1 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 297, i32 1 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 385, i32 41 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 315, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 334, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 572, i32 10 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 97, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 276, i32 1 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 590, i32 10 }
@___asan_gen_.534 = private unnamed_addr constant [38 x i8] c"mt8183_mt6358_ts3a227_rt1015_amp_conf\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 578, i32 34 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 580, i32 10 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 581, i32 18 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 584, i32 10 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 585, i32 18 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 110, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 74, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 81, i32 4 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 281, i32 1 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 599, i32 10 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 287, i32 1 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 614, i32 9 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 33, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 33, i32 13 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 33, i32 31 }
@___asan_gen_.591 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.592 = private constant [62 x i8] c"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 33, i32 50 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_mt8183_mt6358_ts3a227_max98357_driver_exit, ptr @__initcall__kmod_mt8183_mt6358_ts3a227_max98357__240_821_mt8183_mt6358_ts3a227_max98357_driver_init6, ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry, ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry.76, ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry_ptr, ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry_ptr.78, ptr @mt8183_mt6358_tdm_shutdown._entry, ptr @mt8183_mt6358_tdm_shutdown._entry_ptr, ptr @mt8183_mt6358_tdm_startup._entry, ptr @mt8183_mt6358_tdm_startup._entry_ptr, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.14, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.17, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.21, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.24, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.16, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.20, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.23, ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.25, ptr @mt8183_mt6358_ts3a227_max98357_driver_exit, ptr @mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry, ptr @mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry_ptr, ptr @mt8183_mt6358_ts3a227_max98357_driver, ptr @.str, ptr @mt8183_mt6358_ts3a227_max98357_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mt8183_mt6358_ts3a227_max98357_card, ptr @mt8183_mt6358_ts3a227_max98357b_card, ptr @mt8183_mt6358_i2s_ops, ptr @i2s3_max98357a_cpus, ptr @i2s3_max98357a_codecs, ptr @i2s3_max98357a_platforms, ptr @mt8183_mt6358_ts3a227_rt1015_card, ptr @mt8183_mt6358_rt1015_i2s_ops, ptr @i2s3_rt1015_cpus, ptr @i2s3_rt1015_codecs, ptr @i2s3_rt1015_platforms, ptr @mt8183_mt6358_ts3a227_rt1015p_card, ptr @i2s3_rt1015p_cpus, ptr @i2s3_rt1015p_codecs, ptr @i2s3_rt1015p_platforms, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mt8183_mt6358_ts3a227_max98357_headset_dev, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.26, ptr @.str.27, ptr @playback1_cpus, ptr @playback1_codecs, ptr @playback1_platforms, ptr @mt8183_mt6358_ops, ptr @.str.28, ptr @playback2_cpus, ptr @playback2_codecs, ptr @playback2_platforms, ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_ops, ptr @.str.29, ptr @playback3_cpus, ptr @playback3_codecs, ptr @playback3_platforms, ptr @.str.30, ptr @capture1_cpus, ptr @capture1_codecs, ptr @capture1_platforms, ptr @.str.31, ptr @capture2_cpus, ptr @capture2_codecs, ptr @capture2_platforms, ptr @.str.32, ptr @capture3_cpus, ptr @capture3_codecs, ptr @capture3_platforms, ptr @.str.33, ptr @capture_mono_cpus, ptr @capture_mono_codecs, ptr @capture_mono_platforms, ptr @.str.34, ptr @playback_hdmi_cpus, ptr @playback_hdmi_codecs, ptr @playback_hdmi_platforms, ptr @wake_on_voice_cpus, ptr @wake_on_voice_codecs, ptr @wake_on_voice_platforms, ptr @mt8183_mt6358_ts3a227_max98357_wov_ops, ptr @.str.35, ptr @primary_codec_cpus, ptr @primary_codec_codecs, ptr @primary_codec_platforms, ptr @.str.36, ptr @pcm1_cpus, ptr @pcm1_codecs, ptr @pcm1_platforms, ptr @.str.37, ptr @pcm2_cpus, ptr @pcm2_codecs, ptr @pcm2_platforms, ptr @.str.38, ptr @i2s0_cpus, ptr @i2s0_codecs, ptr @i2s0_platforms, ptr @.str.39, ptr @i2s1_cpus, ptr @i2s1_codecs, ptr @i2s1_platforms, ptr @i2s2_cpus, ptr @i2s2_codecs, ptr @i2s2_platforms, ptr @.str.40, ptr @i2s5_cpus, ptr @i2s5_codecs, ptr @i2s5_platforms, ptr @tdm_cpus, ptr @tdm_codecs, ptr @tdm_platforms, ptr @mt8183_mt6358_tdm_ops, ptr @mt8183_mt6358_ts3a227_dai_links, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @mt8183_mt6358_startup.rates, ptr @mt8183_mt6358_startup.constraints_rates, ptr @mt8183_mt6358_startup.channels, ptr @mt8183_mt6358_startup.constraints_channels, ptr @.str.45, ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.rates, ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_rates, ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.channels, ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_channels, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @mt8183_mt6358_ts3a227_rt1015_amp_conf, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [169 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357b_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_i2s_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_max98357a_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_max98357a_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_max98357a_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_rt1015_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_rt1015_i2s_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_rt1015p_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_headset_dev to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_on_voice_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_on_voice_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wake_on_voice_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_wov_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_tdm_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_dai_links to i32), i32 2088, i32 2624, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_startup.channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.rates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_tdm_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_tdm_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_ts3a227_rt1015_amp_conf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_ts3a227_max98357_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8183_mt6358_ts3a227_max98357_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8183_mt6358_ts3a227_max98357_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8183_mt6358_ts3a227_max98357_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_ts3a227_max98357_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i307 = alloca %struct.of_phandle_args, align 4
  %args.i301 = alloca %struct.of_phandle_args, align 4
  %args.i295 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call3 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 5
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev8, align 4
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i295) #6
  %8 = call ptr @memset(ptr %args.i295, i32 255, i32 72)
  %call.i296 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i296)
  %tobool.not.i297 = icmp eq i32 %call.i296, 0
  br i1 %tobool.not.i297, label %if.end.i298, label %if.end6.of_parse_phandle.exit300_crit_edge

if.end6.of_parse_phandle.exit300_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit300

if.end.i298:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %args.i295 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i295, align 4
  br label %of_parse_phandle.exit300

of_parse_phandle.exit300:                         ; preds = %if.end.i298, %if.end6.of_parse_phandle.exit300_crit_edge
  %retval.0.i299 = phi ptr [ %10, %if.end.i298 ], [ null, %if.end6.of_parse_phandle.exit300_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i295) #6
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i301) #6
  %13 = call ptr @memset(ptr %args.i301, i32 255, i32 72)
  %call.i302 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i301) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i302)
  %tobool.not.i303 = icmp eq i32 %call.i302, 0
  br i1 %tobool.not.i303, label %if.end.i304, label %of_parse_phandle.exit300.of_parse_phandle.exit306_crit_edge

of_parse_phandle.exit300.of_parse_phandle.exit306_crit_edge: ; preds = %of_parse_phandle.exit300
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_parse_phandle.exit306

if.end.i304:                                      ; preds = %of_parse_phandle.exit300
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %args.i301 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i301, align 4
  br label %of_parse_phandle.exit306

of_parse_phandle.exit306:                         ; preds = %if.end.i304, %of_parse_phandle.exit300.of_parse_phandle.exit306_crit_edge
  %retval.0.i305 = phi ptr [ %15, %if.end.i304 ], [ null, %of_parse_phandle.exit300.of_parse_phandle.exit306_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i301) #6
  %dai_link15 = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 24
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 25
  %16 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp322 = icmp sgt i32 %17, 0
  br i1 %cmp322, label %land.rhs.lr.ph, label %of_parse_phandle.exit306.for.end_crit_edge

of_parse_phandle.exit306.for.end_crit_edge:       ; preds = %of_parse_phandle.exit306
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %of_parse_phandle.exit306
  %tobool17.not = icmp eq ptr %retval.0.i299, null
  %cmp43 = icmp eq ptr %call3, @mt8183_mt6358_ts3a227_max98357_card
  %cmp44 = icmp eq ptr %call3, @mt8183_mt6358_ts3a227_max98357b_card
  %or.cond = or i1 %cmp43, %cmp44
  %cmp49 = icmp eq ptr %call3, @mt8183_mt6358_ts3a227_rt1015_card
  %cmp60 = icmp eq ptr %call3, @mt8183_mt6358_ts3a227_rt1015p_card
  %tobool86.not = icmp eq ptr %retval.0.i305, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0323 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %18 = ptrtoint ptr %dai_link15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dai_link15, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323
  %tobool16.not = icmp eq ptr %arrayidx, null
  br i1 %tobool16.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  br i1 %tobool17.not, label %for.body.if.end38_crit_edge, label %land.lhs.true

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true:                                    ; preds = %for.body
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call18 = call i32 @strcmp(ptr noundef %21, ptr noundef nonnull dereferenceable(14) @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 2
  %22 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpus, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %23, align 4
  %25 = load ptr, ptr %cpus, align 4
  %of_node25 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %of_node25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i299, ptr %of_node25, align 4
  %27 = load ptr, ptr %cpus, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %dai_name, align 4
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 4
  %29 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %codecs, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %30, align 4
  %32 = load ptr, ptr %codecs, align 4
  %of_node32 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %of_node32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i299, ptr %of_node32, align 4
  %34 = load ptr, ptr %codecs, align 4
  %dai_name35 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dai_name35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.9, ptr %dai_name35, align 4
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 6
  %36 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platforms, align 4
  %of_node37 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %of_node37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.0.i299, ptr %of_node37, align 4
  %ignore = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 18
  %39 = ptrtoint ptr %ignore to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load = load i32, ptr %ignore, align 4
  %bf.clear = and i32 %bf.load, -65537
  store i32 %bf.clear, ptr %ignore, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then20, %land.lhs.true.if.end38_crit_edge, %for.body.if.end38_crit_edge
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %call40 = call i32 @strcmp(ptr noundef %41, ptr noundef nonnull dereferenceable(5) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end38.if.end73_crit_edge

if.end38.if.end73_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then42:                                        ; preds = %if.end38
  br i1 %or.cond, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %be_hw_params_fixup = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 15
  %42 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mt8183_i2s_hw_params_fixup, ptr %be_hw_params_fixup, align 4
  %ops = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 16
  %43 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @mt8183_mt6358_i2s_ops, ptr %ops, align 4
  %cpus46 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 2
  %44 = ptrtoint ptr %cpus46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @i2s3_max98357a_cpus, ptr %cpus46, align 4
  %num_cpus = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 3
  %45 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %num_cpus, align 4
  %codecs47 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 4
  %46 = ptrtoint ptr %codecs47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @i2s3_max98357a_codecs, ptr %codecs47, align 4
  %num_codecs = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 5
  %47 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_codecs, align 4
  %platforms48 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 6
  %48 = ptrtoint ptr %platforms48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @i2s3_max98357a_platforms, ptr %platforms48, align 4
  %num_platforms = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 7
  %49 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %num_platforms, align 4
  br label %if.end73

if.else:                                          ; preds = %if.then42
  br i1 %cmp49, label %if.then50, label %if.else59

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %be_hw_params_fixup51 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 15
  %50 = ptrtoint ptr %be_hw_params_fixup51 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mt8183_rt1015_i2s_hw_params_fixup, ptr %be_hw_params_fixup51, align 4
  %ops52 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 16
  %51 = ptrtoint ptr %ops52 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mt8183_mt6358_rt1015_i2s_ops, ptr %ops52, align 4
  %cpus53 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 2
  %52 = ptrtoint ptr %cpus53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @i2s3_rt1015_cpus, ptr %cpus53, align 4
  %num_cpus54 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 3
  %53 = ptrtoint ptr %num_cpus54 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %num_cpus54, align 4
  %codecs55 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 4
  %54 = ptrtoint ptr %codecs55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @i2s3_rt1015_codecs, ptr %codecs55, align 4
  %num_codecs56 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 5
  %55 = ptrtoint ptr %num_codecs56 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %num_codecs56, align 4
  %platforms57 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 6
  %56 = ptrtoint ptr %platforms57 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @i2s3_rt1015_platforms, ptr %platforms57, align 4
  %num_platforms58 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 7
  %57 = ptrtoint ptr %num_platforms58 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %num_platforms58, align 4
  br label %if.end85

if.else59:                                        ; preds = %if.else
  br i1 %cmp60, label %if.then61, label %if.else59.if.end73_crit_edge

if.else59.if.end73_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then61:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #8
  %be_hw_params_fixup62 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 15
  %58 = ptrtoint ptr %be_hw_params_fixup62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @mt8183_rt1015_i2s_hw_params_fixup, ptr %be_hw_params_fixup62, align 4
  %ops63 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 16
  %59 = ptrtoint ptr %ops63 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mt8183_mt6358_i2s_ops, ptr %ops63, align 4
  %cpus64 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 2
  %60 = ptrtoint ptr %cpus64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @i2s3_rt1015p_cpus, ptr %cpus64, align 4
  %num_cpus65 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 3
  %61 = ptrtoint ptr %num_cpus65 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %num_cpus65, align 4
  %codecs66 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 4
  %62 = ptrtoint ptr %codecs66 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @i2s3_rt1015p_codecs, ptr %codecs66, align 4
  %num_codecs67 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 5
  %63 = ptrtoint ptr %num_codecs67 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %num_codecs67, align 4
  %platforms68 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 6
  %64 = ptrtoint ptr %platforms68 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @i2s3_rt1015p_platforms, ptr %platforms68, align 4
  %num_platforms69 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 7
  %65 = ptrtoint ptr %num_platforms69 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %num_platforms69, align 4
  br label %if.end85

if.end73:                                         ; preds = %if.else59.if.end73_crit_edge, %if.then45, %if.end38.if.end73_crit_edge
  br i1 %cmp44, label %if.then75, label %if.end73.if.end85_crit_edge

if.end73.if.end85_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then75:                                        ; preds = %if.end73
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  %call77 = call i32 @strcmp(ptr noundef %67, ptr noundef nonnull dereferenceable(5) @.str.11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then75.if.then83_crit_edge, label %lor.lhs.false79

if.then75.if.then83_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

lor.lhs.false79:                                  ; preds = %if.then75
  %call81 = call i32 @strcmp(ptr noundef %67, ptr noundef nonnull dereferenceable(5) @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp eq i32 %call81, 0
  br i1 %cmp82, label %lor.lhs.false79.if.then83_crit_edge, label %lor.lhs.false79.if.end85_crit_edge

lor.lhs.false79.if.end85_crit_edge:               ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

lor.lhs.false79.if.then83_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false79.if.then83_crit_edge, %if.then75.if.then83_crit_edge
  %dai_fmt = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 11
  %68 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4099, ptr %dai_fmt, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %lor.lhs.false79.if.end85_crit_edge, %if.end73.if.end85_crit_edge, %if.then61, %if.then50
  br i1 %tobool86.not, label %if.end85.if.end98_crit_edge, label %land.lhs.true87

if.end85.if.end98_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

land.lhs.true87:                                  ; preds = %if.end85
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %call89 = call i32 @strcmp(ptr noundef %70, ptr noundef nonnull dereferenceable(4) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then91, label %land.lhs.true87.if.end98_crit_edge

land.lhs.true87.if.end98_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.then91:                                        ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #8
  %codecs92 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 4
  %71 = ptrtoint ptr %codecs92 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %codecs92, align 4
  %of_node93 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %of_node93 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %retval.0.i305, ptr %of_node93, align 4
  %ignore94 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 18
  %74 = ptrtoint ptr %ignore94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load95 = load i32, ptr %ignore94, align 4
  %bf.clear96 = and i32 %bf.load95, -65537
  store i32 %bf.clear96, ptr %ignore94, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.then91, %land.lhs.true87.if.end98_crit_edge, %if.end85.if.end98_crit_edge
  %platforms99 = getelementptr %struct.snd_soc_dai_link, ptr %19, i32 %i.0323, i32 6
  %75 = ptrtoint ptr %platforms99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %platforms99, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %tobool101.not = icmp eq ptr %78, null
  br i1 %tobool101.not, label %if.then102, label %if.end98.for.inc_crit_edge

if.end98.for.inc_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then102:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  %of_node104 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %of_node104 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %4, ptr %of_node104, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then102, %if.end98.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0323, 1
  %80 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_links, align 4
  %cmp = icmp slt i32 %inc, %81
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %of_parse_phandle.exit306.for.end_crit_edge
  %82 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i307) #6
  %84 = call ptr @memset(ptr %args.i307, i32 255, i32 72)
  %call.i308 = call i32 @__of_parse_phandle_with_args(ptr noundef %83, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i307) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i308)
  %tobool.not.i309 = icmp eq i32 %call.i308, 0
  br i1 %tobool.not.i309, label %of_parse_phandle.exit312, label %of_parse_phandle.exit312.thread

of_parse_phandle.exit312.thread:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i307) #6
  store ptr null, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @mt8183_mt6358_ts3a227_max98357_headset_dev, i32 0, i32 0, i32 1), align 4
  br label %if.end111

of_parse_phandle.exit312:                         ; preds = %for.end
  %85 = ptrtoint ptr %args.i307 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %args.i307, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i307) #6
  store ptr %86, ptr getelementptr inbounds (%struct.snd_soc_aux_dev, ptr @mt8183_mt6358_ts3a227_max98357_headset_dev, i32 0, i32 0, i32 1), align 4
  %tobool109.not = icmp eq ptr %86, null
  br i1 %tobool109.not, label %of_parse_phandle.exit312.if.end111_crit_edge, label %if.then110

of_parse_phandle.exit312.if.end111_crit_edge:     ; preds = %of_parse_phandle.exit312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then110:                                       ; preds = %of_parse_phandle.exit312
  call void @__sanitizer_cov_trace_pc() #8
  %aux_dev = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 30
  %87 = ptrtoint ptr %aux_dev to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @mt8183_mt6358_ts3a227_max98357_headset_dev, ptr %aux_dev, align 4
  %num_aux_devs = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 31
  %88 = ptrtoint ptr %num_aux_devs to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %num_aux_devs, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %of_parse_phandle.exit312.if.end111_crit_edge, %of_parse_phandle.exit312.thread
  %call.i313 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 460, i32 noundef 3520) #6
  %tobool114.not = icmp eq ptr %call.i313, null
  br i1 %tobool114.not, label %if.end111.cleanup_crit_edge, label %if.end116

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end116:                                        ; preds = %if.end111
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 57
  %89 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i313, ptr %drvdata.i, align 4
  %call118 = call ptr @devm_pinctrl_get(ptr noundef %dev) #6
  %90 = ptrtoint ptr %call.i313 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call118, ptr %call.i313, align 4
  %cmp.i = icmp ugt ptr %call118, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end124, label %for.body131.preheader

for.body131.preheader:                            ; preds = %if.end116
  %91 = ptrtoint ptr %call.i313 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call.i313, align 4
  %call134 = call ptr @pinctrl_lookup_state(ptr noundef %92, ptr noundef nonnull @.str.83) #6
  %arrayidx135 = getelementptr %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %call.i313, i32 0, i32 1, i32 0
  %93 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call134, ptr %arrayidx135, align 4
  %cmp.i314 = icmp ugt ptr %call134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %if.then139, label %for.body131.preheader.for.inc149_crit_edge

for.body131.preheader.for.inc149_crit_edge:       ; preds = %for.body131.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc149

do.end124:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3) #9
  %94 = ptrtoint ptr %call.i313 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i313, align 4
  %96 = ptrtoint ptr %95 to i32
  br label %cleanup

if.then139:                                       ; preds = %for.body131.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %call134 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.83, i32 noundef %97) #9
  br label %for.inc149

for.inc149:                                       ; preds = %if.then139, %for.body131.preheader.for.inc149_crit_edge
  %98 = ptrtoint ptr %call.i313 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call.i313, align 4
  %call134.1 = call ptr @pinctrl_lookup_state(ptr noundef %99, ptr noundef nonnull @.str.84) #6
  %arrayidx135.1 = getelementptr %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %call.i313, i32 0, i32 1, i32 1
  %100 = ptrtoint ptr %arrayidx135.1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call134.1, ptr %arrayidx135.1, align 4
  %cmp.i314.1 = icmp ugt ptr %call134.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314.1, label %if.then139.1, label %for.inc149.for.inc149.1_crit_edge

for.inc149.for.inc149.1_crit_edge:                ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc149.1

if.then139.1:                                     ; preds = %for.inc149
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %call134.1 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84, i32 noundef %101) #9
  br label %for.inc149.1

for.inc149.1:                                     ; preds = %if.then139.1, %for.inc149.for.inc149.1_crit_edge
  %102 = ptrtoint ptr %call.i313 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i313, align 4
  %call134.2 = call ptr @pinctrl_lookup_state(ptr noundef %103, ptr noundef nonnull @.str.85) #6
  %arrayidx135.2 = getelementptr %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %call.i313, i32 0, i32 1, i32 2
  %104 = ptrtoint ptr %arrayidx135.2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call134.2, ptr %arrayidx135.2, align 4
  %cmp.i314.2 = icmp ugt ptr %call134.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314.2, label %if.then139.2, label %for.inc149.1.for.inc149.2_crit_edge

for.inc149.1.for.inc149.2_crit_edge:              ; preds = %for.inc149.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc149.2

if.then139.2:                                     ; preds = %for.inc149.1
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %call134.2 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.85, i32 noundef %105) #9
  br label %for.inc149.2

for.inc149.2:                                     ; preds = %if.then139.2, %for.inc149.1.for.inc149.2_crit_edge
  %106 = ptrtoint ptr %call.i313 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i313, align 4
  %call134.3 = call ptr @pinctrl_lookup_state(ptr noundef %107, ptr noundef nonnull @.str.86) #6
  %arrayidx135.3 = getelementptr %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %call.i313, i32 0, i32 1, i32 3
  %108 = ptrtoint ptr %arrayidx135.3 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call134.3, ptr %arrayidx135.3, align 4
  %cmp.i314.3 = icmp ugt ptr %call134.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314.3, label %if.then139.3, label %for.inc149.2.for.inc149.3_crit_edge

for.inc149.2.for.inc149.3_crit_edge:              ; preds = %for.inc149.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc149.3

if.then139.3:                                     ; preds = %for.inc149.2
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %call134.3 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.86, i32 noundef %109) #9
  br label %for.inc149.3

for.inc149.3:                                     ; preds = %if.then139.3, %for.inc149.2.for.inc149.3_crit_edge
  %110 = ptrtoint ptr %arrayidx135.2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx135.2, align 4
  %cmp.i315 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %for.inc149.3.if.end167_crit_edge, label %if.then155

for.inc149.3.if.end167_crit_edge:                 ; preds = %for.inc149.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.then155:                                       ; preds = %for.inc149.3
  %112 = ptrtoint ptr %call.i313 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i313, align 4
  %call159 = call i32 @pinctrl_select_state(ptr noundef %113, ptr noundef %111) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then155.if.end167_crit_edge, label %do.end164

if.then155.if.end167_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

do.end164:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %call159) #9
  br label %if.end167

if.end167:                                        ; preds = %do.end164, %if.then155.if.end167_crit_edge, %for.inc149.3.if.end167_crit_edge
  %114 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx135, align 4
  %cmp.i316 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i316, label %if.end167.if.end183_crit_edge, label %if.then171

if.end167.if.end183_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then171:                                       ; preds = %if.end167
  %116 = ptrtoint ptr %call.i313 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i313, align 4
  %call175 = call i32 @pinctrl_select_state(ptr noundef %117, ptr noundef %115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %tobool176.not = icmp eq i32 %call175, 0
  br i1 %tobool176.not, label %if.then171.if.end183_crit_edge, label %do.end180

if.then171.if.end183_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

do.end180:                                        ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, i32 noundef %call175) #9
  br label %if.end183

if.end183:                                        ; preds = %do.end180, %if.then171.if.end183_crit_edge, %if.end167.if.end183_crit_edge
  %call185 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull %call3) #6
  call void @of_node_put(ptr noundef nonnull %4) #6
  call void @of_node_put(ptr noundef %retval.0.i299) #6
  call void @of_node_put(ptr noundef %retval.0.i305) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end183, %do.end124, %if.end111.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %96, %do.end124 ], [ %call185, %if.end183 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end111.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_i2s_hw_params_fixup(ptr nocapture noundef readonly %rtd, ptr nocapture noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8183_i2s_hw_params_fixup.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8183_i2s_hw_params_fixup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !296

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8183_i2s_hw_params_fixup.__UNIQUE_ID_ddebug238, ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end
  %i.01.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %and.i = and i32 %i.01.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %shr.i = lshr i32 %i.01.i, 5
  %arrayidx.i5 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i5, align 4
  %and1.i = and i32 %3, %neg.i
  store i32 %and1.i, ptr %arrayidx.i5, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %snd_mask_reset_range.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

snd_mask_reset_range.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %or.i.i.i = or i32 %5, 1024
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_rt1015_i2s_hw_params_fixup(ptr nocapture noundef readonly %rtd, ptr nocapture noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8183_rt1015_i2s_hw_params_fixup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8183_rt1015_i2s_hw_params_fixup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !296

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8183_rt1015_i2s_hw_params_fixup.__UNIQUE_ID_ddebug239, ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end
  %i.01.i = phi i32 [ 0, %do.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %and.i = and i32 %i.01.i, 31
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %shr.i = lshr i32 %i.01.i, 5
  %arrayidx.i5 = getelementptr [8 x i32], ptr %arrayidx.i, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i5, align 4
  %and1.i = and i32 %3, %neg.i
  store i32 %and1.i, ptr %arrayidx.i5, align 4
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 53
  br i1 %exitcond.not.i, label %snd_mask_reset_range.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

snd_mask_reset_range.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %or.i.i.i = or i32 %5, 64
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_ts3a227_max98357_hdmi_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %hdmi_jack = getelementptr inbounds %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %hdmi_jack, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  %call4 = tail call i32 @snd_soc_component_set_jack(ptr noundef %11, ptr noundef %hdmi_jack, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8183_mt6358_startup.constraints_rates) #6
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 6
  %2 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %channels_max, align 8
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8183_mt6358_startup.constraints_channels) #6
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4, ptr %formats, align 8
  %call4 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef 16) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_ts3a227_max98357_bt_sco_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_rates) #6
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 6
  %2 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %channels_max, align 8
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_channels) #6
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 1
  %3 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4, ptr %formats, align 8
  %call4 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef 16) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_ts3a227_max98357_wov_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %5, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @pinctrl_select_state(ptr noundef %7, ptr noundef %9) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt8183_mt6358_ts3a227_max98357_wov_shutdown(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %pin_states = getelementptr inbounds %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %pin_states to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin_states, align 4
  %call2 = tail call i32 @pinctrl_select_state(ptr noundef %7, ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.52, i32 noundef %call2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_tdm_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %arrayidx = getelementptr %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call7 = tail call i32 @pinctrl_select_state(ptr noundef %10, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.60, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %call7, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt8183_mt6358_tdm_shutdown(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %arrayidx = getelementptr %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %5, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %call4 = tail call i32 @pinctrl_select_state(ptr noundef %9, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.61, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call1 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_rt1015_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card1, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp40.not = icmp eq i32 %7, 0
  br i1 %cmp40.not, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %mul2 = shl i32 %3, 6
  %mul3 = shl i32 %3, 8
  br label %land.rhs

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.041, 1
  %8 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.cond.land.rhs_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.041 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.cond.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dais, align 4
  %12 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_cpus, align 4
  %add = add i32 %13, %i.041
  %arrayidx = getelementptr ptr, ptr %11, i32 %add
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %call4 = tail call i32 @snd_soc_dai_set_pll(ptr noundef nonnull %15, i32 noundef 0, i32 noundef 1, i32 noundef %mul2, i32 noundef %mul3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.74) #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call7 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %15, i32 noundef 1, i32 noundef %mul3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %for.cond

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev13 = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.77) #9
  br label %cleanup

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %dais15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %dais15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dais15, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call17 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %23, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end12, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call7, %do.end12 ], [ %call17, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_mt6358_ts3a227_max98357_headset_init(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 4
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %headset_jack = getelementptr inbounds %struct.mt8183_mt6358_ts3a227_max98357_priv, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.82, i32 noundef 30723, ptr noundef %headset_jack, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @ts3a227e_enable_jack_detect(ptr noundef %component, ptr noundef %headset_jack) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ts3a227e_enable_jack_detect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 169)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !160, !161, !162, !164, !165, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !200, !202, !204, !206, !207, !208, !210, !211, !212, !214, !216, !218, !219, !220, !222, !224, !225, !226, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !245, !246, !248, !250, !251, !252, !253, !255, !256, !257, !259, !260, !261, !262, !264, !266, !268, !269, !270, !271, !273, !275, !277, !279, !281, !283, !285}
!llvm.module.flags = !{!287, !288, !289, !290, !291, !292, !293, !294}
!llvm.ident = !{!295}

!0 = !{ptr @__initcall__kmod_mt8183_mt6358_ts3a227_max98357__240_821_mt8183_mt6358_ts3a227_max98357_driver_init6, !1, !"__initcall__kmod_mt8183_mt6358_ts3a227_max98357__240_821_mt8183_mt6358_ts3a227_max98357_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 821, i32 1}
!2 = !{ptr @__exitcall_mt8183_mt6358_ts3a227_max98357_driver_exit, !1, !"__exitcall_mt8183_mt6358_ts3a227_max98357_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 824, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 825, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 826, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias245, !11, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 827, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 812, i32 11}
!14 = !{ptr @mt8183_mt6358_ts3a227_max98357_driver, !15, !"mt8183_mt6358_ts3a227_max98357_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 810, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 643, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 645, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 654, i32 49}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 656, i32 11}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 659, i32 42}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 670, i32 30}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 715, i32 31}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 722, i32 44}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 733, i32 6}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 747, i32 3}
!42 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 757, i32 4}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 766, i32 4}
!51 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 775, i32 4}
!55 = !{ptr @mt8183_mt6358_ts3a227_max98357_dev_probe._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 565, i32 10}
!58 = !{ptr @mt8183_mt6358_ts3a227_max98357_card, !59, !"mt8183_mt6358_ts3a227_max98357_card", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 564, i32 28}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 397, i32 11}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 407, i32 11}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 417, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 426, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 436, i32 11}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 445, i32 11}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 455, i32 11}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 464, i32 11}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 483, i32 11}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 491, i32 11}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 499, i32 11}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 507, i32 11}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 516, i32 11}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 540, i32 11}
!88 = !{ptr @mt8183_mt6358_ts3a227_dai_links, !89, !"mt8183_mt6358_ts3a227_dai_links", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 394, i32 32}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 200, i32 1}
!92 = !{ptr @playback1_cpus, !91, !"playback1_cpus", i1 false, i1 false}
!93 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @playback1_codecs, !91, !"playback1_codecs", i1 false, i1 false}
!96 = !{ptr @playback1_platforms, !91, !"playback1_platforms", i1 false, i1 false}
!97 = !{ptr @mt8183_mt6358_ops, !98, !"mt8183_mt6358_ops", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 155, i32 33}
!99 = !{ptr @mt8183_mt6358_startup.rates, !100, !"rates", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 123, i32 28}
!101 = !{ptr @mt8183_mt6358_startup.constraints_rates, !102, !"constraints_rates", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 126, i32 49}
!103 = !{ptr @mt8183_mt6358_startup.channels, !104, !"channels", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 131, i32 28}
!105 = !{ptr @mt8183_mt6358_startup.constraints_channels, !106, !"constraints_channels", i1 false, i1 false}
!106 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 134, i32 49}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 205, i32 1}
!109 = !{ptr @playback2_cpus, !108, !"playback2_cpus", i1 false, i1 false}
!110 = !{ptr @playback2_codecs, !108, !"playback2_codecs", i1 false, i1 false}
!111 = !{ptr @playback2_platforms, !108, !"playback2_platforms", i1 false, i1 false}
!112 = !{ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_ops, !113, !"mt8183_mt6358_ts3a227_max98357_bt_sco_ops", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 195, i32 33}
!114 = !{ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.rates, !115, !"rates", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 163, i32 28}
!116 = !{ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_rates, !117, !"constraints_rates", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 166, i32 49}
!118 = !{ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.channels, !119, !"channels", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 171, i32 28}
!120 = !{ptr @mt8183_mt6358_ts3a227_max98357_bt_sco_startup.constraints_channels, !121, !"constraints_channels", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 174, i32 49}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 210, i32 1}
!124 = !{ptr @playback3_cpus, !123, !"playback3_cpus", i1 false, i1 false}
!125 = !{ptr @playback3_codecs, !123, !"playback3_codecs", i1 false, i1 false}
!126 = !{ptr @playback3_platforms, !123, !"playback3_platforms", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 215, i32 1}
!129 = !{ptr @capture1_cpus, !128, !"capture1_cpus", i1 false, i1 false}
!130 = !{ptr @capture1_codecs, !128, !"capture1_codecs", i1 false, i1 false}
!131 = !{ptr @capture1_platforms, !128, !"capture1_platforms", i1 false, i1 false}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 220, i32 1}
!134 = !{ptr @capture2_cpus, !133, !"capture2_cpus", i1 false, i1 false}
!135 = !{ptr @capture2_codecs, !133, !"capture2_codecs", i1 false, i1 false}
!136 = !{ptr @capture2_platforms, !133, !"capture2_platforms", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 225, i32 1}
!139 = !{ptr @capture3_cpus, !138, !"capture3_cpus", i1 false, i1 false}
!140 = !{ptr @capture3_codecs, !138, !"capture3_codecs", i1 false, i1 false}
!141 = !{ptr @capture3_platforms, !138, !"capture3_platforms", i1 false, i1 false}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 230, i32 1}
!144 = !{ptr @capture_mono_cpus, !143, !"capture_mono_cpus", i1 false, i1 false}
!145 = !{ptr @capture_mono_codecs, !143, !"capture_mono_codecs", i1 false, i1 false}
!146 = !{ptr @capture_mono_platforms, !143, !"capture_mono_platforms", i1 false, i1 false}
!147 = !{ptr @.str.51, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 235, i32 1}
!149 = !{ptr @playback_hdmi_cpus, !148, !"playback_hdmi_cpus", i1 false, i1 false}
!150 = !{ptr @playback_hdmi_codecs, !148, !"playback_hdmi_codecs", i1 false, i1 false}
!151 = !{ptr @playback_hdmi_platforms, !148, !"playback_hdmi_platforms", i1 false, i1 false}
!152 = !{ptr @wake_on_voice_cpus, !153, !"wake_on_voice_cpus", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 240, i32 1}
!154 = !{ptr @wake_on_voice_codecs, !153, !"wake_on_voice_codecs", i1 false, i1 false}
!155 = !{ptr @wake_on_voice_platforms, !153, !"wake_on_voice_platforms", i1 false, i1 false}
!156 = !{ptr @mt8183_mt6358_ts3a227_max98357_wov_ops, !157, !"mt8183_mt6358_ts3a227_max98357_wov_ops", i1 false, i1 false}
!157 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 373, i32 33}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 369, i32 3}
!160 = !{ptr @mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @mt8183_mt6358_ts3a227_max98357_wov_shutdown._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 246, i32 1}
!164 = !{ptr @primary_codec_cpus, !163, !"primary_codec_cpus", i1 false, i1 false}
!165 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.55, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @primary_codec_codecs, !163, !"primary_codec_codecs", i1 false, i1 false}
!168 = !{ptr @primary_codec_platforms, !163, !"primary_codec_platforms", i1 false, i1 false}
!169 = !{ptr @pcm1_cpus, !170, !"pcm1_cpus", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 251, i32 1}
!171 = !{ptr @pcm1_codecs, !170, !"pcm1_codecs", i1 false, i1 false}
!172 = !{ptr @pcm1_platforms, !170, !"pcm1_platforms", i1 false, i1 false}
!173 = !{ptr @pcm2_cpus, !174, !"pcm2_cpus", i1 false, i1 false}
!174 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 256, i32 1}
!175 = !{ptr @pcm2_codecs, !174, !"pcm2_codecs", i1 false, i1 false}
!176 = !{ptr @pcm2_platforms, !174, !"pcm2_platforms", i1 false, i1 false}
!177 = !{ptr @i2s0_cpus, !178, !"i2s0_cpus", i1 false, i1 false}
!178 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 261, i32 1}
!179 = !{ptr @.str.56, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.57, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @i2s0_codecs, !178, !"i2s0_codecs", i1 false, i1 false}
!182 = !{ptr @i2s0_platforms, !178, !"i2s0_platforms", i1 false, i1 false}
!183 = !{ptr @i2s1_cpus, !184, !"i2s1_cpus", i1 false, i1 false}
!184 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 266, i32 1}
!185 = !{ptr @i2s1_codecs, !184, !"i2s1_codecs", i1 false, i1 false}
!186 = !{ptr @i2s1_platforms, !184, !"i2s1_platforms", i1 false, i1 false}
!187 = !{ptr @i2s2_cpus, !188, !"i2s2_cpus", i1 false, i1 false}
!188 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 271, i32 1}
!189 = !{ptr @i2s2_codecs, !188, !"i2s2_codecs", i1 false, i1 false}
!190 = !{ptr @i2s2_platforms, !188, !"i2s2_platforms", i1 false, i1 false}
!191 = !{ptr @i2s5_cpus, !192, !"i2s5_cpus", i1 false, i1 false}
!192 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 292, i32 1}
!193 = !{ptr @i2s5_codecs, !192, !"i2s5_codecs", i1 false, i1 false}
!194 = !{ptr @i2s5_platforms, !192, !"i2s5_platforms", i1 false, i1 false}
!195 = !{ptr @tdm_cpus, !196, !"tdm_cpus", i1 false, i1 false}
!196 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 297, i32 1}
!197 = !{ptr @.str.58, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @tdm_codecs, !196, !"tdm_codecs", i1 false, i1 false}
!199 = !{ptr @tdm_platforms, !196, !"tdm_platforms", i1 false, i1 false}
!200 = !{ptr @.str.59, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 385, i32 41}
!202 = !{ptr @mt8183_mt6358_tdm_ops, !203, !"mt8183_mt6358_tdm_ops", i1 false, i1 false}
!203 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 338, i32 33}
!204 = !{ptr @.str.60, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 315, i32 3}
!206 = !{ptr @mt8183_mt6358_tdm_startup._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @mt8183_mt6358_tdm_startup._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.61, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 334, i32 3}
!210 = !{ptr @mt8183_mt6358_tdm_shutdown._entry, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @mt8183_mt6358_tdm_shutdown._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.62, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 572, i32 10}
!214 = !{ptr @mt8183_mt6358_ts3a227_max98357b_card, !215, !"mt8183_mt6358_ts3a227_max98357b_card", i1 false, i1 false}
!215 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 571, i32 28}
!216 = !{ptr @.str.63, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 97, i32 2}
!218 = !{ptr @.str.64, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mt8183_i2s_hw_params_fixup.__UNIQUE_ID_ddebug238, !217, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!220 = !{ptr @mt8183_mt6358_i2s_ops, !221, !"mt8183_mt6358_i2s_ops", i1 false, i1 false}
!221 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 54, i32 33}
!222 = !{ptr @i2s3_max98357a_cpus, !223, !"i2s3_max98357a_cpus", i1 false, i1 false}
!223 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 276, i32 1}
!224 = !{ptr @.str.65, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.66, !223, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @i2s3_max98357a_codecs, !223, !"i2s3_max98357a_codecs", i1 false, i1 false}
!227 = !{ptr @i2s3_max98357a_platforms, !223, !"i2s3_max98357a_platforms", i1 false, i1 false}
!228 = !{ptr @.str.67, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 590, i32 10}
!230 = !{ptr @mt8183_mt6358_ts3a227_rt1015_card, !231, !"mt8183_mt6358_ts3a227_rt1015_card", i1 false, i1 false}
!231 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 589, i32 28}
!232 = !{ptr @.str.68, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 580, i32 10}
!234 = !{ptr @.str.69, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 581, i32 18}
!236 = !{ptr @.str.70, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 584, i32 10}
!238 = !{ptr @.str.71, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 585, i32 18}
!240 = !{ptr @mt8183_mt6358_ts3a227_rt1015_amp_conf, !241, !"mt8183_mt6358_ts3a227_rt1015_amp_conf", i1 false, i1 false}
!241 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 578, i32 34}
!242 = !{ptr @.str.72, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 110, i32 2}
!244 = !{ptr @.str.73, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @mt8183_rt1015_i2s_hw_params_fixup.__UNIQUE_ID_ddebug239, !243, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!246 = !{ptr @mt8183_mt6358_rt1015_i2s_ops, !247, !"mt8183_mt6358_rt1015_i2s_ops", i1 false, i1 false}
!247 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 90, i32 33}
!248 = !{ptr @.str.74, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 74, i32 4}
!250 = !{ptr @.str.75, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.77, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 81, i32 4}
!255 = !{ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry.76, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @mt8183_mt6358_rt1015_i2s_hw_params._entry_ptr.78, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @i2s3_rt1015_cpus, !258, !"i2s3_rt1015_cpus", i1 false, i1 false}
!258 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 281, i32 1}
!259 = !{ptr @.str.79, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @i2s3_rt1015_codecs, !258, !"i2s3_rt1015_codecs", i1 false, i1 false}
!261 = !{ptr @i2s3_rt1015_platforms, !258, !"i2s3_rt1015_platforms", i1 false, i1 false}
!262 = !{ptr @.str.80, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 599, i32 10}
!264 = !{ptr @mt8183_mt6358_ts3a227_rt1015p_card, !265, !"mt8183_mt6358_ts3a227_rt1015p_card", i1 false, i1 false}
!265 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 598, i32 28}
!266 = !{ptr @i2s3_rt1015p_cpus, !267, !"i2s3_rt1015p_cpus", i1 false, i1 false}
!267 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 287, i32 1}
!268 = !{ptr @.str.81, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @i2s3_rt1015p_codecs, !267, !"i2s3_rt1015p_codecs", i1 false, i1 false}
!270 = !{ptr @i2s3_rt1015p_platforms, !267, !"i2s3_rt1015p_platforms", i1 false, i1 false}
!271 = !{ptr @mt8183_mt6358_ts3a227_max98357_headset_dev, !272, !"mt8183_mt6358_ts3a227_max98357_headset_dev", i1 false, i1 false}
!272 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 628, i32 31}
!273 = !{ptr @.str.82, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 614, i32 9}
!275 = !{ptr @.str.83, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 33, i32 2}
!277 = !{ptr @.str.84, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 33, i32 13}
!279 = !{ptr @.str.85, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 33, i32 31}
!281 = !{ptr @.str.86, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 33, i32 50}
!283 = distinct !{null, !284, !"mt8183_pin_str", i1 false, i1 false}
!284 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 32, i32 27}
!285 = !{ptr @mt8183_mt6358_ts3a227_max98357_dt_match, !286, !"mt8183_mt6358_ts3a227_max98357_dt_match", i1 false, i1 false}
!286 = !{!"../sound/soc/mediatek/mt8183/mt8183-mt6358-ts3a227-max98357.c", i32 789, i32 34}
!287 = !{i32 1, !"wchar_size", i32 2}
!288 = !{i32 1, !"min_enum_size", i32 4}
!289 = !{i32 8, !"branch-target-enforcement", i32 0}
!290 = !{i32 8, !"sign-return-address", i32 0}
!291 = !{i32 8, !"sign-return-address-all", i32 0}
!292 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!293 = !{i32 7, !"uwtable", i32 1}
!294 = !{i32 7, !"frame-pointer", i32 2}
!295 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!296 = !{i64 2148974549, i64 2148974554, i64 2148974567, i64 2148974611, i64 2148974645, i64 2148974666}
