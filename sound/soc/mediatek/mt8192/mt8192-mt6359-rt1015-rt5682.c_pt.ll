; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c"
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
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt8192_afe_private = type { ptr, ptr, ptr, ptr, i32, i32, [44 x i8], [44 x ptr], i32, [4 x i32], [4 x i32], i32, i32, i32, i32, [11 x i32] }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mt8192_mt6359_priv = type { %struct.snd_soc_jack, %struct.snd_soc_jack }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_mt8192_mt6359_rt1015_rt5682__295_1209_mt8192_mt6359_driver_init6 = internal global ptr @mt8192_mt6359_driver_init, section ".initcall6.init", align 4
@mt8192_mt6359_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8192_mt6359_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8192_mt6359_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8192_mt6359_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8192_mt6359_driver_exit = internal global ptr @mt8192_mt6359_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [78 x i8] c"mt8192_mt6359_rt1015_rt5682.description=MT8192-MT6359 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [70 x i8] c"mt8192_mt6359_rt1015_rt5682.author=Jiaxin Yu <jiaxin.yu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [87 x i8] c"mt8192_mt6359_rt1015_rt5682.file=sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [43 x i8] c"mt8192_mt6359_rt1015_rt5682.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [57 x i8] c"mt8192_mt6359_rt1015_rt5682.alias=mt8192_mt6359 soc card\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt8192_mt6359\00", [18 x i8] zeroinitializer }, align 32
@mt8192_mt6359_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192_mt6359_rt1015_rt5682\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_mt6359_rt1015_rt5682_card }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192_mt6359_rt1015p_rt5682\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_mt6359_rt1015p_rt5682_card }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mt8192_mt6359_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_poweroff, ptr @snd_soc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt8192_mt6359_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8192_mt6359_dev_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8192_mt6359_dev_probe._entry_ptr = internal global ptr @mt8192_mt6359_dev_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,hdmi-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S3\00", [27 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt1015_rt5682_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.13, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8192_mt6359_dai_links, i32 39, %struct.list_head zeroinitializer, i32 0, ptr @rt1015_amp_conf, i32 2, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @mt8192_mt6359_rt1015_rt5682_controls, i32 4, ptr @mt8192_mt6359_rt1015_rt5682_widgets, i32 5, ptr @mt8192_mt6359_rt1015_rt5682_routes, i32 6, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@mt8192_rt1015_i2s_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8192_rt1015_i2s_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2s3_rt1015_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.8 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.122, ptr null, ptr @.str.144 }, %struct.snd_soc_dai_link_component { ptr @.str.124, ptr null, ptr @.str.144 }], [40 x i8] zeroinitializer }, align 32
@i2s3_rt1015_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8192_mt6359_rt1015p_rt5682_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.145, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mt8192_mt6359_dai_links, i32 39, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @mt8192_mt6359_rt1015p_rt5682_controls, i32 3, ptr @mt8192_mt6359_rt1015p_rt5682_widgets, i32 3, ptr @mt8192_mt6359_rt1015p_rt5682_routes, i32 4, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.8 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.150, ptr null, ptr @.str.151 }], [20 x i8] zeroinitializer }, align 32
@i2s3_rt1015p_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TDM\00", [28 x i8] zeroinitializer }, align 32
@mt8192_mt6359_dev_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1168, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init gpio error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mt8192_mt6359_dev_probe._entry_ptr.12 = internal global ptr @mt8192_mt6359_dev_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt8192_mt6359_rt1015_rt5682\00", [36 x i8] zeroinitializer }, align 32
@rt1015_amp_conf = internal global { [2 x %struct.snd_soc_codec_conf], [32 x i8] } { [2 x %struct.snd_soc_codec_conf] [%struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.122, ptr null, ptr null }, ptr @.str.123 }, %struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.124, ptr null, ptr null }, ptr @.str.125 }], [32 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt1015_rt5682_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.133 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt1015_rt5682_routes = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.9, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_1\00", [21 x i8] zeroinitializer }, align 32
@playback1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.53 }], [20 x i8] zeroinitializer }, align 32
@playback1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Playback_12\00", [20 x i8] zeroinitializer }, align 32
@playback12_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.56 }], [20 x i8] zeroinitializer }, align 32
@playback12_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback12_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_2\00", [21 x i8] zeroinitializer }, align 32
@playback2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.57 }], [20 x i8] zeroinitializer }, align 32
@playback2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_3\00", [21 x i8] zeroinitializer }, align 32
@playback3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.58 }], [20 x i8] zeroinitializer }, align 32
@playback3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8192_mt6359_rt5682_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8192_mt6359_rt5682_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_4\00", [21 x i8] zeroinitializer }, align 32
@playback4_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.64 }], [20 x i8] zeroinitializer }, align 32
@playback4_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback4_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_5\00", [21 x i8] zeroinitializer }, align 32
@playback5_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.65 }], [20 x i8] zeroinitializer }, align 32
@playback5_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback5_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_6\00", [21 x i8] zeroinitializer }, align 32
@playback6_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.66 }], [20 x i8] zeroinitializer }, align 32
@playback6_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback6_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_7\00", [21 x i8] zeroinitializer }, align 32
@playback7_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.67 }], [20 x i8] zeroinitializer }, align 32
@playback7_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback7_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_8\00", [21 x i8] zeroinitializer }, align 32
@playback8_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.68 }], [20 x i8] zeroinitializer }, align 32
@playback8_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback8_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Playback_9\00", [21 x i8] zeroinitializer }, align 32
@playback9_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@playback9_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback9_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_1\00", [22 x i8] zeroinitializer }, align 32
@capture1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.70 }], [20 x i8] zeroinitializer }, align 32
@capture1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8192_mt6359_capture1_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8192_mt6359_cap1_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_2\00", [22 x i8] zeroinitializer }, align 32
@capture2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.74 }], [20 x i8] zeroinitializer }, align 32
@capture2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_3\00", [22 x i8] zeroinitializer }, align 32
@capture3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.75 }], [20 x i8] zeroinitializer }, align 32
@capture3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_4\00", [22 x i8] zeroinitializer }, align 32
@capture4_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.76 }], [20 x i8] zeroinitializer }, align 32
@capture4_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture4_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_5\00", [22 x i8] zeroinitializer }, align 32
@capture5_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@capture5_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture5_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_6\00", [22 x i8] zeroinitializer }, align 32
@capture6_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.78 }], [20 x i8] zeroinitializer }, align 32
@capture6_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture6_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_7\00", [22 x i8] zeroinitializer }, align 32
@capture7_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.79 }], [20 x i8] zeroinitializer }, align 32
@capture7_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture7_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Capture_8\00", [22 x i8] zeroinitializer }, align 32
@capture8_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.80 }], [20 x i8] zeroinitializer }, align 32
@capture8_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture8_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture_Mono_1\00", [17 x i8] zeroinitializer }, align 32
@capture_mono1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.81 }], [20 x i8] zeroinitializer }, align 32
@capture_mono1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture_mono1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture_Mono_2\00", [17 x i8] zeroinitializer }, align 32
@capture_mono2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.82 }], [20 x i8] zeroinitializer }, align 32
@capture_mono2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture_mono2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture_Mono_3\00", [17 x i8] zeroinitializer }, align 32
@capture_mono3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.83 }], [20 x i8] zeroinitializer }, align 32
@capture_mono3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@capture_mono3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"playback_hdmi\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Playback_HDMI\00", [18 x i8] zeroinitializer }, align 32
@playback_hdmi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.84 }], [20 x i8] zeroinitializer }, align 32
@playback_hdmi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@playback_hdmi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Primary Codec\00", [18 x i8] zeroinitializer }, align 32
@primary_codec_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.85 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.86, ptr null, ptr @.str.87 }, %struct.snd_soc_dai_link_component { ptr @.str.88, ptr null, ptr @.str.89 }], [40 x i8] zeroinitializer }, align 32
@primary_codec_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Primary Codec CH34\00", [45 x i8] zeroinitializer }, align 32
@primary_codec_ch34_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.100 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_ch34_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.86, ptr null, ptr @.str.101 }], [20 x i8] zeroinitializer }, align 32
@primary_codec_ch34_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AP_DMIC\00", [24 x i8] zeroinitializer }, align 32
@ap_dmic_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.39 }], [20 x i8] zeroinitializer }, align 32
@ap_dmic_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@ap_dmic_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AP_DMIC_CH34\00", [19 x i8] zeroinitializer }, align 32
@ap_dmic_ch34_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.40 }], [20 x i8] zeroinitializer }, align 32
@ap_dmic_ch34_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@ap_dmic_ch34_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S0\00", [27 x i8] zeroinitializer }, align 32
@i2s0_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.41 }], [20 x i8] zeroinitializer }, align 32
@i2s0_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@i2s0_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@i2s1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.42 }], [20 x i8] zeroinitializer }, align 32
@i2s1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@i2s1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@i2s2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.43 }], [20 x i8] zeroinitializer }, align 32
@i2s2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@i2s2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S5\00", [27 x i8] zeroinitializer }, align 32
@i2s5_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.44 }], [20 x i8] zeroinitializer }, align 32
@i2s5_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@i2s5_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S6\00", [27 x i8] zeroinitializer }, align 32
@i2s6_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.45 }], [20 x i8] zeroinitializer }, align 32
@i2s6_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@i2s6_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S7\00", [27 x i8] zeroinitializer }, align 32
@i2s7_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.46 }], [20 x i8] zeroinitializer }, align 32
@i2s7_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@i2s7_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S8\00", [27 x i8] zeroinitializer }, align 32
@i2s8_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.47 }], [20 x i8] zeroinitializer }, align 32
@i2s8_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.102, ptr null, ptr @.str.103 }], [20 x i8] zeroinitializer }, align 32
@i2s8_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8192_rt5682_i2s_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8192_rt5682_i2s_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S9\00", [27 x i8] zeroinitializer }, align 32
@i2s9_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.48 }], [20 x i8] zeroinitializer }, align 32
@i2s9_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.102, ptr null, ptr @.str.103 }], [20 x i8] zeroinitializer }, align 32
@i2s9_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CONNSYS_I2S\00", [20 x i8] zeroinitializer }, align 32
@connsys_i2s_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.49 }], [20 x i8] zeroinitializer }, align 32
@connsys_i2s_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@connsys_i2s_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 1\00", [26 x i8] zeroinitializer }, align 32
@pcm1_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.50 }], [20 x i8] zeroinitializer }, align 32
@pcm1_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@pcm1_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCM 2\00", [26 x i8] zeroinitializer }, align 32
@pcm2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.51 }], [20 x i8] zeroinitializer }, align 32
@pcm2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.54, ptr null, ptr @.str.55 }], [20 x i8] zeroinitializer }, align 32
@pcm2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@tdm_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.9 }], [20 x i8] zeroinitializer }, align 32
@tdm_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.118 }], [20 x i8] zeroinitializer }, align 32
@tdm_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8192_mt6359_dai_links = internal global { [39 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [1140 x i8] } { [39 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.14, ptr @.str.14, ptr @playback1_cpus, i32 1, ptr @playback1_codecs, i32 1, ptr @playback1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.15, ptr @.str.15, ptr @playback12_cpus, i32 1, ptr @playback12_codecs, i32 1, ptr @playback12_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.16, ptr @.str.16, ptr @playback2_cpus, i32 1, ptr @playback2_codecs, i32 1, ptr @playback2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.17, ptr @.str.17, ptr @playback3_cpus, i32 1, ptr @playback3_codecs, i32 1, ptr @playback3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8192_mt6359_rt5682_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.18, ptr @.str.18, ptr @playback4_cpus, i32 1, ptr @playback4_codecs, i32 1, ptr @playback4_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.19, ptr @.str.19, ptr @playback5_cpus, i32 1, ptr @playback5_codecs, i32 1, ptr @playback5_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.20, ptr @.str.20, ptr @playback6_cpus, i32 1, ptr @playback6_codecs, i32 1, ptr @playback6_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.21, ptr @.str.21, ptr @playback7_cpus, i32 1, ptr @playback7_codecs, i32 1, ptr @playback7_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.22, ptr @.str.22, ptr @playback8_cpus, i32 1, ptr @playback8_codecs, i32 1, ptr @playback8_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.23, ptr @.str.23, ptr @playback9_cpus, i32 1, ptr @playback9_codecs, i32 1, ptr @playback9_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.24, ptr @.str.24, ptr @capture1_cpus, i32 1, ptr @capture1_codecs, i32 1, ptr @capture1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8192_mt6359_capture1_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.25, ptr @.str.25, ptr @capture2_cpus, i32 1, ptr @capture2_codecs, i32 1, ptr @capture2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @mt8192_mt6359_rt5682_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.26, ptr @.str.26, ptr @capture3_cpus, i32 1, ptr @capture3_codecs, i32 1, ptr @capture3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.27, ptr @.str.27, ptr @capture4_cpus, i32 1, ptr @capture4_codecs, i32 1, ptr @capture4_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.28, ptr @.str.28, ptr @capture5_cpus, i32 1, ptr @capture5_codecs, i32 1, ptr @capture5_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.29, ptr @.str.29, ptr @capture6_cpus, i32 1, ptr @capture6_codecs, i32 1, ptr @capture6_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.30, ptr @.str.30, ptr @capture7_cpus, i32 1, ptr @capture7_codecs, i32 1, ptr @capture7_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.31, ptr @.str.31, ptr @capture8_cpus, i32 1, ptr @capture8_codecs, i32 1, ptr @capture8_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.32, ptr @.str.32, ptr @capture_mono1_cpus, i32 1, ptr @capture_mono1_codecs, i32 1, ptr @capture_mono1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.33, ptr @.str.33, ptr @capture_mono2_cpus, i32 1, ptr @capture_mono2_codecs, i32 1, ptr @capture_mono2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.34, ptr @.str.34, ptr @capture_mono3_cpus, i32 1, ptr @capture_mono3_codecs, i32 1, ptr @capture_mono3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.35, ptr @.str.36, ptr @playback_hdmi_cpus, i32 1, ptr @playback_hdmi_codecs, i32 1, ptr @playback_hdmi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.37, ptr null, ptr @primary_codec_cpus, i32 1, ptr @primary_codec_codecs, i32 2, ptr @primary_codec_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @mt8192_mt6359_init, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.38, ptr null, ptr @primary_codec_ch34_cpus, i32 1, ptr @primary_codec_ch34_codecs, i32 1, ptr @primary_codec_ch34_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.39, ptr null, ptr @ap_dmic_cpus, i32 1, ptr @ap_dmic_codecs, i32 1, ptr @ap_dmic_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.40, ptr null, ptr @ap_dmic_ch34_cpus, i32 1, ptr @ap_dmic_ch34_codecs, i32 1, ptr @ap_dmic_ch34_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.41, ptr null, ptr @i2s0_cpus, i32 1, ptr @i2s0_codecs, i32 1, ptr @i2s0_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.42, ptr null, ptr @i2s1_cpus, i32 1, ptr @i2s1_codecs, i32 1, ptr @i2s1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.43, ptr null, ptr @i2s2_cpus, i32 1, ptr @i2s2_codecs, i32 1, ptr @i2s2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.8, ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.44, ptr null, ptr @i2s5_cpus, i32 1, ptr @i2s5_codecs, i32 1, ptr @i2s5_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.45, ptr null, ptr @i2s6_cpus, i32 1, ptr @i2s6_codecs, i32 1, ptr @i2s6_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.46, ptr null, ptr @i2s7_cpus, i32 1, ptr @i2s7_codecs, i32 1, ptr @i2s7_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.47, ptr null, ptr @i2s8_cpus, i32 1, ptr @i2s8_codecs, i32 1, ptr @i2s8_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @mt8192_rt5682_init, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr @mt8192_rt5682_i2s_ops, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.48, ptr null, ptr @i2s9_cpus, i32 1, ptr @i2s9_codecs, i32 1, ptr @i2s9_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr @mt8192_rt5682_i2s_ops, ptr null, i8 17, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.49, ptr null, ptr @connsys_i2s_cpus, i32 1, ptr @connsys_i2s_codecs, i32 1, ptr @connsys_i2s_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.50, ptr null, ptr @pcm1_cpus, i32 1, ptr @pcm1_codecs, i32 1, ptr @pcm1_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.51, ptr null, ptr @pcm2_cpus, i32 1, ptr @pcm2_codecs, i32 1, ptr @pcm2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 17, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.9, ptr null, ptr @tdm_cpus, i32 1, ptr @tdm_codecs, i32 1, ptr @tdm_platforms, i32 1, i32 0, ptr null, i32 0, i32 4868, [2 x i32] zeroinitializer, ptr @mt8192_mt6359_hdmi_init, ptr null, ptr @mt8192_i2s_hw_params_fixup, ptr null, ptr null, i8 17, i8 33, i8 0, %struct.snd_soc_dobj zeroinitializer }], [1140 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL12\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt5682_startup.channels = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 2], [24 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt5682_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8192_mt6359_rt5682_startup.channels, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt5682_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt5682_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8192_mt6359_rt5682_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt5682_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"hw_constraint_list channels failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt8192_mt6359_rt5682_startup\00", [35 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt5682_startup._entry_ptr = internal global ptr @mt8192_mt6359_rt5682_startup._entry, section ".printk_index", align 4
@mt8192_mt6359_rt5682_startup._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.4, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hw_constraint_list rate failed\0A\00", [32 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt5682_startup._entry_ptr.63 = internal global ptr @mt8192_mt6359_rt5682_startup._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL4\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL5\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL6\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL7\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL8\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL9\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@mt8192_mt6359_cap1_startup.channels = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@mt8192_mt6359_cap1_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8192_mt6359_cap1_startup.channels, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8192_mt6359_cap1_startup.rates = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8000, i32 16000, i32 32000, i32 48000, i32 96000, i32 192000], [40 x i8] zeroinitializer }, align 32
@mt8192_mt6359_cap1_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8192_mt6359_cap1_startup.rates, i32 6, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8192_mt6359_cap1_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.71, ptr @.str.4, i32 390, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8192_mt6359_cap1_startup\00", [37 x i8] zeroinitializer }, align 32
@mt8192_mt6359_cap1_startup._entry_ptr = internal global ptr @mt8192_mt6359_cap1_startup._entry, section ".printk_index", align 4
@mt8192_mt6359_cap1_startup._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.71, ptr @.str.4, i32 398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8192_mt6359_cap1_startup._entry_ptr.73 = internal global ptr @mt8192_mt6359_cap1_startup._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL4\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL5\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL6\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL7\00", [28 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL8\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_1\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_2\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_3\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADDA\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6359-sound\00", [19 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic-codec\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmic-hifi\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@mt8192_mt6359_mtkaif_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 145, ptr @.str.93, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(), start\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt8192_mt6359_mtkaif_calibration\00", [63 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt8192_mt6359_mtkaif_calibration._entry_ptr = internal global ptr @mt8192_mt6359_mtkaif_calibration._entry, section ".printk_index", align 4
@mt8192_mt6359_mtkaif_calibration._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.92, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s(), test fail, cycle_1 %d, cycle_2 %d, cycle_3 %d, monitor 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@mt8192_mt6359_mtkaif_calibration._entry_ptr.96 = internal global ptr @mt8192_mt6359_mtkaif_calibration._entry.94, section ".printk_index", align 4
@mt8192_mt6359_mtkaif_calibration._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.92, ptr @.str.4, i32 282, ptr @.str.93, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(), mtkaif_chosen_phase[0/1/2]:%d/%d/%d\0A\00", [53 x i8] zeroinitializer }, align 32
@mt8192_mt6359_mtkaif_calibration._entry_ptr.99 = internal global ptr @mt8192_mt6359_mtkaif_calibration._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADDA_CH34\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif2\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt5682.1-001a\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@mt8192_rt5682_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Headset Jack creation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt8192_rt5682_init\00", [45 x i8] zeroinitializer }, align 32
@mt8192_rt5682_init._entry_ptr = internal global ptr @mt8192_rt5682_init._entry, section ".printk_index", align 4
@mt8192_rt5682_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.4, i32 89, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid bit width: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt8192_rt5682_i2s_hw_params\00", [36 x i8] zeroinitializer }, align 32
@mt8192_rt5682_i2s_hw_params._entry_ptr = internal global ptr @mt8192_rt5682_i2s_hw_params._entry, section ".printk_index", align 4
@mt8192_rt5682_i2s_hw_params._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.108, ptr @.str.4, i32 95, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set tdm slot\0A\00", [40 x i8] zeroinitializer }, align 32
@mt8192_rt5682_i2s_hw_params._entry_ptr.111 = internal global ptr @mt8192_rt5682_i2s_hw_params._entry.109, section ".printk_index", align 4
@mt8192_rt5682_i2s_hw_params._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.108, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set pll\0A\00", [45 x i8] zeroinitializer }, align 32
@mt8192_rt5682_i2s_hw_params._entry_ptr.114 = internal global ptr @mt8192_rt5682_i2s_hw_params._entry.112, section ".printk_index", align 4
@mt8192_rt5682_i2s_hw_params._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.108, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to set sysclk\0A\00", [42 x i8] zeroinitializer }, align 32
@mt8192_rt5682_i2s_hw_params._entry_ptr.117 = internal global ptr @mt8192_rt5682_i2s_hw_params._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI Jack\00", [22 x i8] zeroinitializer }, align 32
@mt8192_mt6359_hdmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.4, i32 343, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HDMI Jack creation failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8192_mt6359_hdmi_init\00", [40 x i8] zeroinitializer }, align 32
@mt8192_mt6359_hdmi_init._entry_ptr = internal global ptr @mt8192_mt6359_hdmi_init._entry, section ".printk_index", align 4
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1015.1-0028\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1015.1-0029\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Spk Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left Spk\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Spk Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right Spk\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headphone Jack Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Mic Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TDM Out\00", [24 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt1015_rt5682_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left SPO\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right SPO\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@mt8192_rt1015_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.141, ptr @.str.4, i32 57, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt8192_rt1015_i2s_hw_params\00", [36 x i8] zeroinitializer }, align 32
@mt8192_rt1015_i2s_hw_params._entry_ptr = internal global ptr @mt8192_rt1015_i2s_hw_params._entry, section ".printk_index", align 4
@mt8192_rt1015_i2s_hw_params._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.141, ptr @.str.4, i32 66, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8192_rt1015_i2s_hw_params._entry_ptr.143 = internal global ptr @mt8192_rt1015_i2s_hw_params._entry.142, section ".printk_index", align 4
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt1015-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt8192_mt6359_rt1015p_rt5682\00", [35 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt1015p_rt5682_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.133 to i32) }], [48 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt1015p_rt5682_routes = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Speakers Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speakers\00", [23 x i8] zeroinitializer }, align 32
@mt8192_mt6359_rt1015p_rt5682_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt1015p\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"mt8192_mt6359_driver\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1198, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1200, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant [23 x i8] c"mt8192_mt6359_dt_match\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1180, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"mt8192_mt6359_pm_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1193, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1112, i32 7 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1114, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1124, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1127, i32 30 }
@___asan_gen_.191 = private unnamed_addr constant [33 x i8] c"mt8192_mt6359_rt1015_rt5682_card\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1053, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant [22 x i8] c"mt8192_rt1015_i2s_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 120, i32 33 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"i2s3_rt1015_cpus\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"i2s3_rt1015_codecs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"i2s3_rt1015_platforms\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [34 x i8] c"mt8192_mt6359_rt1015p_rt5682_card\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1090, i32 28 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"i2s3_rt1015p_cpus\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c"i2s3_rt1015p_codecs\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [23 x i8] c"i2s3_rt1015p_platforms\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1152, i32 44 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1168, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1054, i32 10 }
@___asan_gen_.230 = private unnamed_addr constant [16 x i8] c"rt1015_amp_conf\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1042, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant [37 x i8] c"mt8192_mt6359_rt1015_rt5682_controls\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1035, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant [35 x i8] c"mt8192_mt6359_rt1015_rt5682_routes\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1023, i32 40 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 670, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant [15 x i8] c"playback1_cpus\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"playback1_codecs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c"playback1_platforms\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 679, i32 11 }
@___asan_gen_.254 = private unnamed_addr constant [16 x i8] c"playback12_cpus\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"playback12_codecs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [21 x i8] c"playback12_platforms\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 688, i32 11 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"playback2_cpus\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"playback2_codecs\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [20 x i8] c"playback2_platforms\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 697, i32 11 }
@___asan_gen_.278 = private unnamed_addr constant [15 x i8] c"playback3_cpus\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"playback3_codecs\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [20 x i8] c"playback3_platforms\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [25 x i8] c"mt8192_mt6359_rt5682_ops\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 452, i32 33 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 707, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant [15 x i8] c"playback4_cpus\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"playback4_codecs\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c"playback4_platforms\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 716, i32 11 }
@___asan_gen_.305 = private unnamed_addr constant [15 x i8] c"playback5_cpus\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"playback5_codecs\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [20 x i8] c"playback5_platforms\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 725, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant [15 x i8] c"playback6_cpus\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"playback6_codecs\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c"playback6_platforms\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 734, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant [15 x i8] c"playback7_cpus\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"playback7_codecs\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c"playback7_platforms\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 743, i32 11 }
@___asan_gen_.341 = private unnamed_addr constant [15 x i8] c"playback8_cpus\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"playback8_codecs\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [20 x i8] c"playback8_platforms\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 752, i32 11 }
@___asan_gen_.353 = private unnamed_addr constant [15 x i8] c"playback9_cpus\00", align 1
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"playback9_codecs\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c"playback9_platforms\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 761, i32 11 }
@___asan_gen_.365 = private unnamed_addr constant [14 x i8] c"capture1_cpus\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [16 x i8] c"capture1_codecs\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [19 x i8] c"capture1_platforms\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [27 x i8] c"mt8192_mt6359_capture1_ops\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 405, i32 33 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 771, i32 11 }
@___asan_gen_.380 = private unnamed_addr constant [14 x i8] c"capture2_cpus\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [16 x i8] c"capture2_codecs\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [19 x i8] c"capture2_platforms\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 781, i32 11 }
@___asan_gen_.392 = private unnamed_addr constant [14 x i8] c"capture3_cpus\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [16 x i8] c"capture3_codecs\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [19 x i8] c"capture3_platforms\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 790, i32 11 }
@___asan_gen_.404 = private unnamed_addr constant [14 x i8] c"capture4_cpus\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [16 x i8] c"capture4_codecs\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [19 x i8] c"capture4_platforms\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 799, i32 11 }
@___asan_gen_.416 = private unnamed_addr constant [14 x i8] c"capture5_cpus\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [16 x i8] c"capture5_codecs\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [19 x i8] c"capture5_platforms\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 808, i32 11 }
@___asan_gen_.428 = private unnamed_addr constant [14 x i8] c"capture6_cpus\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [16 x i8] c"capture6_codecs\00", align 1
@___asan_gen_.434 = private unnamed_addr constant [19 x i8] c"capture6_platforms\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 817, i32 11 }
@___asan_gen_.440 = private unnamed_addr constant [14 x i8] c"capture7_cpus\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [16 x i8] c"capture7_codecs\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [19 x i8] c"capture7_platforms\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 826, i32 11 }
@___asan_gen_.452 = private unnamed_addr constant [14 x i8] c"capture8_cpus\00", align 1
@___asan_gen_.455 = private unnamed_addr constant [16 x i8] c"capture8_codecs\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [19 x i8] c"capture8_platforms\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 835, i32 11 }
@___asan_gen_.464 = private unnamed_addr constant [19 x i8] c"capture_mono1_cpus\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [21 x i8] c"capture_mono1_codecs\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [24 x i8] c"capture_mono1_platforms\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 844, i32 11 }
@___asan_gen_.476 = private unnamed_addr constant [19 x i8] c"capture_mono2_cpus\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [21 x i8] c"capture_mono2_codecs\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [24 x i8] c"capture_mono2_platforms\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 853, i32 11 }
@___asan_gen_.488 = private unnamed_addr constant [19 x i8] c"capture_mono3_cpus\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [21 x i8] c"capture_mono3_codecs\00", align 1
@___asan_gen_.494 = private unnamed_addr constant [24 x i8] c"capture_mono3_platforms\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 862, i32 11 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 863, i32 18 }
@___asan_gen_.503 = private unnamed_addr constant [19 x i8] c"playback_hdmi_cpus\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [21 x i8] c"playback_hdmi_codecs\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [24 x i8] c"playback_hdmi_platforms\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 872, i32 11 }
@___asan_gen_.515 = private unnamed_addr constant [19 x i8] c"primary_codec_cpus\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [21 x i8] c"primary_codec_codecs\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [24 x i8] c"primary_codec_platforms\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 881, i32 11 }
@___asan_gen_.527 = private unnamed_addr constant [24 x i8] c"primary_codec_ch34_cpus\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [26 x i8] c"primary_codec_ch34_codecs\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [29 x i8] c"primary_codec_ch34_platforms\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 889, i32 11 }
@___asan_gen_.539 = private unnamed_addr constant [13 x i8] c"ap_dmic_cpus\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [15 x i8] c"ap_dmic_codecs\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [18 x i8] c"ap_dmic_platforms\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 582, i32 1 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 896, i32 11 }
@___asan_gen_.551 = private unnamed_addr constant [18 x i8] c"ap_dmic_ch34_cpus\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [20 x i8] c"ap_dmic_ch34_codecs\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [23 x i8] c"ap_dmic_ch34_platforms\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 587, i32 1 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 903, i32 11 }
@___asan_gen_.563 = private unnamed_addr constant [10 x i8] c"i2s0_cpus\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [12 x i8] c"i2s0_codecs\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [15 x i8] c"i2s0_platforms\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 592, i32 1 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 911, i32 11 }
@___asan_gen_.575 = private unnamed_addr constant [10 x i8] c"i2s1_cpus\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [12 x i8] c"i2s1_codecs\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [15 x i8] c"i2s1_platforms\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 597, i32 1 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 919, i32 11 }
@___asan_gen_.587 = private unnamed_addr constant [10 x i8] c"i2s2_cpus\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [12 x i8] c"i2s2_codecs\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [15 x i8] c"i2s2_platforms\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 602, i32 1 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 934, i32 11 }
@___asan_gen_.599 = private unnamed_addr constant [10 x i8] c"i2s5_cpus\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [12 x i8] c"i2s5_codecs\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [15 x i8] c"i2s5_platforms\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 620, i32 1 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 942, i32 11 }
@___asan_gen_.611 = private unnamed_addr constant [10 x i8] c"i2s6_cpus\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [12 x i8] c"i2s6_codecs\00", align 1
@___asan_gen_.617 = private unnamed_addr constant [15 x i8] c"i2s6_platforms\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 625, i32 1 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 950, i32 11 }
@___asan_gen_.623 = private unnamed_addr constant [10 x i8] c"i2s7_cpus\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [12 x i8] c"i2s7_codecs\00", align 1
@___asan_gen_.629 = private unnamed_addr constant [15 x i8] c"i2s7_platforms\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 630, i32 1 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 958, i32 11 }
@___asan_gen_.635 = private unnamed_addr constant [10 x i8] c"i2s8_cpus\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [12 x i8] c"i2s8_codecs\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [15 x i8] c"i2s8_platforms\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [22 x i8] c"mt8192_rt5682_i2s_ops\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 124, i32 33 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 968, i32 11 }
@___asan_gen_.650 = private unnamed_addr constant [10 x i8] c"i2s9_cpus\00", align 1
@___asan_gen_.653 = private unnamed_addr constant [12 x i8] c"i2s9_codecs\00", align 1
@___asan_gen_.656 = private unnamed_addr constant [15 x i8] c"i2s9_platforms\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 641, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 977, i32 11 }
@___asan_gen_.662 = private unnamed_addr constant [17 x i8] c"connsys_i2s_cpus\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [19 x i8] c"connsys_i2s_codecs\00", align 1
@___asan_gen_.668 = private unnamed_addr constant [22 x i8] c"connsys_i2s_platforms\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 647, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 984, i32 11 }
@___asan_gen_.674 = private unnamed_addr constant [10 x i8] c"pcm1_cpus\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [12 x i8] c"pcm1_codecs\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [15 x i8] c"pcm1_platforms\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 652, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 992, i32 11 }
@___asan_gen_.686 = private unnamed_addr constant [10 x i8] c"pcm2_cpus\00", align 1
@___asan_gen_.689 = private unnamed_addr constant [12 x i8] c"pcm2_codecs\00", align 1
@___asan_gen_.692 = private unnamed_addr constant [15 x i8] c"pcm2_platforms\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 657, i32 1 }
@___asan_gen_.695 = private unnamed_addr constant [9 x i8] c"tdm_cpus\00", align 1
@___asan_gen_.698 = private unnamed_addr constant [11 x i8] c"tdm_codecs\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [14 x i8] c"tdm_platforms\00", align 1
@___asan_gen_.704 = private unnamed_addr constant [24 x i8] c"mt8192_mt6359_dai_links\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 667, i32 32 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 457, i32 1 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 462, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 467, i32 1 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 472, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 412, i32 28 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 415, i32 49 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 420, i32 28 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 423, i32 49 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 437, i32 3 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 445, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 477, i32 1 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 482, i32 1 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 487, i32 1 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 492, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 497, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 502, i32 1 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 507, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 365, i32 28 }
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c"constraints_channels\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 368, i32 49 }
@___asan_gen_.779 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 373, i32 28 }
@___asan_gen_.782 = private unnamed_addr constant [18 x i8] c"constraints_rates\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 376, i32 49 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 390, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 398, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 512, i32 1 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 517, i32 1 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 522, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 527, i32 1 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 532, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 537, i32 1 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 542, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 547, i32 1 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 552, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 557, i32 1 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 562, i32 1 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 568, i32 1 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 290, i32 30 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 145, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 206, i32 5 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 278, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 576, i32 1 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 635, i32 1 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 315, i32 41 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 321, i32 3 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 89, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 95, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 104, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 113, i32 3 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 662, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 340, i32 41 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 343, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1044, i32 10 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1045, i32 18 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1048, i32 10 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1049, i32 18 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1036, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1037, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1038, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1039, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1020, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant [36 x i8] c"mt8192_mt6359_rt1015_rt5682_widgets\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1015, i32 1 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1025, i32 22 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1026, i32 23 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1028, i32 28 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1029, i32 28 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1030, i32 4 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 57, i32 4 }
@___asan_gen_.998 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 66, i32 4 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 607, i32 1 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1091, i32 10 }
@___asan_gen_.1007 = private unnamed_addr constant [38 x i8] c"mt8192_mt6359_rt1015p_rt5682_controls\00", align 1
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1084, i32 38 }
@___asan_gen_.1010 = private unnamed_addr constant [36 x i8] c"mt8192_mt6359_rt1015p_rt5682_routes\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1075, i32 40 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1085, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant [37 x i8] c"mt8192_mt6359_rt1015p_rt5682_widgets\00", align 1
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1069, i32 1 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1077, i32 22 }
@___asan_gen_.1028 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1029 = private constant [59 x i8] c"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 615, i32 1 }
@llvm.compiler.used = appending global [318 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_mt8192_mt6359_driver_exit, ptr @__initcall__kmod_mt8192_mt6359_rt1015_rt5682__295_1209_mt8192_mt6359_driver_init6, ptr @mt8192_mt6359_cap1_startup._entry, ptr @mt8192_mt6359_cap1_startup._entry.72, ptr @mt8192_mt6359_cap1_startup._entry_ptr, ptr @mt8192_mt6359_cap1_startup._entry_ptr.73, ptr @mt8192_mt6359_dev_probe._entry, ptr @mt8192_mt6359_dev_probe._entry.10, ptr @mt8192_mt6359_dev_probe._entry_ptr, ptr @mt8192_mt6359_dev_probe._entry_ptr.12, ptr @mt8192_mt6359_driver_exit, ptr @mt8192_mt6359_hdmi_init._entry, ptr @mt8192_mt6359_hdmi_init._entry_ptr, ptr @mt8192_mt6359_mtkaif_calibration._entry, ptr @mt8192_mt6359_mtkaif_calibration._entry.94, ptr @mt8192_mt6359_mtkaif_calibration._entry.97, ptr @mt8192_mt6359_mtkaif_calibration._entry_ptr, ptr @mt8192_mt6359_mtkaif_calibration._entry_ptr.96, ptr @mt8192_mt6359_mtkaif_calibration._entry_ptr.99, ptr @mt8192_mt6359_rt5682_startup._entry, ptr @mt8192_mt6359_rt5682_startup._entry.61, ptr @mt8192_mt6359_rt5682_startup._entry_ptr, ptr @mt8192_mt6359_rt5682_startup._entry_ptr.63, ptr @mt8192_rt1015_i2s_hw_params._entry, ptr @mt8192_rt1015_i2s_hw_params._entry.142, ptr @mt8192_rt1015_i2s_hw_params._entry_ptr, ptr @mt8192_rt1015_i2s_hw_params._entry_ptr.143, ptr @mt8192_rt5682_i2s_hw_params._entry, ptr @mt8192_rt5682_i2s_hw_params._entry.109, ptr @mt8192_rt5682_i2s_hw_params._entry.112, ptr @mt8192_rt5682_i2s_hw_params._entry.115, ptr @mt8192_rt5682_i2s_hw_params._entry_ptr, ptr @mt8192_rt5682_i2s_hw_params._entry_ptr.111, ptr @mt8192_rt5682_i2s_hw_params._entry_ptr.114, ptr @mt8192_rt5682_i2s_hw_params._entry_ptr.117, ptr @mt8192_rt5682_init._entry, ptr @mt8192_rt5682_init._entry_ptr, ptr @mt8192_mt6359_driver, ptr @.str, ptr @mt8192_mt6359_dt_match, ptr @mt8192_mt6359_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mt8192_mt6359_rt1015_rt5682_card, ptr @mt8192_rt1015_i2s_ops, ptr @i2s3_rt1015_cpus, ptr @i2s3_rt1015_codecs, ptr @i2s3_rt1015_platforms, ptr @mt8192_mt6359_rt1015p_rt5682_card, ptr @i2s3_rt1015p_cpus, ptr @i2s3_rt1015p_codecs, ptr @i2s3_rt1015p_platforms, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @rt1015_amp_conf, ptr @mt8192_mt6359_rt1015_rt5682_controls, ptr @mt8192_mt6359_rt1015_rt5682_routes, ptr @.str.14, ptr @playback1_cpus, ptr @playback1_codecs, ptr @playback1_platforms, ptr @.str.15, ptr @playback12_cpus, ptr @playback12_codecs, ptr @playback12_platforms, ptr @.str.16, ptr @playback2_cpus, ptr @playback2_codecs, ptr @playback2_platforms, ptr @.str.17, ptr @playback3_cpus, ptr @playback3_codecs, ptr @playback3_platforms, ptr @mt8192_mt6359_rt5682_ops, ptr @.str.18, ptr @playback4_cpus, ptr @playback4_codecs, ptr @playback4_platforms, ptr @.str.19, ptr @playback5_cpus, ptr @playback5_codecs, ptr @playback5_platforms, ptr @.str.20, ptr @playback6_cpus, ptr @playback6_codecs, ptr @playback6_platforms, ptr @.str.21, ptr @playback7_cpus, ptr @playback7_codecs, ptr @playback7_platforms, ptr @.str.22, ptr @playback8_cpus, ptr @playback8_codecs, ptr @playback8_platforms, ptr @.str.23, ptr @playback9_cpus, ptr @playback9_codecs, ptr @playback9_platforms, ptr @.str.24, ptr @capture1_cpus, ptr @capture1_codecs, ptr @capture1_platforms, ptr @mt8192_mt6359_capture1_ops, ptr @.str.25, ptr @capture2_cpus, ptr @capture2_codecs, ptr @capture2_platforms, ptr @.str.26, ptr @capture3_cpus, ptr @capture3_codecs, ptr @capture3_platforms, ptr @.str.27, ptr @capture4_cpus, ptr @capture4_codecs, ptr @capture4_platforms, ptr @.str.28, ptr @capture5_cpus, ptr @capture5_codecs, ptr @capture5_platforms, ptr @.str.29, ptr @capture6_cpus, ptr @capture6_codecs, ptr @capture6_platforms, ptr @.str.30, ptr @capture7_cpus, ptr @capture7_codecs, ptr @capture7_platforms, ptr @.str.31, ptr @capture8_cpus, ptr @capture8_codecs, ptr @capture8_platforms, ptr @.str.32, ptr @capture_mono1_cpus, ptr @capture_mono1_codecs, ptr @capture_mono1_platforms, ptr @.str.33, ptr @capture_mono2_cpus, ptr @capture_mono2_codecs, ptr @capture_mono2_platforms, ptr @.str.34, ptr @capture_mono3_cpus, ptr @capture_mono3_codecs, ptr @capture_mono3_platforms, ptr @.str.35, ptr @.str.36, ptr @playback_hdmi_cpus, ptr @playback_hdmi_codecs, ptr @playback_hdmi_platforms, ptr @.str.37, ptr @primary_codec_cpus, ptr @primary_codec_codecs, ptr @primary_codec_platforms, ptr @.str.38, ptr @primary_codec_ch34_cpus, ptr @primary_codec_ch34_codecs, ptr @primary_codec_ch34_platforms, ptr @.str.39, ptr @ap_dmic_cpus, ptr @ap_dmic_codecs, ptr @ap_dmic_platforms, ptr @.str.40, ptr @ap_dmic_ch34_cpus, ptr @ap_dmic_ch34_codecs, ptr @ap_dmic_ch34_platforms, ptr @.str.41, ptr @i2s0_cpus, ptr @i2s0_codecs, ptr @i2s0_platforms, ptr @.str.42, ptr @i2s1_cpus, ptr @i2s1_codecs, ptr @i2s1_platforms, ptr @.str.43, ptr @i2s2_cpus, ptr @i2s2_codecs, ptr @i2s2_platforms, ptr @.str.44, ptr @i2s5_cpus, ptr @i2s5_codecs, ptr @i2s5_platforms, ptr @.str.45, ptr @i2s6_cpus, ptr @i2s6_codecs, ptr @i2s6_platforms, ptr @.str.46, ptr @i2s7_cpus, ptr @i2s7_codecs, ptr @i2s7_platforms, ptr @.str.47, ptr @i2s8_cpus, ptr @i2s8_codecs, ptr @i2s8_platforms, ptr @mt8192_rt5682_i2s_ops, ptr @.str.48, ptr @i2s9_cpus, ptr @i2s9_codecs, ptr @i2s9_platforms, ptr @.str.49, ptr @connsys_i2s_cpus, ptr @connsys_i2s_codecs, ptr @connsys_i2s_platforms, ptr @.str.50, ptr @pcm1_cpus, ptr @pcm1_codecs, ptr @pcm1_platforms, ptr @.str.51, ptr @pcm2_cpus, ptr @pcm2_codecs, ptr @pcm2_platforms, ptr @tdm_cpus, ptr @tdm_codecs, ptr @tdm_platforms, ptr @mt8192_mt6359_dai_links, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @mt8192_mt6359_rt5682_startup.channels, ptr @mt8192_mt6359_rt5682_startup.constraints_channels, ptr @mt8192_mt6359_rt5682_startup.rates, ptr @mt8192_mt6359_rt5682_startup.constraints_rates, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @mt8192_mt6359_cap1_startup.channels, ptr @mt8192_mt6359_cap1_startup.constraints_channels, ptr @mt8192_mt6359_cap1_startup.rates, ptr @mt8192_mt6359_cap1_startup.constraints_rates, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @mt8192_mt6359_rt1015_rt5682_widgets, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.144, ptr @.str.145, ptr @mt8192_mt6359_rt1015p_rt5682_controls, ptr @mt8192_mt6359_rt1015p_rt5682_routes, ptr @.str.146, ptr @.str.147, ptr @mt8192_mt6359_rt1015p_rt5682_widgets, ptr @.str.149, ptr @.str.150, ptr @.str.151], section "llvm.metadata"
@0 = internal global [293 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015_rt5682_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt1015_i2s_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015p_rt5682_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s3_rt1015p_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_dev_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1015_amp_conf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015_rt5682_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015_rt5682_routes to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback12_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback12_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback12_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt5682_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback4_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback4_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback4_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback5_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback5_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback5_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback6_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback6_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback6_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback7_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback7_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback7_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback8_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback8_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback8_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback9_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback9_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback9_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_capture1_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture4_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture4_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture4_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture5_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture5_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture5_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture6_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture6_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture6_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture7_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture7_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture7_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture8_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture8_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture8_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_mono3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_hdmi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_ch34_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_ch34_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primary_codec_ch34_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_dmic_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_dmic_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_dmic_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_dmic_ch34_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_dmic_ch34_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap_dmic_ch34_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s0_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s5_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s6_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s6_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s6_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s7_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s7_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s7_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s8_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s8_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s8_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt5682_i2s_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s9_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s9_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s9_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connsys_i2s_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connsys_i2s_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connsys_i2s_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm1_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_dai_links to i32), i32 4524, i32 5664, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt5682_startup.channels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt5682_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt5682_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt5682_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt5682_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt5682_startup._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_cap1_startup.channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_cap1_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_cap1_startup.rates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_cap1_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_cap1_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_cap1_startup._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_mtkaif_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_mtkaif_calibration._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_mtkaif_calibration._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt5682_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt5682_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt5682_i2s_hw_params._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt5682_i2s_hw_params._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt5682_i2s_hw_params._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_hdmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015_rt5682_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt1015_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_rt1015_i2s_hw_params._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015p_rt5682_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015p_rt5682_routes to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_mt6359_rt1015p_rt5682_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_mt6359_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8192_mt6359_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8192_mt6359_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8192_mt6359_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_mt6359_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i110 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.end

of_parse_phandle.exit:                            ; preds = %entry
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end_crit_edge, label %if.end

of_parse_phandle.exit.do.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %of_parse_phandle.exit.do.end_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call3 = call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 5
  %5 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev8, align 4
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i110) #8
  %8 = call ptr @memset(ptr %args.i110, i32 255, i32 72)
  %call.i111 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i110) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.not.i112 = icmp eq i32 %call.i111, 0
  br i1 %tobool.not.i112, label %if.end.i113, label %if.end6.of_parse_phandle.exit115_crit_edge

if.end6.of_parse_phandle.exit115_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit115

if.end.i113:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %args.i110 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i110, align 4
  br label %of_parse_phandle.exit115

of_parse_phandle.exit115:                         ; preds = %if.end.i113, %if.end6.of_parse_phandle.exit115_crit_edge
  %retval.0.i114 = phi ptr [ %10, %if.end.i113 ], [ null, %if.end6.of_parse_phandle.exit115_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i110) #8
  %dai_link12 = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 24
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 25
  %11 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp119 = icmp sgt i32 %12, 0
  br i1 %cmp119, label %land.rhs.lr.ph, label %of_parse_phandle.exit115.for.end_crit_edge

of_parse_phandle.exit115.for.end_crit_edge:       ; preds = %of_parse_phandle.exit115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %of_parse_phandle.exit115
  %cmp17 = icmp eq ptr %call3, @mt8192_mt6359_rt1015_rt5682_card
  %cmp19 = icmp eq ptr %call3, @mt8192_mt6359_rt1015p_rt5682_card
  %tobool30.not = icmp eq ptr %retval.0.i114, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0120 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %13 = ptrtoint ptr %dai_link12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dai_link12, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120
  %tobool13.not = icmp eq ptr %arrayidx, null
  br i1 %tobool13.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call14 = call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(5) @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then16:                                        ; preds = %for.body
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 16
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mt8192_rt1015_i2s_ops, ptr %ops, align 4
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.then16
  br i1 %cmp19, label %if.else.if.end29.sink.split_crit_edge, label %if.else.if.end29_crit_edge

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.sink.split

if.end29.sink.split:                              ; preds = %if.else.if.end29.sink.split_crit_edge, %if.then18
  %i2s3_rt1015_cpus.sink = phi ptr [ @i2s3_rt1015_cpus, %if.then18 ], [ @i2s3_rt1015p_cpus, %if.else.if.end29.sink.split_crit_edge ]
  %i2s3_rt1015_codecs.sink = phi ptr [ @i2s3_rt1015_codecs, %if.then18 ], [ @i2s3_rt1015p_codecs, %if.else.if.end29.sink.split_crit_edge ]
  %.sink = phi i32 [ 2, %if.then18 ], [ 1, %if.else.if.end29.sink.split_crit_edge ]
  %i2s3_rt1015_platforms.sink = phi ptr [ @i2s3_rt1015_platforms, %if.then18 ], [ @i2s3_rt1015p_platforms, %if.else.if.end29.sink.split_crit_edge ]
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 2
  %18 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %i2s3_rt1015_cpus.sink, ptr %cpus, align 4
  %num_cpus = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 3
  %19 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %num_cpus, align 4
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 4
  %20 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %i2s3_rt1015_codecs.sink, ptr %codecs, align 4
  %num_codecs = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 5
  %21 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %num_codecs, align 4
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 6
  %22 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %i2s3_rt1015_platforms.sink, ptr %platforms, align 4
  %num_platforms = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 7
  %23 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_platforms, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge, %for.body.if.end29_crit_edge
  br i1 %tobool30.not, label %if.end29.if.end37_crit_edge, label %land.lhs.true

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end29
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call32 = call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(4) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %codecs35 = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 4
  %26 = ptrtoint ptr %codecs35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %codecs35, align 4
  %of_node36 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %of_node36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %retval.0.i114, ptr %of_node36, align 4
  %ignore = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 18
  %29 = ptrtoint ptr %ignore to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %ignore, align 4
  %bf.clear = and i32 %bf.load, -65537
  store i32 %bf.clear, ptr %ignore, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  %platforms38 = getelementptr %struct.snd_soc_dai_link, ptr %14, i32 %i.0120, i32 6
  %30 = ptrtoint ptr %platforms38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %platforms38, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool40.not = icmp eq ptr %33, null
  br i1 %tobool40.not, label %if.then41, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %of_node43 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %of_node43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %4, ptr %of_node43, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %if.end37.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %35 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_links, align 4
  %cmp = icmp slt i32 %inc, %36
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %of_parse_phandle.exit115.for.end_crit_edge
  %call.i116 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 440, i32 noundef 3520) #8
  %tobool47.not = icmp eq ptr %call.i116, null
  br i1 %tobool47.not, label %for.end.cleanup_crit_edge, label %if.end49

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %for.end
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call3, i32 0, i32 57
  %37 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i116, ptr %drvdata.i, align 4
  %call51 = call i32 @mt8192_afe_gpio_init(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call51) #11
  br label %cleanup

if.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull %call3) #8
  call void @of_node_put(ptr noundef nonnull %4) #8
  call void @of_node_put(ptr noundef %retval.0.i114) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end56, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call51, %do.end56 ], [ %call60, %if.end58 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_afe_gpio_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_mt6359_init(ptr noundef %rtd) #2 align 64 {
entry:
  %monitor.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %rtd, ptr noundef nonnull @.str.90) #8
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
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_priv, align 4
  tail call void @mt6359_set_mtkaif_protocol(ptr noundef %7, i32 noundef 2) #8
  %mtkaif_protocol = getelementptr inbounds %struct.mt8192_afe_private, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %mtkaif_protocol to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %mtkaif_protocol, align 4
  %call.i = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %rtd, ptr noundef nonnull @.str.90) #8
  %15 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dais, align 4
  %17 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_cpus, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %component.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %26, i32 0, i32 25
  %27 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monitor.i) #8
  %29 = ptrtoint ptr %monitor.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %monitor.i, align 4, !annotation !477
  %dev.i6 = getelementptr inbounds %struct.mtk_base_afe, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92) #11
  %32 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i6, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %33, i32 noundef 4) #8
  %34 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i6, align 4
  %call5.i = tail call i32 @mt8192_afe_gpio_request(ptr noundef %35, i1 noundef zeroext true, i32 noundef 22, i32 noundef 1) #8
  %36 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i6, align 4
  %call7.i = tail call i32 @mt8192_afe_gpio_request(ptr noundef %37, i1 noundef zeroext true, i32 noundef 22, i32 noundef 0) #8
  %38 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i6, align 4
  %call9.i = tail call i32 @mt8192_afe_gpio_request(ptr noundef %39, i1 noundef zeroext true, i32 noundef 23, i32 noundef 1) #8
  %40 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i6, align 4
  %call11.i = tail call i32 @mt8192_afe_gpio_request(ptr noundef %41, i1 noundef zeroext true, i32 noundef 23, i32 noundef 0) #8
  tail call void @mt6359_mtkaif_calibration_enable(ptr noundef %22) #8
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %26, i32 0, i32 2
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 3648, i32 noundef 255, i32 noundef 56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 3648, i32 noundef 255, i32 noundef 57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %topckgen.i = getelementptr inbounds %struct.mt8192_afe_private, ptr %28, i32 0, i32 1
  %46 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %topckgen.i, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 812, i32 noundef 65535, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mtkaif_calibration_num_phase.i = getelementptr inbounds %struct.mt8192_afe_private, ptr %28, i32 0, i32 11
  %48 = ptrtoint ptr %mtkaif_calibration_num_phase.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 42, ptr %mtkaif_calibration_num_phase.i, align 4
  %mtkaif_chosen_phase.i = getelementptr inbounds %struct.mt8192_afe_private, ptr %28, i32 0, i32 9
  %49 = ptrtoint ptr %mtkaif_chosen_phase.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %mtkaif_chosen_phase.i, align 4
  %arrayidx18.i = getelementptr %struct.mt8192_afe_private, ptr %28, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %arrayidx18.i, align 4
  %arrayidx20.i = getelementptr %struct.mt8192_afe_private, ptr %28, i32 0, i32 9, i32 2
  %51 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %arrayidx20.i, align 4
  %mtkaif_phase_cycle.i = getelementptr inbounds %struct.mt8192_afe_private, ptr %28, i32 0, i32 10
  %arrayidx74.i = getelementptr %struct.mt8192_afe_private, ptr %28, i32 0, i32 10, i32 1
  %arrayidx86.i = getelementptr %struct.mt8192_afe_private, ptr %28, i32 0, i32 10, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %prev_cycle_3.020.i = phi i32 [ -1, %entry ], [ %prev_cycle_3.1.i, %for.inc.i.for.body.i_crit_edge ]
  %prev_cycle_2.019.i = phi i32 [ -1, %entry ], [ %prev_cycle_2.1.i, %for.inc.i.for.body.i_crit_edge ]
  %prev_cycle_1.018.i = phi i32 [ -1, %entry ], [ %prev_cycle_1.1.i, %for.inc.i.for.body.i_crit_edge ]
  %phase.014.i = phi i32 [ 0, %entry ], [ %inc103.i, %for.inc.i.for.body.i_crit_edge ]
  call void @mt6359_set_mtkaif_calibration_phase(ptr noundef %22, i32 noundef %phase.014.i, i32 noundef %phase.014.i, i32 noundef %phase.014.i) #8
  %52 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %topckgen.i, align 4
  %call.i6.i = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 812, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.body.i
  %test_done_1.0.i = phi i32 [ 0, %for.body.i ], [ %and.i, %while.body.i.while.cond.i_crit_edge ]
  %test_done_2.0.i = phi i32 [ 0, %for.body.i ], [ %and30.i, %while.body.i.while.cond.i_crit_edge ]
  %test_done_3.0.i = phi i32 [ 0, %for.body.i ], [ %and32.i, %while.body.i.while.cond.i_crit_edge ]
  %cycle_1.0.i = phi i32 [ -1, %for.body.i ], [ %spec.select.i, %while.body.i.while.cond.i_crit_edge ]
  %cycle_2.0.i = phi i32 [ -1, %for.body.i ], [ %cycle_2.1.i, %while.body.i.while.cond.i_crit_edge ]
  %cycle_3.0.i = phi i32 [ -1, %for.body.i ], [ %cycle_3.1.i, %while.body.i.while.cond.i_crit_edge ]
  %counter.0.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test_done_1.0.i)
  %cmp24.i = icmp eq i32 %test_done_1.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test_done_2.0.i)
  %cmp25.i = icmp eq i32 %test_done_2.0.i, 0
  %or.cond1.i = select i1 %cmp24.i, i1 true, i1 %cmp25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test_done_3.0.i)
  %cmp26.i = icmp eq i32 %test_done_3.0.i, 0
  %or.cond2.i = select i1 %or.cond1.i, i1 true, i1 %cmp26.i
  br i1 %or.cond2.i, label %while.body.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %54 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %topckgen.i, align 4
  %call28.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 816, ptr noundef nonnull %monitor.i) #8
  %56 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %monitor.i, align 4
  %shr.i = lshr i32 %57, 28
  %and.i = and i32 %shr.i, 1
  %shr29.i = lshr i32 %57, 29
  %and30.i = and i32 %shr29.i, 1
  %shr31.i = lshr i32 %57, 30
  %and32.i = and i32 %shr31.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp33.not.i = icmp eq i32 %and.i, 0
  %and34.i = and i32 %57, 15
  %spec.select.i = select i1 %cmp33.not.i, i32 %cycle_1.0.i, i32 %and34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp35.not.i = icmp eq i32 %and30.i, 0
  %shr37.i = lshr i32 %57, 4
  %and38.i = and i32 %shr37.i, 15
  %cycle_2.1.i = select i1 %cmp35.not.i, i32 %cycle_2.0.i, i32 %and38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %cmp40.not.i = icmp eq i32 %and32.i, 0
  %shr42.i = lshr i32 %57, 8
  %and43.i = and i32 %shr42.i, 15
  %cycle_3.1.i = select i1 %cmp40.not.i, i32 %cycle_3.0.i, i32 %and43.i
  %inc.i = add nuw nsw i32 %counter.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 10001
  br i1 %exitcond.i, label %do.end49.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.end49.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.92, i32 noundef %spec.select.i, i32 noundef %cycle_2.1.i, i32 noundef %cycle_3.1.i, i32 noundef %57) #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end49.i, %while.cond.i.while.end.i_crit_edge
  %cycle_1.2.i = phi i32 [ %spec.select.i, %do.end49.i ], [ %cycle_1.0.i, %while.cond.i.while.end.i_crit_edge ]
  %cycle_2.2.i = phi i32 [ %cycle_2.1.i, %do.end49.i ], [ %cycle_2.0.i, %while.cond.i.while.end.i_crit_edge ]
  %cycle_3.2.i = phi i32 [ %cycle_3.1.i, %do.end49.i ], [ %cycle_3.0.i, %while.cond.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase.014.i)
  %cmp52.i = icmp eq i32 %phase.014.i, 0
  %prev_cycle_1.1.i = select i1 %cmp52.i, i32 %cycle_1.2.i, i32 %prev_cycle_1.018.i
  %prev_cycle_2.1.i = select i1 %cmp52.i, i32 %cycle_2.2.i, i32 %prev_cycle_2.019.i
  %prev_cycle_3.1.i = select i1 %cmp52.i, i32 %cycle_3.2.i, i32 %prev_cycle_3.020.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_1.2.i, i32 %prev_cycle_1.1.i)
  %cmp55.not.i = icmp eq i32 %cycle_1.2.i, %prev_cycle_1.1.i
  br i1 %cmp55.not.i, label %while.end.i.if.end63.i_crit_edge, label %land.lhs.true.i

while.end.i.if.end63.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

land.lhs.true.i:                                  ; preds = %while.end.i
  %60 = ptrtoint ptr %mtkaif_chosen_phase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mtkaif_chosen_phase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp58.i = icmp slt i32 %61, 0
  br i1 %cmp58.i, label %if.then59.i, label %land.lhs.true.i.if.end63.i_crit_edge

land.lhs.true.i.if.end63.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.then59.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %phase.014.i, -1
  %62 = ptrtoint ptr %mtkaif_chosen_phase.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sub.i, ptr %mtkaif_chosen_phase.i, align 4
  %63 = ptrtoint ptr %mtkaif_phase_cycle.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %prev_cycle_1.1.i, ptr %mtkaif_phase_cycle.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %land.lhs.true.i.if.end63.i_crit_edge, %while.end.i.if.end63.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_2.2.i, i32 %prev_cycle_2.1.i)
  %cmp64.not.i = icmp eq i32 %cycle_2.2.i, %prev_cycle_2.1.i
  br i1 %cmp64.not.i, label %if.end63.i.if.end75.i_crit_edge, label %land.lhs.true65.i

if.end63.i.if.end75.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

land.lhs.true65.i:                                ; preds = %if.end63.i
  %64 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp68.i = icmp slt i32 %65, 0
  br i1 %cmp68.i, label %if.then69.i, label %land.lhs.true65.i.if.end75.i_crit_edge

land.lhs.true65.i.if.end75.i_crit_edge:           ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75.i

if.then69.i:                                      ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub70.i = add i32 %phase.014.i, -1
  %66 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub70.i, ptr %arrayidx18.i, align 4
  %67 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %prev_cycle_2.1.i, ptr %arrayidx74.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then69.i, %land.lhs.true65.i.if.end75.i_crit_edge, %if.end63.i.if.end75.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_3.2.i, i32 %prev_cycle_3.1.i)
  %cmp76.not.i = icmp eq i32 %cycle_3.2.i, %prev_cycle_3.1.i
  br i1 %cmp76.not.i, label %if.end75.i.if.end87.i_crit_edge, label %land.lhs.true77.i

if.end75.i.if.end87.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

land.lhs.true77.i:                                ; preds = %if.end75.i
  %68 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp80.i = icmp slt i32 %69, 0
  br i1 %cmp80.i, label %if.then81.i, label %land.lhs.true77.i.if.end87.i_crit_edge

land.lhs.true77.i.if.end87.i_crit_edge:           ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87.i

if.then81.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub82.i = add i32 %phase.014.i, -1
  %70 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub82.i, ptr %arrayidx20.i, align 4
  %71 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %prev_cycle_3.1.i, ptr %arrayidx86.i, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then81.i, %land.lhs.true77.i.if.end87.i_crit_edge, %if.end75.i.if.end87.i_crit_edge
  %72 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %topckgen.i, align 4
  %call.i7.i = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 812, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %74 = ptrtoint ptr %mtkaif_chosen_phase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mtkaif_chosen_phase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %cmp92.i = icmp sgt i32 %75, -1
  br i1 %cmp92.i, label %land.lhs.true93.i, label %if.end87.i.for.inc.i_crit_edge

if.end87.i.for.inc.i_crit_edge:                   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true93.i:                                ; preds = %if.end87.i
  %76 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp96.i = icmp sgt i32 %77, -1
  br i1 %cmp96.i, label %land.lhs.true97.i, label %land.lhs.true93.i.for.inc.i_crit_edge

land.lhs.true93.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true97.i:                                ; preds = %land.lhs.true93.i
  %78 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %79)
  %cmp100.i = icmp sgt i32 %79, -1
  br i1 %cmp100.i, label %land.lhs.true97.i.mt8192_mt6359_mtkaif_calibration.exit_crit_edge, label %land.lhs.true97.i.for.inc.i_crit_edge

land.lhs.true97.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true97.i.mt8192_mt6359_mtkaif_calibration.exit_crit_edge: ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8192_mt6359_mtkaif_calibration.exit

for.inc.i:                                        ; preds = %land.lhs.true97.i.for.inc.i_crit_edge, %land.lhs.true93.i.for.inc.i_crit_edge, %if.end87.i.for.inc.i_crit_edge
  %inc103.i = add i32 %phase.014.i, 1
  %80 = ptrtoint ptr %mtkaif_calibration_num_phase.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mtkaif_calibration_num_phase.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc103.i, i32 %81)
  %cmp.not.i = icmp sgt i32 %inc103.i, %81
  %or.cond.i = or i1 %or.cond2.i, %cmp.not.i
  br i1 %or.cond.i, label %for.inc.i.mt8192_mt6359_mtkaif_calibration.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.mt8192_mt6359_mtkaif_calibration.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt8192_mt6359_mtkaif_calibration.exit

mt8192_mt6359_mtkaif_calibration.exit:            ; preds = %for.inc.i.mt8192_mt6359_mtkaif_calibration.exit_crit_edge, %land.lhs.true97.i.mt8192_mt6359_mtkaif_calibration.exit_crit_edge
  %82 = call i32 @llvm.smax.i32(i32 %75, i32 0) #8
  %83 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx18.i, align 4
  %85 = call i32 @llvm.smax.i32(i32 %84, i32 0) #8
  %86 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx20.i, align 4
  %88 = call i32 @llvm.smax.i32(i32 %87, i32 0) #8
  call void @mt6359_set_mtkaif_calibration_phase(ptr noundef %22, i32 noundef %82, i32 noundef %85, i32 noundef %88) #8
  %89 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap.i, align 4
  %call.i8.i = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 3648, i32 noundef 255, i32 noundef 56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @mt6359_mtkaif_calibration_disable(ptr noundef %22) #8
  %91 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i6, align 4
  %call130.i = call i32 @mt8192_afe_gpio_request(ptr noundef %92, i1 noundef zeroext false, i32 noundef 22, i32 noundef 1) #8
  %93 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i6, align 4
  %call132.i = call i32 @mt8192_afe_gpio_request(ptr noundef %94, i1 noundef zeroext false, i32 noundef 22, i32 noundef 0) #8
  %95 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i6, align 4
  %call134.i = call i32 @mt8192_afe_gpio_request(ptr noundef %96, i1 noundef zeroext false, i32 noundef 23, i32 noundef 1) #8
  %97 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i6, align 4
  %call136.i = call i32 @mt8192_afe_gpio_request(ptr noundef %98, i1 noundef zeroext false, i32 noundef 23, i32 noundef 0) #8
  %99 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev.i6, align 4
  %call.i9.i = call i32 @__pm_runtime_idle(ptr noundef %100, i32 noundef 5) #8
  %101 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i6, align 4
  %103 = ptrtoint ptr %mtkaif_chosen_phase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mtkaif_chosen_phase.i, align 4
  %105 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx18.i, align 4
  %107 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx20.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.92, i32 noundef %104, i32 noundef %106, i32 noundef %108) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monitor.i) #8
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_i2s_hw_params_fixup(ptr nocapture noundef readnone %rtd, ptr nocapture noundef %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

snd_mask_reset_range.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %or.i.i.i = or i32 %3, 64
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_rt5682_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata.i, align 4
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %9, ptr noundef nonnull @.str.104, i32 noundef 30723, ptr noundef %11, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.105, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %jack3 = getelementptr inbounds %struct.snd_soc_jack, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %jack3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jack3, align 4
  %call4 = tail call i32 @snd_jack_set_key(ptr noundef %15, i32 noundef 16384, i32 noundef 164) #8
  %16 = ptrtoint ptr %jack3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jack3, align 4
  %call6 = tail call i32 @snd_jack_set_key(ptr noundef %17, i32 noundef 8192, i32 noundef 582) #8
  %18 = ptrtoint ptr %jack3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jack3, align 4
  %call8 = tail call i32 @snd_jack_set_key(ptr noundef %19, i32 noundef 4096, i32 noundef 115) #8
  %20 = ptrtoint ptr %jack3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jack3, align 4
  %call10 = tail call i32 @snd_jack_set_key(ptr noundef %21, i32 noundef 2048, i32 noundef 114) #8
  %call11 = tail call i32 @snd_soc_component_set_jack(ptr noundef %7, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_mt6359_hdmi_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata.i, align 4
  %hdmi_jack = getelementptr inbounds %struct.mt8192_mt6359_priv, ptr %11, i32 0, i32 1
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %9, ptr noundef nonnull @.str.119, i32 noundef 4, ptr noundef %hdmi_jack, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.120, i32 noundef %call2) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_set_jack(ptr noundef %7, ptr noundef %hdmi_jack, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_mt6359_rt5682_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8192_mt6359_rt5682_startup.constraints_channels) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8192_mt6359_rt5682_startup.constraints_rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.59, %entry.cleanup.sink.split_crit_edge ], [ @.str.62, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.62.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_mt6359_cap1_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8192_mt6359_cap1_startup.constraints_channels) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8192_mt6359_cap1_startup.constraints_rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.59, %entry.cleanup.sink.split_crit_edge ], [ @.str.62, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.62.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt6359_set_mtkaif_protocol(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8192_afe_gpio_request(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt6359_mtkaif_calibration_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt6359_set_mtkaif_calibration_phase(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt6359_mtkaif_calibration_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_rt5682_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_cpus, align 4
  %arrayidx3 = getelementptr ptr, ptr %5, i32 %9
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %13, 7
  %arrayidx.i.i64 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %15, %entry.if.then.i.i_crit_edge ], [ %18, %for.inc.i.i.if.then.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !478
  %add.i.i = or i32 %16, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call5 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.107, i32 noundef %call5) #11
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %call6 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.110) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %mul14 = shl i32 %24, 6
  %mul16 = shl i32 %24, 9
  %call17 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %11, i32 noundef 0, i32 noundef 1, i32 noundef %mul14, i32 noundef %mul16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.113) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %mul26 = shl i32 %28, 9
  %call27 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %11, i32 noundef 1, i32 noundef %mul26, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.116) #11
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end32, %do.end22, %do.end10, %do.end
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call6, %do.end10 ], [ %call17, %do.end22 ], [ %call27, %do.end32 ], [ %call35, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8192_rt1015_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %9, 7
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp47.not = icmp eq i32 %11, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  br label %land.rhs

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.048, 1
  %12 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.cond.land.rhs_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.land.rhs_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

land.rhs:                                         ; preds = %for.cond.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.048 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.cond.land.rhs_crit_edge ]
  %14 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dais, align 4
  %16 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_cpus, align 4
  %add = add i32 %17, %i.048
  %arrayidx3 = getelementptr ptr, ptr %15, i32 %add
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %mul5 = shl i32 %21, 6
  %mul7 = shl i32 %21, 8
  %call8 = tail call i32 @snd_soc_dai_set_pll(ptr noundef nonnull %19, i32 noundef 0, i32 noundef 1, i32 noundef %mul5, i32 noundef %mul7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.113) #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %mul11 = shl i32 %25, 8
  %call12 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %19, i32 noundef 1, i32 noundef %mul11, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond, label %do.end17

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.116) #11
  br label %cleanup

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %call20 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end17, %do.end
  %retval.0 = phi i32 [ %call8, %do.end ], [ %call12, %do.end17 ], [ %call20, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_poweroff(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_resume(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 293)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 293)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !124, !125, !127, !128, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !142, !144, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !198, !200, !202, !204, !206, !207, !208, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !271, !272, !273, !274, !275, !277, !279, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !334, !335, !337, !339, !340, !341, !342, !344, !346, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !382, !384, !386, !387, !388, !389, !391, !393, !395, !397, !399, !401, !402, !404, !405, !407, !408, !410, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !434, !435, !437, !438, !440, !441, !442, !443, !445, !447, !449, !450, !452, !454, !456, !458, !460, !461, !462, !463, !464, !466}
!llvm.module.flags = !{!468, !469, !470, !471, !472, !473, !474, !475}
!llvm.ident = !{!476}

!0 = !{ptr @__initcall__kmod_mt8192_mt6359_rt1015_rt5682__295_1209_mt8192_mt6359_driver_init6, !1, !"__initcall__kmod_mt8192_mt6359_rt1015_rt5682__295_1209_mt8192_mt6359_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1209, i32 1}
!2 = !{ptr @__exitcall_mt8192_mt6359_driver_exit, !1, !"__exitcall_mt8192_mt6359_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1212, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1213, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1214, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias300, !11, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1215, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1200, i32 11}
!14 = !{ptr @mt8192_mt6359_driver, !15, !"mt8192_mt6359_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1198, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1112, i32 7}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1114, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt8192_mt6359_dev_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt8192_mt6359_dev_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1124, i32 11}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1127, i32 30}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1152, i32 44}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1168, i32 3}
!34 = !{ptr @mt8192_mt6359_dev_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt8192_mt6359_dev_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1054, i32 10}
!38 = !{ptr @mt8192_mt6359_rt1015_rt5682_card, !39, !"mt8192_mt6359_rt1015_rt5682_card", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1053, i32 28}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 670, i32 11}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 679, i32 11}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 688, i32 11}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 697, i32 11}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 707, i32 11}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 716, i32 11}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 725, i32 11}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 734, i32 11}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 743, i32 11}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 752, i32 11}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 761, i32 11}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 771, i32 11}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 781, i32 11}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 790, i32 11}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 799, i32 11}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 808, i32 11}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 817, i32 11}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 826, i32 11}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 835, i32 11}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 844, i32 11}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 853, i32 11}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 862, i32 11}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 863, i32 18}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 872, i32 11}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 881, i32 11}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 889, i32 11}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 896, i32 11}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 903, i32 11}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 911, i32 11}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 919, i32 11}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 934, i32 11}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 942, i32 11}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 950, i32 11}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 958, i32 11}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 968, i32 11}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 977, i32 11}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 984, i32 11}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 992, i32 11}
!116 = !{ptr @mt8192_mt6359_dai_links, !117, !"mt8192_mt6359_dai_links", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 667, i32 32}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 457, i32 1}
!120 = !{ptr @playback1_cpus, !119, !"playback1_cpus", i1 false, i1 false}
!121 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @playback1_codecs, !119, !"playback1_codecs", i1 false, i1 false}
!124 = !{ptr @playback1_platforms, !119, !"playback1_platforms", i1 false, i1 false}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 462, i32 1}
!127 = !{ptr @playback12_cpus, !126, !"playback12_cpus", i1 false, i1 false}
!128 = !{ptr @playback12_codecs, !126, !"playback12_codecs", i1 false, i1 false}
!129 = !{ptr @playback12_platforms, !126, !"playback12_platforms", i1 false, i1 false}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 467, i32 1}
!132 = !{ptr @playback2_cpus, !131, !"playback2_cpus", i1 false, i1 false}
!133 = !{ptr @playback2_codecs, !131, !"playback2_codecs", i1 false, i1 false}
!134 = !{ptr @playback2_platforms, !131, !"playback2_platforms", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 472, i32 1}
!137 = !{ptr @playback3_cpus, !136, !"playback3_cpus", i1 false, i1 false}
!138 = !{ptr @playback3_codecs, !136, !"playback3_codecs", i1 false, i1 false}
!139 = !{ptr @playback3_platforms, !136, !"playback3_platforms", i1 false, i1 false}
!140 = !{ptr @mt8192_mt6359_rt5682_ops, !141, !"mt8192_mt6359_rt5682_ops", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 452, i32 33}
!142 = !{ptr @mt8192_mt6359_rt5682_startup.channels, !143, !"channels", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 412, i32 28}
!144 = !{ptr @mt8192_mt6359_rt5682_startup.constraints_channels, !145, !"constraints_channels", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 415, i32 49}
!146 = !{ptr @mt8192_mt6359_rt5682_startup.rates, !147, !"rates", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 420, i32 28}
!148 = !{ptr @mt8192_mt6359_rt5682_startup.constraints_rates, !149, !"constraints_rates", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 423, i32 49}
!150 = !{ptr @.str.59, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 437, i32 3}
!152 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @mt8192_mt6359_rt5682_startup._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @mt8192_mt6359_rt5682_startup._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.62, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 445, i32 3}
!157 = !{ptr @mt8192_mt6359_rt5682_startup._entry.61, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @mt8192_mt6359_rt5682_startup._entry_ptr.63, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 477, i32 1}
!161 = !{ptr @playback4_cpus, !160, !"playback4_cpus", i1 false, i1 false}
!162 = !{ptr @playback4_codecs, !160, !"playback4_codecs", i1 false, i1 false}
!163 = !{ptr @playback4_platforms, !160, !"playback4_platforms", i1 false, i1 false}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 482, i32 1}
!166 = !{ptr @playback5_cpus, !165, !"playback5_cpus", i1 false, i1 false}
!167 = !{ptr @playback5_codecs, !165, !"playback5_codecs", i1 false, i1 false}
!168 = !{ptr @playback5_platforms, !165, !"playback5_platforms", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 487, i32 1}
!171 = !{ptr @playback6_cpus, !170, !"playback6_cpus", i1 false, i1 false}
!172 = !{ptr @playback6_codecs, !170, !"playback6_codecs", i1 false, i1 false}
!173 = !{ptr @playback6_platforms, !170, !"playback6_platforms", i1 false, i1 false}
!174 = !{ptr @.str.67, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 492, i32 1}
!176 = !{ptr @playback7_cpus, !175, !"playback7_cpus", i1 false, i1 false}
!177 = !{ptr @playback7_codecs, !175, !"playback7_codecs", i1 false, i1 false}
!178 = !{ptr @playback7_platforms, !175, !"playback7_platforms", i1 false, i1 false}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 497, i32 1}
!181 = !{ptr @playback8_cpus, !180, !"playback8_cpus", i1 false, i1 false}
!182 = !{ptr @playback8_codecs, !180, !"playback8_codecs", i1 false, i1 false}
!183 = !{ptr @playback8_platforms, !180, !"playback8_platforms", i1 false, i1 false}
!184 = !{ptr @.str.69, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 502, i32 1}
!186 = !{ptr @playback9_cpus, !185, !"playback9_cpus", i1 false, i1 false}
!187 = !{ptr @playback9_codecs, !185, !"playback9_codecs", i1 false, i1 false}
!188 = !{ptr @playback9_platforms, !185, !"playback9_platforms", i1 false, i1 false}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 507, i32 1}
!191 = !{ptr @capture1_cpus, !190, !"capture1_cpus", i1 false, i1 false}
!192 = !{ptr @capture1_codecs, !190, !"capture1_codecs", i1 false, i1 false}
!193 = !{ptr @capture1_platforms, !190, !"capture1_platforms", i1 false, i1 false}
!194 = !{ptr @mt8192_mt6359_capture1_ops, !195, !"mt8192_mt6359_capture1_ops", i1 false, i1 false}
!195 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 405, i32 33}
!196 = !{ptr @mt8192_mt6359_cap1_startup.channels, !197, !"channels", i1 false, i1 false}
!197 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 365, i32 28}
!198 = !{ptr @mt8192_mt6359_cap1_startup.constraints_channels, !199, !"constraints_channels", i1 false, i1 false}
!199 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 368, i32 49}
!200 = !{ptr @mt8192_mt6359_cap1_startup.rates, !201, !"rates", i1 false, i1 false}
!201 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 373, i32 28}
!202 = !{ptr @mt8192_mt6359_cap1_startup.constraints_rates, !203, !"constraints_rates", i1 false, i1 false}
!203 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 376, i32 49}
!204 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 390, i32 3}
!206 = !{ptr @mt8192_mt6359_cap1_startup._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @mt8192_mt6359_cap1_startup._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @mt8192_mt6359_cap1_startup._entry.72, !209, !"_entry", i1 false, i1 false}
!209 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 398, i32 3}
!210 = !{ptr @mt8192_mt6359_cap1_startup._entry_ptr.73, !209, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.74, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 512, i32 1}
!213 = !{ptr @capture2_cpus, !212, !"capture2_cpus", i1 false, i1 false}
!214 = !{ptr @capture2_codecs, !212, !"capture2_codecs", i1 false, i1 false}
!215 = !{ptr @capture2_platforms, !212, !"capture2_platforms", i1 false, i1 false}
!216 = !{ptr @.str.75, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 517, i32 1}
!218 = !{ptr @capture3_cpus, !217, !"capture3_cpus", i1 false, i1 false}
!219 = !{ptr @capture3_codecs, !217, !"capture3_codecs", i1 false, i1 false}
!220 = !{ptr @capture3_platforms, !217, !"capture3_platforms", i1 false, i1 false}
!221 = !{ptr @.str.76, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 522, i32 1}
!223 = !{ptr @capture4_cpus, !222, !"capture4_cpus", i1 false, i1 false}
!224 = !{ptr @capture4_codecs, !222, !"capture4_codecs", i1 false, i1 false}
!225 = !{ptr @capture4_platforms, !222, !"capture4_platforms", i1 false, i1 false}
!226 = !{ptr @.str.77, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 527, i32 1}
!228 = !{ptr @capture5_cpus, !227, !"capture5_cpus", i1 false, i1 false}
!229 = !{ptr @capture5_codecs, !227, !"capture5_codecs", i1 false, i1 false}
!230 = !{ptr @capture5_platforms, !227, !"capture5_platforms", i1 false, i1 false}
!231 = !{ptr @.str.78, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 532, i32 1}
!233 = !{ptr @capture6_cpus, !232, !"capture6_cpus", i1 false, i1 false}
!234 = !{ptr @capture6_codecs, !232, !"capture6_codecs", i1 false, i1 false}
!235 = !{ptr @capture6_platforms, !232, !"capture6_platforms", i1 false, i1 false}
!236 = !{ptr @.str.79, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 537, i32 1}
!238 = !{ptr @capture7_cpus, !237, !"capture7_cpus", i1 false, i1 false}
!239 = !{ptr @capture7_codecs, !237, !"capture7_codecs", i1 false, i1 false}
!240 = !{ptr @capture7_platforms, !237, !"capture7_platforms", i1 false, i1 false}
!241 = !{ptr @.str.80, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 542, i32 1}
!243 = !{ptr @capture8_cpus, !242, !"capture8_cpus", i1 false, i1 false}
!244 = !{ptr @capture8_codecs, !242, !"capture8_codecs", i1 false, i1 false}
!245 = !{ptr @capture8_platforms, !242, !"capture8_platforms", i1 false, i1 false}
!246 = !{ptr @.str.81, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 547, i32 1}
!248 = !{ptr @capture_mono1_cpus, !247, !"capture_mono1_cpus", i1 false, i1 false}
!249 = !{ptr @capture_mono1_codecs, !247, !"capture_mono1_codecs", i1 false, i1 false}
!250 = !{ptr @capture_mono1_platforms, !247, !"capture_mono1_platforms", i1 false, i1 false}
!251 = !{ptr @.str.82, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 552, i32 1}
!253 = !{ptr @capture_mono2_cpus, !252, !"capture_mono2_cpus", i1 false, i1 false}
!254 = !{ptr @capture_mono2_codecs, !252, !"capture_mono2_codecs", i1 false, i1 false}
!255 = !{ptr @capture_mono2_platforms, !252, !"capture_mono2_platforms", i1 false, i1 false}
!256 = !{ptr @.str.83, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 557, i32 1}
!258 = !{ptr @capture_mono3_cpus, !257, !"capture_mono3_cpus", i1 false, i1 false}
!259 = !{ptr @capture_mono3_codecs, !257, !"capture_mono3_codecs", i1 false, i1 false}
!260 = !{ptr @capture_mono3_platforms, !257, !"capture_mono3_platforms", i1 false, i1 false}
!261 = !{ptr @.str.84, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 562, i32 1}
!263 = !{ptr @playback_hdmi_cpus, !262, !"playback_hdmi_cpus", i1 false, i1 false}
!264 = !{ptr @playback_hdmi_codecs, !262, !"playback_hdmi_codecs", i1 false, i1 false}
!265 = !{ptr @playback_hdmi_platforms, !262, !"playback_hdmi_platforms", i1 false, i1 false}
!266 = !{ptr @.str.85, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 568, i32 1}
!268 = !{ptr @primary_codec_cpus, !267, !"primary_codec_cpus", i1 false, i1 false}
!269 = !{ptr @.str.86, !267, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.87, !267, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.88, !267, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.89, !267, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @primary_codec_codecs, !267, !"primary_codec_codecs", i1 false, i1 false}
!274 = !{ptr @primary_codec_platforms, !267, !"primary_codec_platforms", i1 false, i1 false}
!275 = !{ptr @.str.90, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 290, i32 30}
!277 = !{ptr @.str.91, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 145, i32 2}
!279 = !{ptr @.str.92, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.93, !278, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @mt8192_mt6359_mtkaif_calibration._entry, !278, !"_entry", i1 false, i1 false}
!282 = !{ptr @mt8192_mt6359_mtkaif_calibration._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.95, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 206, i32 5}
!285 = !{ptr @mt8192_mt6359_mtkaif_calibration._entry.94, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @mt8192_mt6359_mtkaif_calibration._entry_ptr.96, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.98, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 278, i32 2}
!289 = !{ptr @mt8192_mt6359_mtkaif_calibration._entry.97, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @mt8192_mt6359_mtkaif_calibration._entry_ptr.99, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.100, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 576, i32 1}
!293 = !{ptr @primary_codec_ch34_cpus, !292, !"primary_codec_ch34_cpus", i1 false, i1 false}
!294 = !{ptr @.str.101, !292, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @primary_codec_ch34_codecs, !292, !"primary_codec_ch34_codecs", i1 false, i1 false}
!296 = !{ptr @primary_codec_ch34_platforms, !292, !"primary_codec_ch34_platforms", i1 false, i1 false}
!297 = !{ptr @ap_dmic_cpus, !298, !"ap_dmic_cpus", i1 false, i1 false}
!298 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 582, i32 1}
!299 = !{ptr @ap_dmic_codecs, !298, !"ap_dmic_codecs", i1 false, i1 false}
!300 = !{ptr @ap_dmic_platforms, !298, !"ap_dmic_platforms", i1 false, i1 false}
!301 = !{ptr @ap_dmic_ch34_cpus, !302, !"ap_dmic_ch34_cpus", i1 false, i1 false}
!302 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 587, i32 1}
!303 = !{ptr @ap_dmic_ch34_codecs, !302, !"ap_dmic_ch34_codecs", i1 false, i1 false}
!304 = !{ptr @ap_dmic_ch34_platforms, !302, !"ap_dmic_ch34_platforms", i1 false, i1 false}
!305 = !{ptr @i2s0_cpus, !306, !"i2s0_cpus", i1 false, i1 false}
!306 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 592, i32 1}
!307 = !{ptr @i2s0_codecs, !306, !"i2s0_codecs", i1 false, i1 false}
!308 = !{ptr @i2s0_platforms, !306, !"i2s0_platforms", i1 false, i1 false}
!309 = !{ptr @i2s1_cpus, !310, !"i2s1_cpus", i1 false, i1 false}
!310 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 597, i32 1}
!311 = !{ptr @i2s1_codecs, !310, !"i2s1_codecs", i1 false, i1 false}
!312 = !{ptr @i2s1_platforms, !310, !"i2s1_platforms", i1 false, i1 false}
!313 = !{ptr @i2s2_cpus, !314, !"i2s2_cpus", i1 false, i1 false}
!314 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 602, i32 1}
!315 = !{ptr @i2s2_codecs, !314, !"i2s2_codecs", i1 false, i1 false}
!316 = !{ptr @i2s2_platforms, !314, !"i2s2_platforms", i1 false, i1 false}
!317 = !{ptr @i2s5_cpus, !318, !"i2s5_cpus", i1 false, i1 false}
!318 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 620, i32 1}
!319 = !{ptr @i2s5_codecs, !318, !"i2s5_codecs", i1 false, i1 false}
!320 = !{ptr @i2s5_platforms, !318, !"i2s5_platforms", i1 false, i1 false}
!321 = !{ptr @i2s6_cpus, !322, !"i2s6_cpus", i1 false, i1 false}
!322 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 625, i32 1}
!323 = !{ptr @i2s6_codecs, !322, !"i2s6_codecs", i1 false, i1 false}
!324 = !{ptr @i2s6_platforms, !322, !"i2s6_platforms", i1 false, i1 false}
!325 = !{ptr @i2s7_cpus, !326, !"i2s7_cpus", i1 false, i1 false}
!326 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 630, i32 1}
!327 = !{ptr @i2s7_codecs, !326, !"i2s7_codecs", i1 false, i1 false}
!328 = !{ptr @i2s7_platforms, !326, !"i2s7_platforms", i1 false, i1 false}
!329 = !{ptr @i2s8_cpus, !330, !"i2s8_cpus", i1 false, i1 false}
!330 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 635, i32 1}
!331 = !{ptr @.str.102, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.103, !330, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @i2s8_codecs, !330, !"i2s8_codecs", i1 false, i1 false}
!334 = !{ptr @i2s8_platforms, !330, !"i2s8_platforms", i1 false, i1 false}
!335 = !{ptr @.str.104, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 315, i32 41}
!337 = !{ptr @.str.105, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 321, i32 3}
!339 = !{ptr @.str.106, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @mt8192_rt5682_init._entry, !338, !"_entry", i1 false, i1 false}
!341 = !{ptr @mt8192_rt5682_init._entry_ptr, !338, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @mt8192_rt5682_i2s_ops, !343, !"mt8192_rt5682_i2s_ops", i1 false, i1 false}
!343 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 124, i32 33}
!344 = !{ptr @.str.107, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 89, i32 3}
!346 = !{ptr @.str.108, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @mt8192_rt5682_i2s_hw_params._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @mt8192_rt5682_i2s_hw_params._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.110, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 95, i32 3}
!351 = !{ptr @mt8192_rt5682_i2s_hw_params._entry.109, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @mt8192_rt5682_i2s_hw_params._entry_ptr.111, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.113, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 104, i32 3}
!355 = !{ptr @mt8192_rt5682_i2s_hw_params._entry.112, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @mt8192_rt5682_i2s_hw_params._entry_ptr.114, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.116, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 113, i32 3}
!359 = !{ptr @mt8192_rt5682_i2s_hw_params._entry.115, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @mt8192_rt5682_i2s_hw_params._entry_ptr.117, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @i2s9_cpus, !362, !"i2s9_cpus", i1 false, i1 false}
!362 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 641, i32 1}
!363 = !{ptr @i2s9_codecs, !362, !"i2s9_codecs", i1 false, i1 false}
!364 = !{ptr @i2s9_platforms, !362, !"i2s9_platforms", i1 false, i1 false}
!365 = !{ptr @connsys_i2s_cpus, !366, !"connsys_i2s_cpus", i1 false, i1 false}
!366 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 647, i32 1}
!367 = !{ptr @connsys_i2s_codecs, !366, !"connsys_i2s_codecs", i1 false, i1 false}
!368 = !{ptr @connsys_i2s_platforms, !366, !"connsys_i2s_platforms", i1 false, i1 false}
!369 = !{ptr @pcm1_cpus, !370, !"pcm1_cpus", i1 false, i1 false}
!370 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 652, i32 1}
!371 = !{ptr @pcm1_codecs, !370, !"pcm1_codecs", i1 false, i1 false}
!372 = !{ptr @pcm1_platforms, !370, !"pcm1_platforms", i1 false, i1 false}
!373 = !{ptr @pcm2_cpus, !374, !"pcm2_cpus", i1 false, i1 false}
!374 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 657, i32 1}
!375 = !{ptr @pcm2_codecs, !374, !"pcm2_codecs", i1 false, i1 false}
!376 = !{ptr @pcm2_platforms, !374, !"pcm2_platforms", i1 false, i1 false}
!377 = !{ptr @tdm_cpus, !378, !"tdm_cpus", i1 false, i1 false}
!378 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 662, i32 1}
!379 = !{ptr @.str.118, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @tdm_codecs, !378, !"tdm_codecs", i1 false, i1 false}
!381 = !{ptr @tdm_platforms, !378, !"tdm_platforms", i1 false, i1 false}
!382 = !{ptr @.str.119, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 340, i32 41}
!384 = !{ptr @.str.120, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 343, i32 3}
!386 = !{ptr @.str.121, !385, !"<string literal>", i1 false, i1 false}
!387 = !{ptr @mt8192_mt6359_hdmi_init._entry, !385, !"_entry", i1 false, i1 false}
!388 = !{ptr @mt8192_mt6359_hdmi_init._entry_ptr, !385, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.122, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1044, i32 10}
!391 = !{ptr @.str.123, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1045, i32 18}
!393 = !{ptr @.str.124, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1048, i32 10}
!395 = !{ptr @.str.125, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1049, i32 18}
!397 = !{ptr @rt1015_amp_conf, !398, !"rt1015_amp_conf", i1 false, i1 false}
!398 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1042, i32 34}
!399 = !{ptr @.str.126, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1036, i32 2}
!401 = !{ptr @.str.127, !400, !"<string literal>", i1 false, i1 false}
!402 = !{ptr @.str.128, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1037, i32 2}
!404 = !{ptr @.str.129, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @.str.130, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1038, i32 2}
!407 = !{ptr @.str.131, !406, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.132, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1039, i32 2}
!410 = !{ptr @.str.133, !409, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @mt8192_mt6359_rt1015_rt5682_controls, !412, !"mt8192_mt6359_rt1015_rt5682_controls", i1 false, i1 false}
!412 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1035, i32 38}
!413 = !{ptr @.str.134, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1020, i32 2}
!415 = !{ptr @mt8192_mt6359_rt1015_rt5682_widgets, !416, !"mt8192_mt6359_rt1015_rt5682_widgets", i1 false, i1 false}
!416 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1015, i32 1}
!417 = !{ptr @.str.136, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1025, i32 22}
!419 = !{ptr @.str.137, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1026, i32 23}
!421 = !{ptr @.str.138, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1028, i32 28}
!423 = !{ptr @.str.139, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1029, i32 28}
!425 = !{ptr @.str.140, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1030, i32 4}
!427 = !{ptr @mt8192_mt6359_rt1015_rt5682_routes, !428, !"mt8192_mt6359_rt1015_rt5682_routes", i1 false, i1 false}
!428 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1023, i32 40}
!429 = !{ptr @mt8192_rt1015_i2s_ops, !430, !"mt8192_rt1015_i2s_ops", i1 false, i1 false}
!430 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 120, i32 33}
!431 = !{ptr @.str.141, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 57, i32 4}
!433 = !{ptr @mt8192_rt1015_i2s_hw_params._entry, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @mt8192_rt1015_i2s_hw_params._entry_ptr, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @mt8192_rt1015_i2s_hw_params._entry.142, !436, !"_entry", i1 false, i1 false}
!436 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 66, i32 4}
!437 = !{ptr @mt8192_rt1015_i2s_hw_params._entry_ptr.143, !436, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @i2s3_rt1015_cpus, !439, !"i2s3_rt1015_cpus", i1 false, i1 false}
!439 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 607, i32 1}
!440 = !{ptr @.str.144, !439, !"<string literal>", i1 false, i1 false}
!441 = !{ptr @i2s3_rt1015_codecs, !439, !"i2s3_rt1015_codecs", i1 false, i1 false}
!442 = !{ptr @i2s3_rt1015_platforms, !439, !"i2s3_rt1015_platforms", i1 false, i1 false}
!443 = !{ptr @.str.145, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1091, i32 10}
!445 = !{ptr @mt8192_mt6359_rt1015p_rt5682_card, !446, !"mt8192_mt6359_rt1015p_rt5682_card", i1 false, i1 false}
!446 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1090, i32 28}
!447 = !{ptr @.str.146, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1085, i32 2}
!449 = !{ptr @.str.147, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @mt8192_mt6359_rt1015p_rt5682_controls, !451, !"mt8192_mt6359_rt1015p_rt5682_controls", i1 false, i1 false}
!451 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1084, i32 38}
!452 = !{ptr @mt8192_mt6359_rt1015p_rt5682_widgets, !453, !"mt8192_mt6359_rt1015p_rt5682_widgets", i1 false, i1 false}
!453 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1069, i32 1}
!454 = !{ptr @.str.149, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1077, i32 22}
!456 = !{ptr @mt8192_mt6359_rt1015p_rt5682_routes, !457, !"mt8192_mt6359_rt1015p_rt5682_routes", i1 false, i1 false}
!457 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1075, i32 40}
!458 = !{ptr @i2s3_rt1015p_cpus, !459, !"i2s3_rt1015p_cpus", i1 false, i1 false}
!459 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 615, i32 1}
!460 = !{ptr @.str.150, !459, !"<string literal>", i1 false, i1 false}
!461 = !{ptr @.str.151, !459, !"<string literal>", i1 false, i1 false}
!462 = !{ptr @i2s3_rt1015p_codecs, !459, !"i2s3_rt1015p_codecs", i1 false, i1 false}
!463 = !{ptr @i2s3_rt1015p_platforms, !459, !"i2s3_rt1015p_platforms", i1 false, i1 false}
!464 = !{ptr @mt8192_mt6359_dt_match, !465, !"mt8192_mt6359_dt_match", i1 false, i1 false}
!465 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1180, i32 34}
!466 = !{ptr @mt8192_mt6359_pm_ops, !467, !"mt8192_mt6359_pm_ops", i1 false, i1 false}
!467 = !{!"../sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c", i32 1193, i32 32}
!468 = !{i32 1, !"wchar_size", i32 2}
!469 = !{i32 1, !"min_enum_size", i32 4}
!470 = !{i32 8, !"branch-target-enforcement", i32 0}
!471 = !{i32 8, !"sign-return-address", i32 0}
!472 = !{i32 8, !"sign-return-address-all", i32 0}
!473 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!474 = !{i32 7, !"uwtable", i32 1}
!475 = !{i32 7, !"frame-pointer", i32 2}
!476 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!477 = !{!"auto-init"}
!478 = !{i32 0, i32 33}
