; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c"
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.sof_conn_stream = type { ptr, ptr, ptr, i32 }
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
%struct.mt8195_mt6359_rt1019_rt5682_priv = type { %struct.snd_soc_jack, %struct.snd_soc_jack, %struct.snd_soc_jack, ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt8195_afe_private = type { ptr, ptr, ptr, i32, ptr, i32, [3 x i32], %struct.spinlock, [22 x %struct.mtk_dai_memif_irq_priv], %struct.mtkaif_param, [26 x ptr] }
%struct.mtk_dai_memif_irq_priv = type { i32 }
%struct.mtkaif_param = type { i8, [3 x i32], [3 x i32], i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_mt8195_mt6359_rt1019_rt5682__307_1431_mt8195_mt6359_rt1019_rt5682_driver_init6 = internal global ptr @mt8195_mt6359_rt1019_rt5682_driver_init, section ".initcall6.init", align 4
@mt8195_mt6359_rt1019_rt5682_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8195_mt6359_rt1019_rt5682_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8195_mt6359_rt1019_rt5682_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_mt6359_rt1019_rt5682_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8195_mt6359_rt1019_rt5682_driver_exit = internal global ptr @mt8195_mt6359_rt1019_rt5682_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description308 = internal constant [92 x i8] c"mt8195_mt6359_rt1019_rt5682.description=MT8195-MT6359-RT1019-RT5682 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [70 x i8] c"mt8195_mt6359_rt1019_rt5682.author=Trevor Wu <trevor.wu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [66 x i8] c"mt8195_mt6359_rt1019_rt5682.author=YC Hung <yc.hung@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [87 x i8] c"mt8195_mt6359_rt1019_rt5682.file=sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [40 x i8] c"mt8195_mt6359_rt1019_rt5682.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias313 = internal constant [71 x i8] c"mt8195_mt6359_rt1019_rt5682.alias=mt8195_mt6359_rt1019_rt5682 soc card\00", section ".modinfo", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt8195_mt6359_rt1019_rt5682\00", [36 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195_mt6359_rt1019_rt5682\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_poweroff, ptr @snd_soc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_soc_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.30, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_set_bias_level_post, ptr null, ptr null, i32 0, ptr @mt8195_mt6359_rt1019_rt5682_dai_links, i32 30, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @mt8195_mt6359_rt1019_rt5682_controls, i32 3, ptr @mt8195_mt6359_rt1019_rt5682_widgets, i32 7, ptr @mt8195_mt6359_rt1019_rt5682_routes, i32 12, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1314, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s new card name parsing error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mt8195_mt6359_rt1019_rt5682_dev_probe\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_dev_probe._entry_ptr = internal global ptr @mt8195_mt6359_rt1019_rt5682_dev_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_5682s\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 1, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,adsp\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,dptx-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,hdmi-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,dai-link\00", [46 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.14, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Parse dai-link fail\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AFE_SOF\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DPTX_BE\00", [24 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No property 'dptx-codec'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETDM3_OUT_BE\00", [19 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.20, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No property 'hdmi-codec'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETDM1_OUT_BE\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETDM2_IN_BE\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt5682s.2-001a\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt5682.2-001a\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt5682s-aif1\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DL_SRC_BE\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UL_SRC1_BE\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UL_SRC2_BE\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8195_r1019_5682\00", [46 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.148 to i32) }], [48 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_routes = internal constant { [12 x %struct.snd_soc_dapm_route], [144 x i8] } { [12 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }], [144 x i8] zeroinitializer }, align 32
@mt8195_set_bias_level_post.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8195_set_bias_level_post\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Disable i2so1 mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@mt8195_set_bias_level_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 596, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't enable i2so1 mclk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mt8195_set_bias_level_post._entry_ptr = internal global ptr @mt8195_set_bias_level_post._entry, section ".printk_index", align 4
@mt8195_set_bias_level_post.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.34, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enable i2so1 mclk\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL2_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL2 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL2_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.75 }], [20 x i8] zeroinitializer }, align 32
@DL2_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL2_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_playback_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8195_playback_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL3_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL3 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL3_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.83 }], [20 x i8] zeroinitializer }, align 32
@DL3_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL3_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL6_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL6 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL6_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.84 }], [20 x i8] zeroinitializer }, align 32
@DL6_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL6_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL7_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL7 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL7_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.85 }], [20 x i8] zeroinitializer }, align 32
@DL7_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL7_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL8_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL8 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL8_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.86 }], [20 x i8] zeroinitializer }, align 32
@DL8_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL8_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL10_FE\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DL10 Playback\00", [18 x i8] zeroinitializer }, align 32
@DL10_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.87 }], [20 x i8] zeroinitializer }, align 32
@DL10_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL10_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_hdmitx_dptx_playback_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8195_hdmitx_dptx_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL11_FE\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DL11 Playback\00", [18 x i8] zeroinitializer }, align 32
@DL11_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.91 }], [20 x i8] zeroinitializer }, align 32
@DL11_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL11_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL1_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL1 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL1_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.92 }], [20 x i8] zeroinitializer }, align 32
@UL1_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL1_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL2_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL2 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL2_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.93 }], [20 x i8] zeroinitializer }, align 32
@UL2_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL2_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_capture_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8195_capture_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL3_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL3 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL3_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.97 }], [20 x i8] zeroinitializer }, align 32
@UL3_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL3_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL4_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL4 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL4_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.98 }], [20 x i8] zeroinitializer }, align 32
@UL4_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL4_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL5_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL5 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL5_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.99 }], [20 x i8] zeroinitializer }, align 32
@UL5_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL5_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL6_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL6 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL6_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.100 }], [20 x i8] zeroinitializer }, align 32
@UL6_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL6_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL8_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL8 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL8_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.101 }], [20 x i8] zeroinitializer }, align 32
@UL8_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL8_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL9_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL9 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL9_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.102 }], [20 x i8] zeroinitializer }, align 32
@UL9_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL9_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL10_FE\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UL10 Capture\00", [19 x i8] zeroinitializer }, align 32
@UL10_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.103 }], [20 x i8] zeroinitializer }, align 32
@UL10_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@UL10_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@DL_SRC_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.104 }], [20 x i8] zeroinitializer }, align 32
@DL_SRC_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.105, ptr null, ptr @.str.106 }], [20 x i8] zeroinitializer }, align 32
@DL_SRC_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@DPTX_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.107 }], [20 x i8] zeroinitializer }, align 32
@DPTX_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DPTX_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_dptx_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8195_dptx_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETDM1_IN_BE\00", [20 x i8] zeroinitializer }, align 32
@ETDM1_IN_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.108 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_IN_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_IN_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@ETDM2_IN_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.109 }], [20 x i8] zeroinitializer }, align 32
@ETDM2_IN_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@ETDM2_IN_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_rt5682_etdm_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8195_rt5682_etdm_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ETDM1_OUT_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.128 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_OUT_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_OUT_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETDM2_OUT_BE\00", [19 x i8] zeroinitializer }, align 32
@ETDM2_OUT_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.129 }], [20 x i8] zeroinitializer }, align 32
@ETDM2_OUT_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.130, ptr null, ptr @.str.131 }], [20 x i8] zeroinitializer }, align 32
@ETDM2_OUT_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@ETDM3_OUT_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.132 }], [20 x i8] zeroinitializer }, align 32
@ETDM3_OUT_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@ETDM3_OUT_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM1_BE\00", [24 x i8] zeroinitializer }, align 32
@PCM1_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.133 }], [20 x i8] zeroinitializer }, align 32
@PCM1_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@PCM1_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@UL_SRC1_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.134 }], [20 x i8] zeroinitializer }, align 32
@UL_SRC1_BE_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.105, ptr null, ptr @.str.106 }, %struct.snd_soc_dai_link_component { ptr @.str.135, ptr null, ptr @.str.136 }], [40 x i8] zeroinitializer }, align 32
@UL_SRC1_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@UL_SRC2_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.137 }], [20 x i8] zeroinitializer }, align 32
@UL_SRC2_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.105, ptr null, ptr @.str.138 }], [20 x i8] zeroinitializer }, align 32
@UL_SRC2_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AFE_SOF_DL2\00", [20 x i8] zeroinitializer }, align 32
@AFE_SOF_DL2_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.139 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_DL2_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_DL2_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AFE_SOF_DL3\00", [20 x i8] zeroinitializer }, align 32
@AFE_SOF_DL3_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.140 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_DL3_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_DL3_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AFE_SOF_UL4\00", [20 x i8] zeroinitializer }, align 32
@AFE_SOF_UL4_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.141 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_UL4_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_UL4_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AFE_SOF_UL5\00", [20 x i8] zeroinitializer }, align 32
@AFE_SOF_UL5_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.142 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_UL5_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.76, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@AFE_SOF_UL5_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_mt6359_rt1019_rt5682_dai_links = internal global { [30 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [872 x i8] } { [30 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.35, ptr @.str.36, ptr @DL2_FE_cpus, i32 1, ptr @DL2_FE_codecs, i32 1, ptr @DL2_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.37, ptr @.str.38, ptr @DL3_FE_cpus, i32 1, ptr @DL3_FE_codecs, i32 1, ptr @DL3_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.39, ptr @.str.40, ptr @DL6_FE_cpus, i32 1, ptr @DL6_FE_codecs, i32 1, ptr @DL6_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.41, ptr @.str.42, ptr @DL7_FE_cpus, i32 1, ptr @DL7_FE_codecs, i32 1, ptr @DL7_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.43, ptr @.str.44, ptr @DL8_FE_cpus, i32 1, ptr @DL8_FE_codecs, i32 1, ptr @DL8_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.45, ptr @.str.46, ptr @DL10_FE_cpus, i32 1, ptr @DL10_FE_codecs, i32 1, ptr @DL10_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_hdmitx_dptx_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.47, ptr @.str.48, ptr @DL11_FE_cpus, i32 1, ptr @DL11_FE_codecs, i32 1, ptr @DL11_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.49, ptr @.str.50, ptr @UL1_FE_cpus, i32 1, ptr @UL1_FE_codecs, i32 1, ptr @UL1_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.51, ptr @.str.52, ptr @UL2_FE_cpus, i32 1, ptr @UL2_FE_codecs, i32 1, ptr @UL2_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.53, ptr @.str.54, ptr @UL3_FE_cpus, i32 1, ptr @UL3_FE_codecs, i32 1, ptr @UL3_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.55, ptr @.str.56, ptr @UL4_FE_cpus, i32 1, ptr @UL4_FE_codecs, i32 1, ptr @UL4_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.57, ptr @.str.58, ptr @UL5_FE_cpus, i32 1, ptr @UL5_FE_codecs, i32 1, ptr @UL5_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.59, ptr @.str.60, ptr @UL6_FE_cpus, i32 1, ptr @UL6_FE_codecs, i32 1, ptr @UL6_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.61, ptr @.str.62, ptr @UL8_FE_cpus, i32 1, ptr @UL8_FE_codecs, i32 1, ptr @UL8_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.63, ptr @.str.64, ptr @UL9_FE_cpus, i32 1, ptr @UL9_FE_codecs, i32 1, ptr @UL9_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.65, ptr @.str.66, ptr @UL10_FE_cpus, i32 1, ptr @UL10_FE_codecs, i32 1, ptr @UL10_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.27, ptr null, ptr @DL_SRC_BE_cpus, i32 1, ptr @DL_SRC_BE_codecs, i32 1, ptr @DL_SRC_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.16, ptr null, ptr @DPTX_BE_cpus, i32 1, ptr @DPTX_BE_codecs, i32 1, ptr @DPTX_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8195_dptx_hw_params_fixup, ptr @mt8195_dptx_ops, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.67, ptr null, ptr @ETDM1_IN_BE_cpus, i32 1, ptr @ETDM1_IN_BE_codecs, i32 1, ptr @ETDM1_IN_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.22, ptr null, ptr @ETDM2_IN_BE_cpus, i32 1, ptr @ETDM2_IN_BE_codecs, i32 1, ptr @ETDM2_IN_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @mt8195_rt5682_init, ptr null, ptr @mt8195_etdm_hw_params_fixup, ptr @mt8195_rt5682_etdm_ops, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.21, ptr null, ptr @ETDM1_OUT_BE_cpus, i32 1, ptr @ETDM1_OUT_BE_codecs, i32 1, ptr @ETDM1_OUT_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8195_etdm_hw_params_fixup, ptr @mt8195_rt5682_etdm_ops, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.68, ptr null, ptr @ETDM2_OUT_BE_cpus, i32 1, ptr @ETDM2_OUT_BE_codecs, i32 1, ptr @ETDM2_OUT_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.19, ptr null, ptr @ETDM3_OUT_BE_cpus, i32 1, ptr @ETDM3_OUT_BE_codecs, i32 1, ptr @ETDM3_OUT_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.69, ptr null, ptr @PCM1_BE_cpus, i32 1, ptr @PCM1_BE_codecs, i32 1, ptr @PCM1_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.28, ptr null, ptr @UL_SRC1_BE_cpus, i32 1, ptr @UL_SRC1_BE_codecs, i32 2, ptr @UL_SRC1_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.29, ptr null, ptr @UL_SRC2_BE_cpus, i32 1, ptr @UL_SRC2_BE_codecs, i32 1, ptr @UL_SRC2_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.70, ptr null, ptr @AFE_SOF_DL2_cpus, i32 1, ptr @AFE_SOF_DL2_codecs, i32 1, ptr @AFE_SOF_DL2_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.71, ptr null, ptr @AFE_SOF_DL3_cpus, i32 1, ptr @AFE_SOF_DL3_codecs, i32 1, ptr @AFE_SOF_DL3_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.72, ptr null, ptr @AFE_SOF_UL4_cpus, i32 1, ptr @AFE_SOF_UL4_codecs, i32 1, ptr @AFE_SOF_UL4_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.73, ptr null, ptr @AFE_SOF_UL5_cpus, i32 1, ptr @AFE_SOF_UL5_codecs, i32 1, ptr @AFE_SOF_UL5_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }], [872 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.channels = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_playback_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_playback_startup.channels, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_playback_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hw_constraint_list rate failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8195_playback_startup\00", [40 x i8] zeroinitializer }, align 32
@mt8195_playback_startup._entry_ptr = internal global ptr @mt8195_playback_startup._entry, section ".printk_index", align 4
@mt8195_playback_startup._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.4, i32 509, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hw_constraint_list channel failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mt8195_playback_startup._entry_ptr.82 = internal global ptr @mt8195_playback_startup._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL6\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL7\00", [28 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL8\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL10\00", [27 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.channels = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 6, i32 8], [16 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_hdmitx_dptx_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_hdmitx_dptx_startup.channels, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.88, ptr @.str.4, i32 393, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8195_hdmitx_dptx_startup\00", [37 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup._entry_ptr = internal global ptr @mt8195_hdmitx_dptx_startup._entry, section ".printk_index", align 4
@mt8195_hdmitx_dptx_startup._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.88, ptr @.str.4, i32 401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup._entry_ptr.90 = internal global ptr @mt8195_hdmitx_dptx_startup._entry.89, section ".printk_index", align 4
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL11\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.channels = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 2], [24 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_capture_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_capture_startup.channels, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_capture_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.94, ptr @.str.4, i32 547, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt8195_capture_startup\00", [41 x i8] zeroinitializer }, align 32
@mt8195_capture_startup._entry_ptr = internal global ptr @mt8195_capture_startup._entry, section ".printk_index", align 4
@mt8195_capture_startup._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.94, ptr @.str.4, i32 555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8195_capture_startup._entry_ptr.96 = internal global ptr @mt8195_capture_startup._entry.95, section ".printk_index", align 4
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL4\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL5\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL6\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL8\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL9\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UL10\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL_SRC\00", [25 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6359-sound\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DPTX\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ETDM1_IN\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ETDM2_IN\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@mt8195_rt5682_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.4, i32 336, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Headset Jack creation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt8195_rt5682_init\00", [45 x i8] zeroinitializer }, align 32
@mt8195_rt5682_init._entry_ptr = internal global ptr @mt8195_rt5682_init._entry, section ".printk_index", align 4
@mt8195_rt5682_init._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.4, i32 347, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headset Jack set failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mt8195_rt5682_init._entry_ptr.116 = internal global ptr @mt8195_rt5682_init._entry.114, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.4, i32 102, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid bit width: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt8195_rt5682_etdm_hw_params\00", [35 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr = internal global ptr @mt8195_rt5682_etdm_hw_params._entry, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.4, i32 108, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set tdm slot\0A\00", [40 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr.121 = internal global ptr @mt8195_rt5682_etdm_hw_params._entry.119, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.4, i32 115, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set pll\0A\00", [45 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr.124 = internal global ptr @mt8195_rt5682_etdm_hw_params._entry.122, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to set sysclk\0A\00", [42 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr.127 = internal global ptr @mt8195_rt5682_etdm_hw_params._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM1_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM2_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rt1019p\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM3_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCM1\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL_SRC1\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic-codec\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmic-hifi\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL_SRC2\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif2\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_DL2\00", [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_DL3\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_UL4\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SOF_UL5\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Speakers Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Speakers\00", [23 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headphone Jack Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Mic Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOF_DMA_DL2\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOF_DMA_DL3\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOF_DMA_UL4\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SOF_DMA_UL5\00", [20 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O034\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O035\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O036\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O037\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I070\00", [27 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I071\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I020\00", [27 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I021\00", [27 x i8] zeroinitializer }, align 32
@mt8195_dailink_parse_of.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.166, ptr @.str.4, ptr @.str.167, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.166 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8195_dailink_parse_of\00", [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"number of dai-link is invalid\0A\00", [33 x i8] zeroinitializer }, align 32
@mt8195_dailink_parse_of.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.166, ptr @.str.4, ptr @.str.168, i8 1, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.168 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ASoC: Property '%s' index %d could not be read: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DP Jack\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI Jack\00", [22 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.4, i32 159, ptr @.str.173, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(), start\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt8195_mt6359_mtkaif_calibration\00", [63 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry_ptr = internal global ptr @mt8195_mt6359_mtkaif_calibration._entry, section ".printk_index", align 4
@mt8195_mt6359_mtkaif_calibration._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.172, ptr @.str.4, i32 171, ptr @.str.173, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s() Cannot find topckgen controller\0A\00", [58 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry_ptr.176 = internal global ptr @mt8195_mt6359_mtkaif_calibration._entry.174, section ".printk_index", align 4
@mt8195_mt6359_mtkaif_calibration._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.172, ptr @.str.4, i32 219, ptr @.str.173, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s(), test fail, cycle_1 %d, cycle_2 %d, cycle_3 %d, monitor 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry_ptr.179 = internal global ptr @mt8195_mt6359_mtkaif_calibration._entry.177, section ".printk_index", align 4
@mt8195_mt6359_mtkaif_calibration._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.172, ptr @.str.4, i32 295, ptr @.str.173, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(), end, calibration ok %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry_ptr.182 = internal global ptr @mt8195_mt6359_mtkaif_calibration._entry.180, section ".printk_index", align 4
@.str.183 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-audio-component\00", [44 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_card_late_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.4, i32 873, ptr @.str.173, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" probe without component\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mt8195_mt6359_rt1019_rt5682_card_late_probe\00", [52 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_card_late_probe._entry_ptr = internal global ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry, section ".printk_index", align 4
@g_sof_conn_streams = internal constant { [4 x %struct.sof_conn_stream], [32 x i8] } { [4 x %struct.sof_conn_stream] [%struct.sof_conn_stream { ptr @.str.68, ptr @.str.70, ptr @.str.149, i32 0 }, %struct.sof_conn_stream { ptr @.str.21, ptr @.str.71, ptr @.str.150, i32 0 }, %struct.sof_conn_stream { ptr @.str.28, ptr @.str.72, ptr @.str.151, i32 1 }, %struct.sof_conn_stream { ptr @.str.22, ptr @.str.73, ptr @.str.152, i32 1 }], [32 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_card_late_probe._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.4, i32 922, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stream dir and widget not pair\0A\00", [32 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1019_rt5682_card_late_probe._entry_ptr.188 = internal global ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry.186, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.189 = private unnamed_addr constant [35 x i8] c"mt8195_mt6359_rt1019_rt5682_driver\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1420, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1422, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant [37 x i8] c"mt8195_mt6359_rt1019_rt5682_dt_match\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1409, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [35 x i8] c"mt8195_mt6359_rt1019_rt5682_pm_ops\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1415, i32 32 }
@___asan_gen_.201 = private unnamed_addr constant [37 x i8] c"mt8195_mt6359_rt1019_rt5682_soc_card\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1237, i32 28 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1311, i32 41 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1313, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1318, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1326, i32 7 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1328, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1332, i32 50 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1336, i32 48 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1338, i32 10 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1340, i32 47 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1344, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1354, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1360, i32 30 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1362, i32 5 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1366, i32 34 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1369, i32 37 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1371, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1378, i32 37 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1379, i32 30 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1381, i32 15 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1381, i32 35 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1383, i32 15 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1383, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1384, i32 37 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1385, i32 30 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1386, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1238, i32 10 }
@___asan_gen_.297 = private unnamed_addr constant [37 x i8] c"mt8195_mt6359_rt1019_rt5682_controls\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 83, i32 38 }
@___asan_gen_.300 = private unnamed_addr constant [35 x i8] c"mt8195_mt6359_rt1019_rt5682_routes\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 64, i32 40 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 591, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 596, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 599, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 935, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 936, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant [12 x i8] c"DL2_FE_cpus\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [14 x i8] c"DL2_FE_codecs\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"DL2_FE_platforms\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"mt8195_playback_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 516, i32 33 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 947, i32 11 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 948, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant [12 x i8] c"DL3_FE_cpus\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [14 x i8] c"DL3_FE_codecs\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"DL3_FE_platforms\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 959, i32 11 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 960, i32 18 }
@___asan_gen_.357 = private unnamed_addr constant [12 x i8] c"DL6_FE_cpus\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [14 x i8] c"DL6_FE_codecs\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"DL6_FE_platforms\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 971, i32 11 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 972, i32 18 }
@___asan_gen_.372 = private unnamed_addr constant [12 x i8] c"DL7_FE_cpus\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [14 x i8] c"DL7_FE_codecs\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [17 x i8] c"DL7_FE_platforms\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 982, i32 11 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 983, i32 18 }
@___asan_gen_.387 = private unnamed_addr constant [12 x i8] c"DL8_FE_cpus\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [14 x i8] c"DL8_FE_codecs\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"DL8_FE_platforms\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 994, i32 11 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 995, i32 18 }
@___asan_gen_.402 = private unnamed_addr constant [13 x i8] c"DL10_FE_cpus\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [15 x i8] c"DL10_FE_codecs\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [18 x i8] c"DL10_FE_platforms\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [32 x i8] c"mt8195_hdmitx_dptx_playback_ops\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 408, i32 33 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1006, i32 11 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1007, i32 18 }
@___asan_gen_.420 = private unnamed_addr constant [13 x i8] c"DL11_FE_cpus\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [15 x i8] c"DL11_FE_codecs\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [18 x i8] c"DL11_FE_platforms\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1018, i32 11 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1019, i32 18 }
@___asan_gen_.435 = private unnamed_addr constant [12 x i8] c"UL1_FE_cpus\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [14 x i8] c"UL1_FE_codecs\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [17 x i8] c"UL1_FE_platforms\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1029, i32 11 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1030, i32 18 }
@___asan_gen_.450 = private unnamed_addr constant [12 x i8] c"UL2_FE_cpus\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [14 x i8] c"UL2_FE_codecs\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [17 x i8] c"UL2_FE_platforms\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [19 x i8] c"mt8195_capture_ops\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 562, i32 33 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1041, i32 11 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1042, i32 18 }
@___asan_gen_.468 = private unnamed_addr constant [12 x i8] c"UL3_FE_cpus\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [14 x i8] c"UL3_FE_codecs\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [17 x i8] c"UL3_FE_platforms\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1053, i32 11 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1054, i32 18 }
@___asan_gen_.483 = private unnamed_addr constant [12 x i8] c"UL4_FE_cpus\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [14 x i8] c"UL4_FE_codecs\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [17 x i8] c"UL4_FE_platforms\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1065, i32 11 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1066, i32 18 }
@___asan_gen_.498 = private unnamed_addr constant [12 x i8] c"UL5_FE_cpus\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [14 x i8] c"UL5_FE_codecs\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [17 x i8] c"UL5_FE_platforms\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1077, i32 11 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1078, i32 18 }
@___asan_gen_.513 = private unnamed_addr constant [12 x i8] c"UL6_FE_cpus\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [14 x i8] c"UL6_FE_codecs\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"UL6_FE_platforms\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1088, i32 11 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1089, i32 18 }
@___asan_gen_.528 = private unnamed_addr constant [12 x i8] c"UL8_FE_cpus\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [14 x i8] c"UL8_FE_codecs\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"UL8_FE_platforms\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1100, i32 11 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1101, i32 18 }
@___asan_gen_.543 = private unnamed_addr constant [12 x i8] c"UL9_FE_cpus\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [14 x i8] c"UL9_FE_codecs\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [17 x i8] c"UL9_FE_platforms\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1112, i32 11 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1113, i32 18 }
@___asan_gen_.558 = private unnamed_addr constant [13 x i8] c"UL10_FE_cpus\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [15 x i8] c"UL10_FE_codecs\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [18 x i8] c"UL10_FE_platforms\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [15 x i8] c"DL_SRC_BE_cpus\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [17 x i8] c"DL_SRC_BE_codecs\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [20 x i8] c"DL_SRC_BE_platforms\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [13 x i8] c"DPTX_BE_cpus\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [15 x i8] c"DPTX_BE_codecs\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [18 x i8] c"DPTX_BE_platforms\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [16 x i8] c"mt8195_dptx_ops\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 425, i32 33 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1139, i32 11 }
@___asan_gen_.591 = private unnamed_addr constant [17 x i8] c"ETDM1_IN_BE_cpus\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [19 x i8] c"ETDM1_IN_BE_codecs\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [22 x i8] c"ETDM1_IN_BE_platforms\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [17 x i8] c"ETDM2_IN_BE_cpus\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [19 x i8] c"ETDM2_IN_BE_codecs\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [22 x i8] c"ETDM2_IN_BE_platforms\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [23 x i8] c"mt8195_rt5682_etdm_ops\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 130, i32 33 }
@___asan_gen_.612 = private unnamed_addr constant [18 x i8] c"ETDM1_OUT_BE_cpus\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [20 x i8] c"ETDM1_OUT_BE_codecs\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [23 x i8] c"ETDM1_OUT_BE_platforms\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1171, i32 11 }
@___asan_gen_.624 = private unnamed_addr constant [18 x i8] c"ETDM2_OUT_BE_cpus\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [20 x i8] c"ETDM2_OUT_BE_codecs\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [23 x i8] c"ETDM2_OUT_BE_platforms\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [18 x i8] c"ETDM3_OUT_BE_cpus\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [20 x i8] c"ETDM3_OUT_BE_codecs\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [23 x i8] c"ETDM3_OUT_BE_platforms\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1189, i32 11 }
@___asan_gen_.645 = private unnamed_addr constant [13 x i8] c"PCM1_BE_cpus\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [15 x i8] c"PCM1_BE_codecs\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [18 x i8] c"PCM1_BE_platforms\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [16 x i8] c"UL_SRC1_BE_cpus\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [18 x i8] c"UL_SRC1_BE_codecs\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [21 x i8] c"UL_SRC1_BE_platforms\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [16 x i8] c"UL_SRC2_BE_cpus\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [18 x i8] c"UL_SRC2_BE_codecs\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [21 x i8] c"UL_SRC2_BE_platforms\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1212, i32 11 }
@___asan_gen_.675 = private unnamed_addr constant [17 x i8] c"AFE_SOF_DL2_cpus\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [19 x i8] c"AFE_SOF_DL2_codecs\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [22 x i8] c"AFE_SOF_DL2_platforms\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1218, i32 11 }
@___asan_gen_.687 = private unnamed_addr constant [17 x i8] c"AFE_SOF_DL3_cpus\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [19 x i8] c"AFE_SOF_DL3_codecs\00", align 1
@___asan_gen_.693 = private unnamed_addr constant [22 x i8] c"AFE_SOF_DL3_platforms\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1224, i32 11 }
@___asan_gen_.699 = private unnamed_addr constant [17 x i8] c"AFE_SOF_UL4_cpus\00", align 1
@___asan_gen_.702 = private unnamed_addr constant [19 x i8] c"AFE_SOF_UL4_codecs\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [22 x i8] c"AFE_SOF_UL4_platforms\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1230, i32 11 }
@___asan_gen_.711 = private unnamed_addr constant [17 x i8] c"AFE_SOF_UL5_cpus\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [19 x i8] c"AFE_SOF_UL5_codecs\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [22 x i8] c"AFE_SOF_UL5_platforms\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [38 x i8] c"mt8195_mt6359_rt1019_rt5682_dai_links\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 932, i32 32 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 647, i32 1 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 476, i32 28 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 479, i32 28 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 482, i32 49 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 487, i32 49 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 501, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 509, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 652, i32 1 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 657, i32 1 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 662, i32 1 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 667, i32 1 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 672, i32 1 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 368, i32 28 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 371, i32 28 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 374, i32 49 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 379, i32 49 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 393, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 401, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 677, i32 1 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 682, i32 1 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 687, i32 1 }
@___asan_gen_.804 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 522, i32 28 }
@___asan_gen_.807 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 525, i32 28 }
@___asan_gen_.810 = private unnamed_addr constant [18 x i8] c"constraints_rates\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 528, i32 49 }
@___asan_gen_.813 = private unnamed_addr constant [21 x i8] c"constraints_channels\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 533, i32 49 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 547, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 555, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 692, i32 1 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 697, i32 1 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 702, i32 1 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 707, i32 1 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 712, i32 1 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 717, i32 1 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 722, i32 1 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 728, i32 1 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 734, i32 1 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 739, i32 1 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 744, i32 1 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 323, i32 30 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 330, i32 41 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 336, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 347, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 102, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 108, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 115, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 122, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 749, i32 1 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 754, i32 1 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 760, i32 1 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 765, i32 1 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 770, i32 1 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 778, i32 1 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 784, i32 1 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 789, i32 1 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 794, i32 1 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 799, i32 1 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 84, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 85, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 86, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 58, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 59, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 60, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 61, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant [36 x i8] c"mt8195_mt6359_rt1019_rt5682_widgets\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 54, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 66, i32 22 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 68, i32 28 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 69, i32 28 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 70, i32 4 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 72, i32 22 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 73, i32 22 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 74, i32 22 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 75, i32 22 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 77, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 78, i32 3 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 79, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 80, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1262, i32 3 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 1276, i32 4 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 437, i32 41 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 453, i32 41 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 159, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 170, i32 3 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 217, i32 5 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 294, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 865, i32 54 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 873, i32 3 }
@___asan_gen_.1083 = private unnamed_addr constant [19 x i8] c"g_sof_conn_streams\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 804, i32 37 }
@___asan_gen_.1086 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1090 = private constant [59 x i8] c"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1090, i32 922, i32 6 }
@llvm.compiler.used = appending global [330 x ptr] [ptr @__UNIQUE_ID_alias313, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_mt8195_mt6359_rt1019_rt5682_driver_exit, ptr @__initcall__kmod_mt8195_mt6359_rt1019_rt5682__307_1431_mt8195_mt6359_rt1019_rt5682_driver_init6, ptr @mt8195_capture_startup._entry, ptr @mt8195_capture_startup._entry.95, ptr @mt8195_capture_startup._entry_ptr, ptr @mt8195_capture_startup._entry_ptr.96, ptr @mt8195_hdmitx_dptx_startup._entry, ptr @mt8195_hdmitx_dptx_startup._entry.89, ptr @mt8195_hdmitx_dptx_startup._entry_ptr, ptr @mt8195_hdmitx_dptx_startup._entry_ptr.90, ptr @mt8195_mt6359_mtkaif_calibration._entry, ptr @mt8195_mt6359_mtkaif_calibration._entry.174, ptr @mt8195_mt6359_mtkaif_calibration._entry.177, ptr @mt8195_mt6359_mtkaif_calibration._entry.180, ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr, ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.176, ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.179, ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.182, ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry, ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry.186, ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry_ptr, ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry_ptr.188, ptr @mt8195_mt6359_rt1019_rt5682_dev_probe._entry, ptr @mt8195_mt6359_rt1019_rt5682_dev_probe._entry_ptr, ptr @mt8195_mt6359_rt1019_rt5682_driver_exit, ptr @mt8195_playback_startup._entry, ptr @mt8195_playback_startup._entry.80, ptr @mt8195_playback_startup._entry_ptr, ptr @mt8195_playback_startup._entry_ptr.82, ptr @mt8195_rt5682_etdm_hw_params._entry, ptr @mt8195_rt5682_etdm_hw_params._entry.119, ptr @mt8195_rt5682_etdm_hw_params._entry.122, ptr @mt8195_rt5682_etdm_hw_params._entry.125, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.121, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.124, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.127, ptr @mt8195_rt5682_init._entry, ptr @mt8195_rt5682_init._entry.114, ptr @mt8195_rt5682_init._entry_ptr, ptr @mt8195_rt5682_init._entry_ptr.116, ptr @mt8195_set_bias_level_post._entry, ptr @mt8195_set_bias_level_post._entry_ptr, ptr @mt8195_mt6359_rt1019_rt5682_driver, ptr @.str, ptr @mt8195_mt6359_rt1019_rt5682_dt_match, ptr @mt8195_mt6359_rt1019_rt5682_pm_ops, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @mt8195_mt6359_rt1019_rt5682_controls, ptr @mt8195_mt6359_rt1019_rt5682_routes, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @DL2_FE_cpus, ptr @DL2_FE_codecs, ptr @DL2_FE_platforms, ptr @mt8195_playback_ops, ptr @.str.37, ptr @.str.38, ptr @DL3_FE_cpus, ptr @DL3_FE_codecs, ptr @DL3_FE_platforms, ptr @.str.39, ptr @.str.40, ptr @DL6_FE_cpus, ptr @DL6_FE_codecs, ptr @DL6_FE_platforms, ptr @.str.41, ptr @.str.42, ptr @DL7_FE_cpus, ptr @DL7_FE_codecs, ptr @DL7_FE_platforms, ptr @.str.43, ptr @.str.44, ptr @DL8_FE_cpus, ptr @DL8_FE_codecs, ptr @DL8_FE_platforms, ptr @.str.45, ptr @.str.46, ptr @DL10_FE_cpus, ptr @DL10_FE_codecs, ptr @DL10_FE_platforms, ptr @mt8195_hdmitx_dptx_playback_ops, ptr @.str.47, ptr @.str.48, ptr @DL11_FE_cpus, ptr @DL11_FE_codecs, ptr @DL11_FE_platforms, ptr @.str.49, ptr @.str.50, ptr @UL1_FE_cpus, ptr @UL1_FE_codecs, ptr @UL1_FE_platforms, ptr @.str.51, ptr @.str.52, ptr @UL2_FE_cpus, ptr @UL2_FE_codecs, ptr @UL2_FE_platforms, ptr @mt8195_capture_ops, ptr @.str.53, ptr @.str.54, ptr @UL3_FE_cpus, ptr @UL3_FE_codecs, ptr @UL3_FE_platforms, ptr @.str.55, ptr @.str.56, ptr @UL4_FE_cpus, ptr @UL4_FE_codecs, ptr @UL4_FE_platforms, ptr @.str.57, ptr @.str.58, ptr @UL5_FE_cpus, ptr @UL5_FE_codecs, ptr @UL5_FE_platforms, ptr @.str.59, ptr @.str.60, ptr @UL6_FE_cpus, ptr @UL6_FE_codecs, ptr @UL6_FE_platforms, ptr @.str.61, ptr @.str.62, ptr @UL8_FE_cpus, ptr @UL8_FE_codecs, ptr @UL8_FE_platforms, ptr @.str.63, ptr @.str.64, ptr @UL9_FE_cpus, ptr @UL9_FE_codecs, ptr @UL9_FE_platforms, ptr @.str.65, ptr @.str.66, ptr @UL10_FE_cpus, ptr @UL10_FE_codecs, ptr @UL10_FE_platforms, ptr @DL_SRC_BE_cpus, ptr @DL_SRC_BE_codecs, ptr @DL_SRC_BE_platforms, ptr @DPTX_BE_cpus, ptr @DPTX_BE_codecs, ptr @DPTX_BE_platforms, ptr @mt8195_dptx_ops, ptr @.str.67, ptr @ETDM1_IN_BE_cpus, ptr @ETDM1_IN_BE_codecs, ptr @ETDM1_IN_BE_platforms, ptr @ETDM2_IN_BE_cpus, ptr @ETDM2_IN_BE_codecs, ptr @ETDM2_IN_BE_platforms, ptr @mt8195_rt5682_etdm_ops, ptr @ETDM1_OUT_BE_cpus, ptr @ETDM1_OUT_BE_codecs, ptr @ETDM1_OUT_BE_platforms, ptr @.str.68, ptr @ETDM2_OUT_BE_cpus, ptr @ETDM2_OUT_BE_codecs, ptr @ETDM2_OUT_BE_platforms, ptr @ETDM3_OUT_BE_cpus, ptr @ETDM3_OUT_BE_codecs, ptr @ETDM3_OUT_BE_platforms, ptr @.str.69, ptr @PCM1_BE_cpus, ptr @PCM1_BE_codecs, ptr @PCM1_BE_platforms, ptr @UL_SRC1_BE_cpus, ptr @UL_SRC1_BE_codecs, ptr @UL_SRC1_BE_platforms, ptr @UL_SRC2_BE_cpus, ptr @UL_SRC2_BE_codecs, ptr @UL_SRC2_BE_platforms, ptr @.str.70, ptr @AFE_SOF_DL2_cpus, ptr @AFE_SOF_DL2_codecs, ptr @AFE_SOF_DL2_platforms, ptr @.str.71, ptr @AFE_SOF_DL3_cpus, ptr @AFE_SOF_DL3_codecs, ptr @AFE_SOF_DL3_platforms, ptr @.str.72, ptr @AFE_SOF_UL4_cpus, ptr @AFE_SOF_UL4_codecs, ptr @AFE_SOF_UL4_platforms, ptr @.str.73, ptr @AFE_SOF_UL5_cpus, ptr @AFE_SOF_UL5_codecs, ptr @AFE_SOF_UL5_platforms, ptr @mt8195_mt6359_rt1019_rt5682_dai_links, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @mt8195_playback_startup.rates, ptr @mt8195_playback_startup.channels, ptr @mt8195_playback_startup.constraints_rates, ptr @mt8195_playback_startup.constraints_channels, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @mt8195_hdmitx_dptx_startup.rates, ptr @mt8195_hdmitx_dptx_startup.channels, ptr @mt8195_hdmitx_dptx_startup.constraints_rates, ptr @mt8195_hdmitx_dptx_startup.constraints_channels, ptr @.str.88, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @mt8195_capture_startup.rates, ptr @mt8195_capture_startup.channels, ptr @mt8195_capture_startup.constraints_rates, ptr @mt8195_capture_startup.constraints_channels, ptr @.str.94, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @mt8195_mt6359_rt1019_rt5682_widgets, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @g_sof_conn_streams, ptr @.str.187], section "llvm.metadata"
@0 = internal global [301 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_soc_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_routes to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_set_bias_level_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL2_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL2_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL2_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL3_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL3_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL3_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL6_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL6_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL6_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL7_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL7_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL7_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL8_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL8_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL8_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL10_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL10_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL10_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_playback_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL11_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL11_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL11_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL1_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL1_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL1_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL2_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL2_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL2_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL3_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL3_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL3_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL4_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL4_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL4_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL5_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL5_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL5_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL6_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL6_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL6_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL8_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL8_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL8_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL9_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL9_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL9_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL10_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL10_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL10_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL_SRC_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL_SRC_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL_SRC_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DPTX_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DPTX_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DPTX_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dptx_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_IN_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_IN_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_IN_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_IN_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_IN_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_IN_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_OUT_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_OUT_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_OUT_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_OUT_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_OUT_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_OUT_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM3_OUT_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM3_OUT_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM3_OUT_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCM1_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCM1_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCM1_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC1_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC1_BE_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC1_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC2_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC2_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC2_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_DL2_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_DL2_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_DL2_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_DL3_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_DL3_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_DL3_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_UL4_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_UL4_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_UL4_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_UL5_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_UL5_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AFE_SOF_UL5_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_dai_links to i32), i32 3480, i32 4352, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.channels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.channels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_init._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_mtkaif_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_mtkaif_calibration._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_mtkaif_calibration._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_mtkaif_calibration._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_sof_conn_streams to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_mt6359_rt1019_rt5682_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8195_mt6359_rt1019_rt5682_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_mt6359_rt1019_rt5682_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i286 = alloca %struct.of_phandle_args, align 4
  %args.i280 = alloca %struct.of_phandle_args, align 4
  %args.i274 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 5), align 4
  %call = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_soc_card, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, align 4
  %call3 = tail call ptr @strstr(ptr noundef %0, ptr noundef nonnull @.str.7)
  %tobool4.not = icmp eq ptr %call3, null
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 664, i32 noundef 3520) #8
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i272 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i272)
  %tobool.not.i = icmp eq i32 %call.i272, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %do.body16

of_parse_phandle.exit:                            ; preds = %if.end11
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %of_parse_phandle.exit.do.body16_crit_edge, label %if.end26

of_parse_phandle.exit.do.body16_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

do.body16:                                        ; preds = %of_parse_phandle.exit.do.body16_crit_edge, %of_parse_phandle.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_rt1019_rt5682_dev_probe, %if.then21)) #8
          to label %cleanup [label %if.then21], !srcloc !521

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end26:                                         ; preds = %of_parse_phandle.exit
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i274) #8
  %8 = call ptr @memset(ptr %args.i274, i32 255, i32 72)
  %call.i275 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i274) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool.not.i276 = icmp eq i32 %call.i275, 0
  br i1 %tobool.not.i276, label %if.end.i277, label %if.end26.of_parse_phandle.exit279_crit_edge

if.end26.of_parse_phandle.exit279_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit279

if.end.i277:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %args.i274 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i274, align 4
  br label %of_parse_phandle.exit279

of_parse_phandle.exit279:                         ; preds = %if.end.i277, %if.end26.of_parse_phandle.exit279_crit_edge
  %retval.0.i278 = phi ptr [ %10, %if.end.i277 ], [ null, %if.end26.of_parse_phandle.exit279_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i274) #8
  %tobool30.not = icmp eq ptr %retval.0.i278, null
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i280) #8
  %13 = call ptr @memset(ptr %args.i280, i32 255, i32 72)
  %call.i281 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i280) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281)
  %tobool.not.i282 = icmp eq i32 %call.i281, 0
  br i1 %tobool.not.i282, label %if.end.i283, label %of_parse_phandle.exit279.of_parse_phandle.exit285_crit_edge

of_parse_phandle.exit279.of_parse_phandle.exit285_crit_edge: ; preds = %of_parse_phandle.exit279
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit285

if.end.i283:                                      ; preds = %of_parse_phandle.exit279
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %args.i280 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i280, align 4
  br label %of_parse_phandle.exit285

of_parse_phandle.exit285:                         ; preds = %if.end.i283, %of_parse_phandle.exit279.of_parse_phandle.exit285_crit_edge
  %retval.0.i284 = phi ptr [ %15, %if.end.i283 ], [ null, %of_parse_phandle.exit279.of_parse_phandle.exit285_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i280) #8
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i286) #8
  %18 = call ptr @memset(ptr %args.i286, i32 255, i32 72)
  %call.i287 = call i32 @__of_parse_phandle_with_args(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i286) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i287)
  %tobool.not.i288 = icmp eq i32 %call.i287, 0
  br i1 %tobool.not.i288, label %if.end.i289, label %of_parse_phandle.exit285.of_parse_phandle.exit291_crit_edge

of_parse_phandle.exit285.of_parse_phandle.exit291_crit_edge: ; preds = %of_parse_phandle.exit285
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit291

if.end.i289:                                      ; preds = %of_parse_phandle.exit285
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %args.i286 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %args.i286, align 4
  br label %of_parse_phandle.exit291

of_parse_phandle.exit291:                         ; preds = %if.end.i289, %of_parse_phandle.exit285.of_parse_phandle.exit291_crit_edge
  %retval.0.i290 = phi ptr [ %20, %if.end.i289 ], [ null, %of_parse_phandle.exit285.of_parse_phandle.exit291_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i286) #8
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call.i292 = call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i292, null
  br i1 %tobool.i.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %of_parse_phandle.exit291
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call45 = call fastcc i32 @mt8195_dailink_parse_of(ptr noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then42.if.end69_crit_edge, label %do.body48

if.then42.if.end69_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

do.body48:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_rt1019_rt5682_dev_probe, %if.then60)) #8
          to label %cleanup [label %if.then60], !srcloc !521

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.else:                                          ; preds = %of_parse_phandle.exit291
  br i1 %tobool30.not, label %if.end69.thread, label %if.else.if.end69_crit_edge

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end69.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  store i32 26, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 25), align 4
  br label %land.rhs.lr.ph

if.end69:                                         ; preds = %if.else.if.end69_crit_edge, %if.then42.if.end69_crit_edge
  %.pr = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp299 = icmp sgt i32 %.pr, 0
  br i1 %cmp299, label %if.end69.land.rhs.lr.ph_crit_edge, label %if.end69.for.end_crit_edge

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end69.land.rhs.lr.ph_crit_edge:                ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end69.land.rhs.lr.ph_crit_edge, %if.end69.thread
  %cond = select i1 %tobool4.not, ptr @.str.24, ptr @.str.23
  %cond162 = select i1 %tobool4.not, ptr @.str.26, ptr @.str.25
  %tobool122.not = icmp eq ptr %retval.0.i290, null
  %tobool92.not = icmp eq ptr %retval.0.i284, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0303 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %init6359.0300 = phi i32 [ 0, %land.rhs.lr.ph ], [ %init6359.1, %for.inc.land.rhs_crit_edge ]
  %25 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 24), align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303
  %tobool72.not = icmp eq ptr %arrayidx, null
  br i1 %tobool72.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303, i32 6
  %26 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platforms, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool74.not = icmp eq ptr %29, null
  br i1 %tobool74.not, label %if.then75, label %for.body.if.end87_crit_edge

for.body.if.end87_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then75:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call77 = call i32 @strncmp(ptr noundef %31, ptr noundef nonnull dereferenceable(8) @.str.15, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp ne i32 %call77, 0
  %brmerge = select i1 %tobool78.not, i1 true, i1 %tobool30.not
  %of_node85 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 1
  %.retval.0.i278 = select i1 %brmerge, ptr %5, ptr %retval.0.i278
  %32 = ptrtoint ptr %of_node85 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.retval.0.i278, ptr %of_node85, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then75, %for.body.if.end87_crit_edge
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call89 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(8) @.str.16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then91, label %if.else117

if.then91:                                        ; preds = %if.end87
  br i1 %tobool92.not, label %do.body94, label %if.else111

do.body94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_rt1019_rt5682_dev_probe, %if.then106)) #8
          to label %for.inc [label %if.then106], !srcloc !521

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %for.inc

if.else111:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303, i32 4
  %35 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %codecs, align 4
  %of_node112 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %of_node112 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i284, ptr %of_node112, align 4
  %38 = load ptr, ptr %codecs, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %38, align 4
  %40 = load ptr, ptr %codecs, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.18, ptr %dai_name, align 4
  %init = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303, i32 13
  %42 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mt8195_dptx_codec_init, ptr %init, align 4
  br label %for.inc

if.else117:                                       ; preds = %if.end87
  %call119 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(13) @.str.19) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then121, label %if.else150

if.then121:                                       ; preds = %if.else117
  br i1 %tobool122.not, label %do.body124, label %if.else141

do.body124:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_rt1019_rt5682_dev_probe, %if.then136)) #8
          to label %for.inc [label %if.then136], !srcloc !521

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %for.inc

if.else141:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  %codecs142 = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303, i32 4
  %43 = ptrtoint ptr %codecs142 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %codecs142, align 4
  %of_node143 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %of_node143 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i290, ptr %of_node143, align 4
  %46 = load ptr, ptr %codecs142, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %46, align 4
  %48 = load ptr, ptr %codecs142, align 4
  %dai_name147 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %dai_name147 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.18, ptr %dai_name147, align 4
  %init148 = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303, i32 13
  %50 = ptrtoint ptr %init148 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mt8195_hdmi_codec_init, ptr %init148, align 4
  br label %for.inc

if.else150:                                       ; preds = %if.else117
  %call152 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(13) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.else150.if.then157_crit_edge, label %lor.lhs.false

if.else150.if.then157_crit_edge:                  ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then157

lor.lhs.false:                                    ; preds = %if.else150
  %call155 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(12) @.str.22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %lor.lhs.false.if.then157_crit_edge, label %if.else165

lor.lhs.false.if.then157_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then157

if.then157:                                       ; preds = %lor.lhs.false.if.then157_crit_edge, %if.else150.if.then157_crit_edge
  %codecs159 = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303, i32 4
  %51 = ptrtoint ptr %codecs159 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %codecs159, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %cond, ptr %52, align 4
  %54 = load ptr, ptr %codecs159, align 4
  %dai_name164 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dai_name164 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cond162, ptr %dai_name164, align 4
  br label %for.inc

if.else165:                                       ; preds = %lor.lhs.false
  %call167 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(10) @.str.27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168 = icmp eq i32 %call167, 0
  br i1 %cmp168, label %if.else165.if.then177_crit_edge, label %lor.lhs.false169

if.else165.if.then177_crit_edge:                  ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then177

lor.lhs.false169:                                 ; preds = %if.else165
  %call171 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(11) @.str.28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %lor.lhs.false169.if.then177_crit_edge, label %lor.lhs.false173

lor.lhs.false169.if.then177_crit_edge:            ; preds = %lor.lhs.false169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then177

lor.lhs.false173:                                 ; preds = %lor.lhs.false169
  %call175 = call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(11) @.str.29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call175)
  %cmp176 = icmp eq i32 %call175, 0
  br i1 %cmp176, label %lor.lhs.false173.if.then177_crit_edge, label %lor.lhs.false173.for.inc_crit_edge

lor.lhs.false173.for.inc_crit_edge:               ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false173.if.then177_crit_edge:            ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then177

if.then177:                                       ; preds = %lor.lhs.false173.if.then177_crit_edge, %lor.lhs.false169.if.then177_crit_edge, %if.else165.if.then177_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %init6359.0300)
  %tobool178.not = icmp eq i32 %init6359.0300, 0
  br i1 %tobool178.not, label %if.then179, label %if.then177.for.inc_crit_edge

if.then177.for.inc_crit_edge:                     ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then179:                                       ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #10
  %init180 = getelementptr %struct.snd_soc_dai_link, ptr %25, i32 %i.0303, i32 13
  %56 = ptrtoint ptr %init180 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mt8195_mt6359_init, ptr %init180, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then179, %if.then177.for.inc_crit_edge, %lor.lhs.false173.for.inc_crit_edge, %if.then157, %if.else141, %if.then136, %do.body124, %if.else111, %if.then106, %do.body94
  %init6359.1 = phi i32 [ %init6359.0300, %if.else111 ], [ %init6359.0300, %if.then106 ], [ %init6359.0300, %if.else141 ], [ %init6359.0300, %if.then136 ], [ %init6359.0300, %if.then157 ], [ 1, %if.then177.for.inc_crit_edge ], [ 1, %if.then179 ], [ %init6359.0300, %lor.lhs.false173.for.inc_crit_edge ], [ %init6359.0300, %do.body94 ], [ %init6359.0300, %do.body124 ]
  %inc = add nuw nsw i32 %i.0303, 1
  %57 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 25), align 4
  %cmp = icmp slt i32 %inc, %57
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end69.for.end_crit_edge
  br i1 %tobool30.not, label %for.end.if.end188_crit_edge, label %if.then187

for.end.if.end188_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

if.then187:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 13), align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then187, %for.end.if.end188_crit_edge
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 57), align 4
  %call190 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @mt8195_mt6359_rt1019_rt5682_soc_card) #8
  call void @of_node_put(ptr noundef nonnull %5) #8
  call void @of_node_put(ptr noundef %retval.0.i278) #8
  call void @of_node_put(ptr noundef %retval.0.i284) #8
  call void @of_node_put(ptr noundef %retval.0.i290) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %if.then60, %do.body48, %if.then21, %do.body16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call190, %if.end188 ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.then21 ], [ -22, %if.then60 ], [ -22, %do.body16 ], [ -22, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt8195_dailink_parse_of(ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %dai_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 5), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dai_name) #8
  %1 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dai_name, align 4
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call.i)
  %cmp2 = icmp ugt i32 %call.i, 30
  br i1 %cmp2, label %do.body, label %devm_kcalloc.exit

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_dailink_parse_of.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_dailink_parse_of, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !521

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_dailink_parse_of.__UNIQUE_ID_ddebug301, ptr noundef %0, ptr noundef nonnull @.str.167) #8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %2 = mul nuw nsw i32 %call.i, 116
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %2, i32 noundef 3520) #8
  store ptr %call5.i.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 24), align 4
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end12

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %devm_kcalloc.exit
  store i32 0, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1511.not = icmp eq i32 %call.i, 0
  br i1 %cmp1511.not, label %if.end12.for.end48_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  br label %for.body

if.end12.for.end48_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

for.body:                                         ; preds = %for.inc46.for.body_crit_edge, %if.end12.for.body_crit_edge
  %link.013 = phi ptr [ %link.1, %for.inc46.for.body_crit_edge ], [ %call5.i.i, %if.end12.for.body_crit_edge ]
  %i.012 = phi i32 [ %inc47, %for.inc46.for.body_crit_edge ], [ 0, %if.end12.for.body_crit_edge ]
  %call.i4 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef nonnull %dai_name, i32 noundef 1, i32 noundef %i.012) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i4)
  %tobool17.not = icmp sgt i32 %call.i4, -1
  br i1 %tobool17.not, label %for.cond36.preheader, label %do.body19

for.cond36.preheader:                             ; preds = %for.body
  %3 = ptrtoint ptr %dai_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dai_name, align 4
  br label %for.body38

do.body19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_dailink_parse_of.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_dailink_parse_of, %if.then31)) #8
          to label %cleanup [label %if.then31], !srcloc !521

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_dailink_parse_of.__UNIQUE_ID_ddebug302, ptr noundef %0, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.13, i32 noundef %i.012, i32 noundef %call.i4) #8
  br label %cleanup

for.cond36:                                       ; preds = %for.body38
  %inc45 = add nuw nsw i32 %j.010, 1
  %exitcond.not = icmp eq i32 %inc45, 30
  br i1 %exitcond.not, label %for.cond36.for.inc46_crit_edge, label %for.cond36.for.body38_crit_edge

for.cond36.for.body38_crit_edge:                  ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.cond36.for.inc46_crit_edge:                   ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc46

for.body38:                                       ; preds = %for.cond36.for.body38_crit_edge, %for.cond36.preheader
  %j.010 = phi i32 [ 0, %for.cond36.preheader ], [ %inc45, %for.cond36.for.body38_crit_edge ]
  %arrayidx = getelementptr [30 x %struct.snd_soc_dai_link], ptr @mt8195_mt6359_rt1019_rt5682_dai_links, i32 0, i32 %j.010
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call39 = call i32 @strcmp(ptr noundef %4, ptr noundef %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then41, label %for.cond36

if.then41:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call ptr @memcpy(ptr %link.013, ptr %arrayidx, i32 116)
  %incdec.ptr = getelementptr %struct.snd_soc_dai_link, ptr %link.013, i32 1
  %8 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 25), align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 25), align 4
  br label %for.inc46

for.inc46:                                        ; preds = %if.then41, %for.cond36.for.inc46_crit_edge
  %link.1 = phi ptr [ %incdec.ptr, %if.then41 ], [ %link.013, %for.cond36.for.inc46_crit_edge ]
  %inc47 = add nuw nsw i32 %i.012, 1
  %exitcond17.not = icmp eq i32 %inc47, %call.i
  br i1 %exitcond17.not, label %for.inc46.for.end48_crit_edge, label %for.inc46.for.body_crit_edge

for.inc46.for.body_crit_edge:                     ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %if.end12.for.end48_crit_edge
  %9 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1019_rt5682_soc_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call.i)
  %cmp50.not = icmp eq i32 %9, %call.i
  %. = select i1 %cmp50.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %for.end48, %if.then31, %do.body19, %devm_kcalloc.exit.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -22, %if.then31 ], [ %., %for.end48 ], [ -22, %do.body ], [ -22, %do.body19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dai_name) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dptx_codec_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
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
  %dp_jack = getelementptr inbounds %struct.mt8195_mt6359_rt1019_rt5682_priv, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.169, i32 noundef 4, ptr noundef %dp_jack, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_set_jack(ptr noundef %11, ptr noundef %dp_jack, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_hdmi_codec_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
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
  %hdmi_jack = getelementptr inbounds %struct.mt8195_mt6359_rt1019_rt5682_priv, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %hdmi_jack, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_set_jack(ptr noundef %11, ptr noundef %hdmi_jack, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_mt6359_init(ptr noundef %rtd) #2 align 64 {
entry:
  %monitor.i = alloca i32, align 4
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
  tail call void @mt6359_set_mtkaif_protocol(ptr noundef %7, i32 noundef 2) #8
  %call.i = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %rtd, ptr noundef nonnull @.str.110) #8
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cpus, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %component.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %19, i32 0, i32 25
  %20 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platform_priv.i, align 4
  %mtkaif_params.i = getelementptr inbounds %struct.mt8195_afe_private, ptr %21, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monitor.i) #8
  %22 = ptrtoint ptr %monitor.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %monitor.i, align 4, !annotation !522
  %dev.i = getelementptr inbounds %struct.mtk_base_afe, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.172) #11
  %25 = ptrtoint ptr %mtkaif_params.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %mtkaif_params.i, align 4
  %arrayidx4.i = getelementptr %struct.mt8195_afe_private, ptr %21, i32 0, i32 9, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr %struct.mt8195_afe_private, ptr %21, i32 0, i32 9, i32 2, i32 0
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx6.i, align 4
  %arrayidx4.1.i = getelementptr %struct.mt8195_afe_private, ptr %21, i32 0, i32 9, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %arrayidx4.1.i, align 4
  %arrayidx6.1.i = getelementptr %struct.mt8195_afe_private, ptr %21, i32 0, i32 9, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %arrayidx6.1.i, align 4
  %arrayidx4.2.i = getelementptr %struct.mt8195_afe_private, ptr %21, i32 0, i32 9, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %arrayidx4.2.i, align 4
  %arrayidx6.2.i = getelementptr %struct.mt8195_afe_private, ptr %21, i32 0, i32 9, i32 2, i32 2
  %31 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx6.2.i, align 4
  %topckgen.i = getelementptr inbounds %struct.mt8195_afe_private, ptr %21, i32 0, i32 2
  %32 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %topckgen.i, align 4
  %cmp.i.i = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  br i1 %cmp.i.i, label %do.end12.i, label %if.end.i

do.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.172) #11
  br label %mt8195_mt6359_mtkaif_calibration.exit

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %35, i32 noundef 4) #8
  tail call void @mt6359_mtkaif_calibration_enable(ptr noundef %15) #8
  %36 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %topckgen.i, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 812, i32 noundef 65535, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc94.i.for.body20.i_crit_edge, %if.end.i
  %mtkaif_calibration_ok.0.off038.i = phi i1 [ true, %if.end.i ], [ %mtkaif_calibration_ok.1.off0.i, %for.inc94.i.for.body20.i_crit_edge ]
  %prev_cycle_3.037.i = phi i32 [ -1, %if.end.i ], [ %prev_cycle_3.1.i, %for.inc94.i.for.body20.i_crit_edge ]
  %prev_cycle_2.036.i = phi i32 [ -1, %if.end.i ], [ %prev_cycle_2.1.i, %for.inc94.i.for.body20.i_crit_edge ]
  %prev_cycle_1.035.i = phi i32 [ -1, %if.end.i ], [ %prev_cycle_1.1.i, %for.inc94.i.for.body20.i_crit_edge ]
  %phase.031.i = phi i32 [ 0, %if.end.i ], [ %inc95.i, %for.inc94.i.for.body20.i_crit_edge ]
  %38 = phi i32 [ -1, %if.end.i ], [ %49, %for.inc94.i.for.body20.i_crit_edge ]
  %prev_cycle_1.11830.i = phi i32 [ 0, %if.end.i ], [ %prev_cycle_1.116.i, %for.inc94.i.for.body20.i_crit_edge ]
  %39 = phi i32 [ -1, %if.end.i ], [ %50, %for.inc94.i.for.body20.i_crit_edge ]
  %prev_cycle_2.12229.i = phi i32 [ 0, %if.end.i ], [ %prev_cycle_2.120.i, %for.inc94.i.for.body20.i_crit_edge ]
  %40 = phi i32 [ -1, %if.end.i ], [ %51, %for.inc94.i.for.body20.i_crit_edge ]
  %prev_cycle_3.12728.i = phi i32 [ 0, %if.end.i ], [ %prev_cycle_3.125.i, %for.inc94.i.for.body20.i_crit_edge ]
  call void @mt6359_set_mtkaif_calibration_phase(ptr noundef %15, i32 noundef %phase.031.i, i32 noundef %phase.031.i, i32 noundef %phase.031.i) #8
  %41 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %topckgen.i, align 4
  %call.i9.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 812, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %for.body20.i
  %test_done_1.0.i = phi i32 [ 0, %for.body20.i ], [ %and27.i, %while.body.i.while.cond.i_crit_edge ]
  %test_done_2.0.i = phi i32 [ 0, %for.body20.i ], [ %and29.i, %while.body.i.while.cond.i_crit_edge ]
  %test_done_3.0.i = phi i32 [ 0, %for.body20.i ], [ %and31.i, %while.body.i.while.cond.i_crit_edge ]
  %cycle_1.0.i = phi i32 [ -1, %for.body20.i ], [ %spec.select.i, %while.body.i.while.cond.i_crit_edge ]
  %cycle_2.0.i = phi i32 [ -1, %for.body20.i ], [ %cycle_2.1.i, %while.body.i.while.cond.i_crit_edge ]
  %cycle_3.0.i = phi i32 [ -1, %for.body20.i ], [ %cycle_3.1.i, %while.body.i.while.cond.i_crit_edge ]
  %counter.0.i = phi i32 [ 0, %for.body20.i ], [ %inc46.i, %while.body.i.while.cond.i_crit_edge ]
  %and.i = and i32 %test_done_2.0.i, %test_done_1.0.i
  %and23.i = and i32 %and.i, %test_done_3.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %while.body.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %43 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %topckgen.i, align 4
  %call26.i = call i32 @regmap_read(ptr noundef %44, i32 noundef 816, ptr noundef nonnull %monitor.i) #8
  %45 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %monitor.i, align 4
  %shr.i = lshr i32 %46, 28
  %and27.i = and i32 %shr.i, 1
  %shr28.i = lshr i32 %46, 29
  %and29.i = and i32 %shr28.i, 1
  %shr30.i = lshr i32 %46, 30
  %and31.i = and i32 %shr30.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp32.not.i = icmp eq i32 %and27.i, 0
  %and34.i = and i32 %46, 15
  %spec.select.i = select i1 %cmp32.not.i, i32 %cycle_1.0.i, i32 %and34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %cmp36.not.i = icmp eq i32 %and29.i, 0
  %shr38.i = lshr i32 %46, 4
  %and39.i = and i32 %shr38.i, 15
  %cycle_2.1.i = select i1 %cmp36.not.i, i32 %cycle_2.0.i, i32 %and39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %cmp41.not.i = icmp eq i32 %and31.i, 0
  %shr43.i = lshr i32 %46, 8
  %and44.i = and i32 %shr43.i, 15
  %cycle_3.1.i = select i1 %cmp41.not.i, i32 %cycle_3.0.i, i32 %and44.i
  %inc46.i = add nuw nsw i32 %counter.0.i, 1
  %exitcond.i = icmp eq i32 %inc46.i, 10001
  br i1 %exitcond.i, label %do.end51.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.end51.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.172, i32 noundef %spec.select.i, i32 noundef %cycle_2.1.i, i32 noundef %cycle_3.1.i, i32 noundef %46) #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.end51.i, %while.cond.i.while.end.i_crit_edge
  %cycle_1.2.i = phi i32 [ %spec.select.i, %do.end51.i ], [ %cycle_1.0.i, %while.cond.i.while.end.i_crit_edge ]
  %cycle_2.2.i = phi i32 [ %cycle_2.1.i, %do.end51.i ], [ %cycle_2.0.i, %while.cond.i.while.end.i_crit_edge ]
  %cycle_3.2.i = phi i32 [ %cycle_3.1.i, %do.end51.i ], [ %cycle_3.0.i, %while.cond.i.while.end.i_crit_edge ]
  %mtkaif_calibration_ok.1.off0.i = phi i1 [ false, %do.end51.i ], [ %mtkaif_calibration_ok.0.off038.i, %while.cond.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase.031.i)
  %cmp54.i = icmp eq i32 %phase.031.i, 0
  %prev_cycle_1.1.i = select i1 %cmp54.i, i32 %cycle_1.2.i, i32 %prev_cycle_1.035.i
  %prev_cycle_2.1.i = select i1 %cmp54.i, i32 %cycle_2.2.i, i32 %prev_cycle_2.036.i
  %prev_cycle_3.1.i = select i1 %cmp54.i, i32 %cycle_3.2.i, i32 %prev_cycle_3.037.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_1.2.i, i32 %prev_cycle_1.1.i)
  %cmp57.not.i = icmp ne i32 %cycle_1.2.i, %prev_cycle_1.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp59.i = icmp slt i32 %38, 0
  %or.cond.i = select i1 %cmp57.not.i, i1 %cmp59.i, i1 false
  %sub.i = add nsw i32 %phase.031.i, -1
  %prev_cycle_1.116.i = select i1 %or.cond.i, i32 %prev_cycle_1.1.i, i32 %prev_cycle_1.11830.i
  %49 = select i1 %or.cond.i, i32 %sub.i, i32 %38
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_2.2.i, i32 %prev_cycle_2.1.i)
  %cmp64.not.i = icmp ne i32 %cycle_2.2.i, %prev_cycle_2.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp67.i = icmp slt i32 %39, 0
  %or.cond40.i = select i1 %cmp64.not.i, i1 %cmp67.i, i1 false
  %prev_cycle_2.120.i = select i1 %or.cond40.i, i32 %prev_cycle_2.1.i, i32 %prev_cycle_2.12229.i
  %50 = select i1 %or.cond40.i, i32 %sub.i, i32 %39
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_3.2.i, i32 %prev_cycle_3.1.i)
  %cmp73.not.i = icmp ne i32 %cycle_3.2.i, %prev_cycle_3.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp76.i = icmp slt i32 %40, 0
  %or.cond41.i = select i1 %cmp73.not.i, i1 %cmp76.i, i1 false
  %prev_cycle_3.125.i = select i1 %or.cond41.i, i32 %prev_cycle_3.1.i, i32 %prev_cycle_3.12728.i
  %51 = select i1 %or.cond41.i, i32 %sub.i, i32 %40
  %52 = ptrtoint ptr %topckgen.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %topckgen.i, align 4
  %call.i10.i = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 812, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp85.i = icmp sgt i32 %49, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp88.i = icmp sgt i32 %50, -1
  %or.cond42.i = select i1 %cmp85.i, i1 %cmp88.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp91.i = icmp sgt i32 %51, -1
  %or.cond43.i = select i1 %or.cond42.i, i1 %cmp91.i, i1 false
  br i1 %or.cond43.i, label %while.end.i.for.end96.i_crit_edge, label %for.inc94.i

while.end.i.for.end96.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i

for.inc94.i:                                      ; preds = %while.end.i
  %inc95.i = add nuw nsw i32 %phase.031.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %phase.031.i)
  %cmp19.i = icmp ugt i32 %phase.031.i, 41
  %mtkaif_calibration_ok.0.off0.not.i = xor i1 %mtkaif_calibration_ok.1.off0.i, true
  %brmerge.i = select i1 %cmp19.i, i1 true, i1 %mtkaif_calibration_ok.0.off0.not.i
  br i1 %brmerge.i, label %for.inc94.i.for.end96.i_crit_edge, label %for.inc94.i.for.body20.i_crit_edge

for.inc94.i.for.body20.i_crit_edge:               ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20.i

for.inc94.i.for.end96.i_crit_edge:                ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i

for.end96.i:                                      ; preds = %for.inc94.i.for.end96.i_crit_edge, %while.end.i.for.end96.i_crit_edge
  %cmp85.i.lcssa = phi i1 [ %cmp85.i, %for.inc94.i.for.end96.i_crit_edge ], [ true, %while.end.i.for.end96.i_crit_edge ]
  %cmp88.i.lcssa = phi i1 [ %cmp88.i, %for.inc94.i.for.end96.i_crit_edge ], [ true, %while.end.i.for.end96.i_crit_edge ]
  %cmp91.i.lcssa = phi i1 [ %cmp91.i, %for.inc94.i.for.end96.i_crit_edge ], [ true, %while.end.i.for.end96.i_crit_edge ]
  %54 = call i32 @llvm.smax.i32(i32 %49, i32 0) #8
  %55 = call i32 @llvm.smax.i32(i32 %50, i32 0) #8
  %56 = call i32 @llvm.smax.i32(i32 %51, i32 0) #8
  %57 = select i1 %cmp91.i.lcssa, i1 %cmp88.i.lcssa, i1 false
  %58 = select i1 %57, i1 %cmp85.i.lcssa, i1 false
  %mtkaif_calibration_ok.5.off0.i = select i1 %58, i1 %mtkaif_calibration_ok.1.off0.i, i1 false
  call void @mt6359_set_mtkaif_calibration_phase(ptr noundef %15, i32 noundef %54, i32 noundef %55, i32 noundef %56) #8
  call void @mt6359_mtkaif_calibration_disable(ptr noundef %15) #8
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %call.i11.i = call i32 @__pm_runtime_idle(ptr noundef %60, i32 noundef 5) #8
  %frombool.i = zext i1 %mtkaif_calibration_ok.5.off0.i to i8
  %61 = ptrtoint ptr %mtkaif_params.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool.i, ptr %mtkaif_params.i, align 4
  %62 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %54, ptr %arrayidx4.i, align 4
  %63 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %55, ptr %arrayidx4.1.i, align 4
  %64 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %56, ptr %arrayidx4.2.i, align 4
  %65 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %prev_cycle_1.116.i, ptr %arrayidx6.i, align 4
  %66 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %prev_cycle_2.120.i, ptr %arrayidx6.1.i, align 4
  %67 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %prev_cycle_3.125.i, ptr %arrayidx6.2.i, align 4
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  %70 = zext i1 %mtkaif_calibration_ok.5.off0.i to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.172, i32 noundef %70) #11
  br label %mt8195_mt6359_mtkaif_calibration.exit

mt8195_mt6359_mtkaif_calibration.exit:            ; preds = %for.end96.i, %do.end12.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monitor.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_mt6359_rt1019_rt5682_card_late_probe(ptr noundef %card) #2 align 64 {
entry:
  %route = alloca %struct.snd_soc_dapm_route, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rtd_list = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 26
  %0 = ptrtoint ptr %rtd_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn206 = load ptr, ptr %rtd_list, align 4
  %cmp.not207 = icmp eq ptr %.pn206, %rtd_list
  br i1 %cmp.not207, label %entry.do.end_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond2.preheader:                              ; preds = %for.inc14.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %.pn209 = phi ptr [ %.pn, %for.inc14.for.cond2.preheader_crit_edge ], [ %.pn206, %entry.for.cond2.preheader_crit_edge ]
  %sof_comp.0208 = phi ptr [ %sof_comp.1, %for.inc14.for.cond2.preheader_crit_edge ], [ null, %entry.for.cond2.preheader_crit_edge ]
  %num_components = getelementptr i8, ptr %.pn209, i32 28
  %1 = ptrtoint ptr %num_components to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_components, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3203 = icmp sgt i32 %2, 0
  br i1 %cmp3203, label %for.body4.lr.ph, label %for.cond2.preheader.for.inc14_crit_edge

for.cond2.preheader.for.inc14_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %components = getelementptr i8, ptr %.pn209, i32 32
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %i.0204 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %components, i32 0, i32 %i.0204
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %driver = getelementptr inbounds %struct.snd_soc_component, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body4.for.inc_crit_edge, label %if.end

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body4
  %call = tail call i32 @strcmp(ptr noundef nonnull %8, ptr noundef nonnull dereferenceable(20) @.str.183) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %if.end.for.inc14_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.for.inc14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.inc.for.inc14_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.inc.for.inc14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc14

for.inc14:                                        ; preds = %for.inc.for.inc14_crit_edge, %if.end.for.inc14_crit_edge, %for.cond2.preheader.for.inc14_crit_edge
  %sof_comp.1 = phi ptr [ %sof_comp.0208, %for.cond2.preheader.for.inc14_crit_edge ], [ %4, %if.end.for.inc14_crit_edge ], [ %sof_comp.0208, %for.inc.for.inc14_crit_edge ]
  %9 = ptrtoint ptr %.pn209 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn209, align 4
  %cmp.not = icmp eq ptr %.pn, %rtd_list
  br i1 %cmp.not, label %for.end20, label %for.inc14.for.cond2.preheader_crit_edge

for.inc14.for.cond2.preheader_crit_edge:          ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

for.end20:                                        ; preds = %for.inc14
  %tobool21.not = icmp eq ptr %sof_comp.1, null
  br i1 %tobool21.not, label %for.end20.do.end_crit_edge, label %for.cond24.preheader

for.end20.do.end_crit_edge:                       ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond24.preheader:                             ; preds = %for.end20
  %source = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %route, i32 0, i32 2
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 50
  br label %for.body26

do.end:                                           ; preds = %for.end20.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.184) #11
  br label %cleanup

for.body26:                                       ; preds = %if.end142.for.body26_crit_edge, %for.cond24.preheader
  %i.1230 = phi i32 [ 0, %for.cond24.preheader ], [ %inc144, %if.end142.for.body26_crit_edge ]
  %arrayidx27 = getelementptr [4 x %struct.sof_conn_stream], ptr @g_sof_conn_streams, i32 0, i32 %i.1230
  %12 = ptrtoint ptr %rtd_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn197211 = load ptr, ptr %rtd_list, align 4
  %cmp36.not213 = icmp eq ptr %.pn197211, %rtd_list
  br i1 %cmp36.not213, label %for.body26.if.end142_crit_edge, label %for.body38.lr.ph

for.body26.if.end142_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

for.body38.lr.ph:                                 ; preds = %for.body26
  %sof_link = getelementptr [4 x %struct.sof_conn_stream], ptr @g_sof_conn_streams, i32 0, i32 %i.1230, i32 1
  %13 = ptrtoint ptr %sof_link to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sof_link, align 4
  br label %for.body38

for.body38:                                       ; preds = %for.inc54.for.body38_crit_edge, %for.body38.lr.ph
  %.pn197216 = phi ptr [ %.pn197211, %for.body38.lr.ph ], [ %.pn197, %for.inc54.for.body38_crit_edge ]
  %sof_rtd.0215 = phi ptr [ null, %for.body38.lr.ph ], [ %sof_rtd.1, %for.inc54.for.body38_crit_edge ]
  %normal_rtd.0214 = phi ptr [ null, %for.body38.lr.ph ], [ %normal_rtd.1, %for.inc54.for.body38_crit_edge ]
  %rtd.0217 = getelementptr i8, ptr %.pn197216, i32 -1512
  %dai_link = getelementptr i8, ptr %.pn197216, i32 -1504
  %15 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dai_link, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call40 = call i32 @strcmp(ptr noundef %18, ptr noundef %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.body38.for.inc54_crit_edge, label %if.end43

for.body38.for.inc54_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54

if.end43:                                         ; preds = %for.body38
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx27, align 4
  %call46 = call i32 @strcmp(ptr noundef %18, ptr noundef %20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end43.for.inc54_crit_edge, label %if.end49

if.end43.for.inc54_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54

if.end49:                                         ; preds = %if.end43
  %tobool50.not = icmp eq ptr %normal_rtd.0214, null
  br i1 %tobool50.not, label %if.end49.for.inc54_crit_edge, label %land.lhs.true

if.end49.for.inc54_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54

land.lhs.true:                                    ; preds = %if.end49
  %tobool51.not = icmp eq ptr %sof_rtd.0215, null
  br i1 %tobool51.not, label %land.lhs.true.for.inc54_crit_edge, label %land.lhs.true.for.end60_crit_edge

land.lhs.true.for.end60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

land.lhs.true.for.inc54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc54

for.inc54:                                        ; preds = %land.lhs.true.for.inc54_crit_edge, %if.end49.for.inc54_crit_edge, %if.end43.for.inc54_crit_edge, %for.body38.for.inc54_crit_edge
  %normal_rtd.1 = phi ptr [ %normal_rtd.0214, %land.lhs.true.for.inc54_crit_edge ], [ null, %if.end49.for.inc54_crit_edge ], [ %normal_rtd.0214, %for.body38.for.inc54_crit_edge ], [ %rtd.0217, %if.end43.for.inc54_crit_edge ]
  %sof_rtd.1 = phi ptr [ null, %land.lhs.true.for.inc54_crit_edge ], [ %sof_rtd.0215, %if.end49.for.inc54_crit_edge ], [ %rtd.0217, %for.body38.for.inc54_crit_edge ], [ %sof_rtd.0215, %if.end43.for.inc54_crit_edge ]
  %21 = ptrtoint ptr %.pn197216 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn197 = load ptr, ptr %.pn197216, align 4
  %cmp36.not = icmp eq ptr %.pn197, %rtd_list
  br i1 %cmp36.not, label %for.inc54.for.end60_crit_edge, label %for.inc54.for.body38_crit_edge

for.inc54.for.body38_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body38

for.inc54.for.end60_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end60

for.end60:                                        ; preds = %for.inc54.for.end60_crit_edge, %land.lhs.true.for.end60_crit_edge
  %normal_rtd.0.lcssa = phi ptr [ %normal_rtd.1, %for.inc54.for.end60_crit_edge ], [ %normal_rtd.0214, %land.lhs.true.for.end60_crit_edge ]
  %sof_rtd.0.lcssa = phi ptr [ %sof_rtd.1, %for.inc54.for.end60_crit_edge ], [ %sof_rtd.0215, %land.lhs.true.for.end60_crit_edge ]
  %tobool61.not = icmp eq ptr %normal_rtd.0.lcssa, null
  %tobool63.not = icmp eq ptr %sof_rtd.0.lcssa, null
  %or.cond = select i1 %tobool61.not, i1 true, i1 %tobool63.not
  br i1 %or.cond, label %for.end60.if.end142_crit_edge, label %for.cond65.preheader

for.end60.if.end142_crit_edge:                    ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end142

for.cond65.preheader:                             ; preds = %for.end60
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %sof_rtd.0.lcssa, i32 0, i32 9
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %sof_rtd.0.lcssa, i32 0, i32 11
  %22 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp66228.not = icmp eq i32 %23, 0
  br i1 %cmp66228.not, label %for.cond65.preheader.for.end140_crit_edge, label %land.rhs.lr.ph

for.cond65.preheader.for.end140_crit_edge:        ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end140

land.rhs.lr.ph:                                   ; preds = %for.cond65.preheader
  %24 = and i32 %i.1230, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %25 = icmp ne i32 %24, 2
  %sof_dma = getelementptr [4 x %struct.sof_conn_stream], ptr @g_sof_conn_streams, i32 0, i32 %i.1230, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %26 = icmp ne i32 %24, 0
  br label %land.rhs

land.rhs:                                         ; preds = %if.end137.land.rhs_crit_edge, %land.rhs.lr.ph
  %j.0229 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc139, %if.end137.land.rhs_crit_edge ]
  %27 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dais, align 4
  %arrayidx67 = getelementptr ptr, ptr %28, i32 %j.0229
  %29 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %30, null
  br i1 %tobool68.not, label %land.rhs.for.end140_crit_edge, label %for.body69

land.rhs.for.end140_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end140

for.body69:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %route) #8
  %31 = call ptr @memset(ptr %route, i32 255, i32 52)
  %playback_widget = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 5
  %32 = ptrtoint ptr %playback_widget to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %playback_widget, align 4
  %capture_widget = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 6
  %34 = ptrtoint ptr %capture_widget to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %capture_widget, align 4
  %36 = call ptr @memset(ptr %route, i32 0, i32 52)
  %tobool72.not = icmp eq ptr %35, null
  %or.cond200 = select i1 %25, i1 true, i1 %tobool72.not
  br i1 %or.cond200, label %if.else, label %if.then73

if.then73:                                        ; preds = %for.body69
  %edges = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %35, i32 0, i32 22
  %37 = ptrtoint ptr %edges to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn199222 = load ptr, ptr %edges, align 4
  %cmp83.not223 = icmp eq ptr %.pn199222, %edges
  br i1 %cmp83.not223, label %if.then73.if.end137_crit_edge, label %for.body85.lr.ph

if.then73.if.end137_crit_edge:                    ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

for.body85.lr.ph:                                 ; preds = %if.then73
  %38 = ptrtoint ptr %sof_dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sof_dma, align 4
  br label %for.body85

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %for.body85.lr.ph
  %.pn199224 = phi ptr [ %.pn199222, %for.body85.lr.ph ], [ %.pn199, %for.body85.for.body85_crit_edge ]
  %40 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %source, align 4
  %sink = getelementptr i8, ptr %.pn199224, i32 -12
  %41 = ptrtoint ptr %sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sink, align 4
  %name86 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %name86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name86, align 4
  %45 = ptrtoint ptr %route to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %route, align 4
  %call88 = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm, ptr noundef nonnull %route, i32 noundef 1) #8
  %46 = ptrtoint ptr %.pn199224 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn199 = load ptr, ptr %.pn199224, align 4
  %cmp83.not = icmp eq ptr %.pn199, %edges
  br i1 %cmp83.not, label %for.body85.if.end137_crit_edge, label %for.body85.for.body85_crit_edge

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body85

for.body85.if.end137_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

if.else:                                          ; preds = %for.body69
  %tobool100.not = icmp eq ptr %33, null
  %or.cond201 = select i1 %26, i1 true, i1 %tobool100.not
  br i1 %or.cond201, label %do.end134, label %if.then101

if.then101:                                       ; preds = %if.else
  %arrayidx104 = getelementptr %struct.snd_soc_dapm_widget, ptr %33, i32 0, i32 22, i32 1
  %47 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn198225 = load ptr, ptr %arrayidx104, align 4
  %cmp113.not226 = icmp eq ptr %.pn198225, %arrayidx104
  br i1 %cmp113.not226, label %if.then101.if.end137_crit_edge, label %for.body115.lr.ph

if.then101.if.end137_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

for.body115.lr.ph:                                ; preds = %if.then101
  %48 = ptrtoint ptr %sof_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sof_dma, align 4
  br label %for.body115

for.body115:                                      ; preds = %for.body115.for.body115_crit_edge, %for.body115.lr.ph
  %.pn198227 = phi ptr [ %.pn198225, %for.body115.lr.ph ], [ %.pn198, %for.body115.for.body115_crit_edge ]
  %50 = getelementptr i8, ptr %.pn198227, i32 -24
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %name117 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %name117 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name117, align 4
  %55 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %source, align 4
  %56 = ptrtoint ptr %route to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %49, ptr %route, align 4
  %call122 = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm, ptr noundef nonnull %route, i32 noundef 1) #8
  %57 = ptrtoint ptr %.pn198227 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn198 = load ptr, ptr %.pn198227, align 4
  %cmp113.not = icmp eq ptr %.pn198, %arrayidx104
  br i1 %cmp113.not, label %for.body115.if.end137_crit_edge, label %for.body115.for.body115_crit_edge

for.body115.for.body115_crit_edge:                ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body115

for.body115.if.end137_crit_edge:                  ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

do.end134:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev135 = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 2
  %58 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev135, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.187) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end134, %for.body115.if.end137_crit_edge, %if.then101.if.end137_crit_edge, %for.body85.if.end137_crit_edge, %if.then73.if.end137_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %route) #8
  %inc139 = add nuw i32 %j.0229, 1
  %60 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_cpus, align 4
  %cmp66 = icmp ult i32 %inc139, %61
  br i1 %cmp66, label %if.end137.land.rhs_crit_edge, label %if.end137.for.end140_crit_edge

if.end137.for.end140_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end140

if.end137.land.rhs_crit_edge:                     ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end140:                                       ; preds = %if.end137.for.end140_crit_edge, %land.rhs.for.end140_crit_edge, %for.cond65.preheader.for.end140_crit_edge
  %dai_link141 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %normal_rtd.0.lcssa, i32 0, i32 2
  %62 = ptrtoint ptr %dai_link141 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dai_link141, align 4
  %be_hw_params_fixup = getelementptr inbounds %struct.snd_soc_dai_link, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @mt8195_dai_link_fixup, ptr %be_hw_params_fixup, align 4
  br label %if.end142

if.end142:                                        ; preds = %for.end140, %for.end60.if.end142_crit_edge, %for.body26.if.end142_crit_edge
  %inc144 = add nuw nsw i32 %i.1230, 1
  %exitcond235.not = icmp eq i32 %inc144, 4
  br i1 %exitcond235.not, label %if.end142.cleanup_crit_edge, label %if.end142.for.body26_crit_edge

if.end142.for.body26_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end142.cleanup_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_set_bias_level_post(ptr nocapture noundef readonly %card, ptr nocapture noundef readonly %dapm, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 3
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(14) @.str.24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(15) @.str.23) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %i2so1_mclk = getelementptr inbounds %struct.mt8195_mt6359_rt1019_rt5682_priv, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %i2so1_mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2so1_mclk, align 4
  %call7 = tail call zeroext i1 @__clk_is_enabled(ptr noundef %8) #8
  br i1 %call7, label %if.end9, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %i2so1_mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2so1_mclk, align 4
  tail call void @clk_disable(ptr noundef %10) #8
  tail call void @clk_unprepare(ptr noundef %10) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_set_bias_level_post, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !521

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug299, ptr noundef %12, ptr noundef nonnull @.str.32) #8
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %i2so1_mclk18 = getelementptr inbounds %struct.mt8195_mt6359_rt1019_rt5682_priv, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %i2so1_mclk18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2so1_mclk18, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb17.do.end24_crit_edge

sw.bb17.do.end24_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.end.i:                                         ; preds = %sw.bb17
  %call1.i = tail call i32 @clk_enable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body27, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then3.i, %sw.bb17.do.end24_crit_edge
  %retval.0.i58.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %sw.bb17.do.end24_crit_edge ]
  %dev25 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %15 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.33, i32 noundef %retval.0.i58.ph) #11
  br label %cleanup

do.body27:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_set_bias_level_post, %if.then39)) #8
          to label %cleanup [label %if.then39], !srcloc !521

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %17 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug300, ptr noundef %18, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %do.end24, %if.then15, %if.end9, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i58.ph, %do.end24 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %if.then15 ], [ 0, %if.end9 ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dptx_hw_params_fixup(ptr nocapture noundef readnone %rtd, ptr nocapture noundef %params) #6 align 64 {
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
define internal i32 @mt8195_rt5682_init(ptr noundef %rtd) #2 align 64 {
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
  %call1 = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %rtd, ptr noundef nonnull @.str.110) #8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call1, i32 0, i32 3
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %15, i32 0, i32 25
  %16 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_priv, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %arrayidx3 = getelementptr ptr, ptr %19, i32 5
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3, align 4
  %i2so1_mclk = getelementptr inbounds %struct.mt8195_mt6359_rt1019_rt5682_priv, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %i2so1_mclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %i2so1_mclk, align 4
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call5 = tail call i32 @snd_soc_card_jack_new(ptr noundef %24, ptr noundef nonnull @.str.111, i32 noundef 30723, ptr noundef %11, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.112, i32 noundef %call5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %jack6 = getelementptr inbounds %struct.snd_soc_jack, ptr %11, i32 0, i32 1
  %27 = ptrtoint ptr %jack6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jack6, align 4
  %call7 = tail call i32 @snd_jack_set_key(ptr noundef %28, i32 noundef 16384, i32 noundef 164) #8
  %29 = ptrtoint ptr %jack6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %jack6, align 4
  %call9 = tail call i32 @snd_jack_set_key(ptr noundef %30, i32 noundef 8192, i32 noundef 582) #8
  %31 = ptrtoint ptr %jack6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %jack6, align 4
  %call11 = tail call i32 @snd_jack_set_key(ptr noundef %32, i32 noundef 4096, i32 noundef 115) #8
  %33 = ptrtoint ptr %jack6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %jack6, align 4
  %call13 = tail call i32 @snd_jack_set_key(ptr noundef %34, i32 noundef 2048, i32 noundef 114) #8
  %call14 = tail call i32 @snd_soc_component_set_jack(ptr noundef %7, ptr noundef %11, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %do.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.115, i32 noundef %call14) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call14, %do.end19 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_etdm_hw_params_fixup(ptr nocapture noundef readnone %rtd, ptr nocapture noundef %params) #6 align 64 {
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
define internal i32 @mt8195_playback_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8195_playback_startup.constraints_rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8195_playback_startup.constraints_channels) #8
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
  %.str.81.sink = phi ptr [ @.str.78, %entry.cleanup.sink.split_crit_edge ], [ @.str.81, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.81.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_hdmitx_dptx_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8195_hdmitx_dptx_startup.constraints_rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8195_hdmitx_dptx_startup.constraints_channels) #8
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
  %.str.81.sink = phi ptr [ @.str.78, %entry.cleanup.sink.split_crit_edge ], [ @.str.81, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.81.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_capture_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @mt8195_capture_startup.constraints_rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @mt8195_capture_startup.constraints_channels) #8
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
  %.str.81.sink = phi ptr [ @.str.78, %entry.cleanup.sink.split_crit_edge ], [ @.str.81, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.81.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dptx_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %7, 8
  %call1 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_rt5682_etdm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
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
  %arrayidx.i.i59 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %15, %entry.if.then.i.i_crit_edge ], [ %18, %for.inc.i.i.if.then.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !523
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.117, i32 noundef %call5) #11
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.120) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %mul = shl i32 %13, 8
  %mul13 = shl i32 %13, 9
  %call14 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef %mul, i32 noundef %mul13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %dev20 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.123) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call23 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %11, i32 noundef 1, i32 noundef %mul13, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.126) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %mul, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end28, %do.end19, %do.end10, %do.end
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call6, %do.end10 ], [ %call14, %do.end19 ], [ %call23, %do.end28 ], [ %call32, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_info_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_pin_switch(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt6359_set_mtkaif_protocol(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

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
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_dai_link_fixup(ptr nocapture noundef readonly %rtd, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(13) @.str.68) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.inc35

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %for.inc35.2.if.end_crit_edge, %for.inc35.1.if.end_crit_edge, %for.inc35.if.end_crit_edge, %entry.if.end_crit_edge
  %i.088.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.inc35.if.end_crit_edge ], [ 2, %for.inc35.1.if.end_crit_edge ], [ 3, %for.inc35.2.if.end_crit_edge ]
  %rtd_list = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 26
  %sof_link = getelementptr [4 x %struct.sof_conn_stream], ptr @g_sof_conn_streams, i32 0, i32 %i.088.lcssa, i32 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.body5.for.cond2_crit_edge, %if.end
  %.pn.in = phi ptr [ %rtd_list, %if.end ], [ %.pn, %for.body5.for.cond2_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp4.not = icmp eq ptr %.pn, %rtd_list
  br i1 %cmp4.not, label %for.cond2.for.end37_crit_edge, label %for.body5

for.cond2.for.end37_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.body5:                                        ; preds = %for.cond2
  %dai_link6 = getelementptr i8, ptr %.pn, i32 -1504
  %7 = ptrtoint ptr %dai_link6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dai_link6, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %sof_link to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sof_link, align 4
  %call8 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %12) #12
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond12.preheader, label %for.body5.for.cond2_crit_edge

for.body5.for.cond2_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2

for.cond12.preheader:                             ; preds = %for.body5
  %stream_dir = getelementptr [4 x %struct.sof_conn_stream], ptr @g_sof_conn_streams, i32 0, i32 %i.088.lcssa, i32 3
  %num_cpus = getelementptr i8, ptr %.pn, i32 -124
  %13 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1391.not = icmp eq i32 %14, 0
  br i1 %cmp1391.not, label %for.cond12.preheader.for.end37_crit_edge, label %land.rhs.lr.ph

for.cond12.preheader.for.end37_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

land.rhs.lr.ph:                                   ; preds = %for.cond12.preheader
  %dais = getelementptr i8, ptr %.pn, i32 -132
  %15 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dais, align 4
  br label %land.rhs

for.cond12:                                       ; preds = %for.body16
  %inc = add nuw i32 %j.092, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.cond12.for.end37_crit_edge, label %for.cond12.land.rhs_crit_edge

for.cond12.land.rhs_crit_edge:                    ; preds = %for.cond12
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.cond12.for.end37_crit_edge:                   ; preds = %for.cond12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

land.rhs:                                         ; preds = %for.cond12.land.rhs_crit_edge, %land.rhs.lr.ph
  %j.092 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.cond12.land.rhs_crit_edge ]
  %arrayidx14 = getelementptr ptr, ptr %16, i32 %j.092
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %18, null
  br i1 %tobool15.not, label %land.rhs.for.end37_crit_edge, label %for.body16

land.rhs.for.end37_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.body16:                                       ; preds = %land.rhs
  %19 = ptrtoint ptr %stream_dir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream_dir, align 4
  %arrayidx17 = getelementptr %struct.snd_soc_dai, ptr %18, i32 0, i32 4, i32 %20
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp18.not = icmp eq i32 %22, 0
  br i1 %cmp18.not, label %for.cond12, label %for.end28

for.end28:                                        ; preds = %for.body16
  %runtime.185 = getelementptr i8, ptr %.pn, i32 -1512
  %tobool29.not = icmp eq ptr %8, null
  br i1 %tobool29.not, label %for.end28.for.end37_crit_edge, label %land.lhs.true

for.end28.for.end37_crit_edge:                    ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

land.lhs.true:                                    ; preds = %for.end28
  %be_hw_params_fixup = getelementptr inbounds %struct.snd_soc_dai_link, ptr %8, i32 0, i32 15
  %23 = ptrtoint ptr %be_hw_params_fixup to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %be_hw_params_fixup, align 4
  %tobool30.not = icmp eq ptr %24, null
  br i1 %tobool30.not, label %land.lhs.true.for.end37_crit_edge, label %if.then31

land.lhs.true.for.end37_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = tail call i32 %24(ptr noundef %runtime.185, ptr noundef %params) #8
  br label %for.end37

for.inc35:                                        ; preds = %entry
  %call.1 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(13) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc35.if.end_crit_edge, label %for.inc35.1

for.inc35.if.end_crit_edge:                       ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc35.1:                                      ; preds = %for.inc35
  %call.2 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(11) @.str.28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.inc35.1.if.end_crit_edge, label %for.inc35.2

for.inc35.1.if.end_crit_edge:                     ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc35.2:                                      ; preds = %for.inc35.1
  %call.3 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(12) @.str.22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.inc35.2.if.end_crit_edge, label %for.inc35.2.for.end37_crit_edge

for.inc35.2.for.end37_crit_edge:                  ; preds = %for.inc35.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end37

for.inc35.2.if.end_crit_edge:                     ; preds = %for.inc35.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.end37:                                        ; preds = %for.inc35.2.for.end37_crit_edge, %if.then31, %land.lhs.true.for.end37_crit_edge, %for.end28.for.end37_crit_edge, %land.rhs.for.end37_crit_edge, %for.cond12.for.end37_crit_edge, %for.cond12.preheader.for.end37_crit_edge, %for.cond2.for.end37_crit_edge
  %ret.3 = phi i32 [ 0, %for.end28.for.end37_crit_edge ], [ 0, %land.lhs.true.for.end37_crit_edge ], [ %call33, %if.then31 ], [ 0, %for.inc35.2.for.end37_crit_edge ], [ 0, %for.cond12.preheader.for.end37_crit_edge ], [ 0, %for.cond12.for.end37_crit_edge ], [ 0, %land.rhs.for.end37_crit_edge ], [ 0, %for.cond2.for.end37_crit_edge ]
  %25 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dai_link, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call40 = tail call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(12) @.str.22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.end37.if.then46_crit_edge, label %lor.lhs.false

for.end37.if.then46_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

lor.lhs.false:                                    ; preds = %for.end37
  %call44 = tail call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(13) @.str.21) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false.if.then46_crit_edge, label %lor.lhs.false.if.end48_crit_edge

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %for.end37.if.then46_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then46
  %i.01.i.i = phi i32 [ 0, %if.then46 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %and.i.i = and i32 %i.01.i.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %shr.i.i = lshr i32 %i.01.i.i, 5
  %arrayidx.i2.i = getelementptr [8 x i32], ptr %arrayidx.i.i, i32 0, i32 %shr.i.i
  %29 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i2.i, align 4
  %and1.i.i = and i32 %30, %neg.i.i
  store i32 %and1.i.i, ptr %arrayidx.i2.i, align 4
  %inc.i.i = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 53
  br i1 %exitcond.not.i.i, label %mt8195_etdm_hw_params_fixup.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

mt8195_etdm_hw_params_fixup.exit:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i.i.i = or i32 %32, 64
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end48

if.end48:                                         ; preds = %mt8195_etdm_hw_params_fixup.exit, %lor.lhs.false.if.end48_crit_edge
  ret i32 %ret.3
}

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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 301)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 301)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !46, !48, !50, !52, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176, !177, !178, !179, !180, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !228, !230, !232, !234, !236, !237, !238, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !260, !262, !264, !266, !268, !269, !270, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !308, !310, !311, !312, !313, !314, !315, !317, !318, !319, !320, !322, !324, !325, !326, !327, !329, !330, !331, !332, !334, !336, !338, !339, !340, !341, !343, !344, !345, !347, !349, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !363, !364, !366, !367, !368, !369, !371, !372, !373, !374, !375, !376, !378, !379, !380, !381, !383, !384, !385, !386, !388, !389, !390, !391, !392, !393, !395, !396, !397, !398, !399, !401, !402, !403, !404, !406, !407, !408, !409, !411, !412, !413, !414, !416, !417, !418, !419, !421, !422, !424, !425, !427, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !469, !470, !472, !473, !475, !477, !479, !480, !481, !482, !483, !485, !486, !487, !489, !490, !491, !493, !494, !495, !497, !499, !500, !501, !502, !504, !505, !506, !508, !510}
!llvm.module.flags = !{!512, !513, !514, !515, !516, !517, !518, !519}
!llvm.ident = !{!520}

!0 = !{ptr @__initcall__kmod_mt8195_mt6359_rt1019_rt5682__307_1431_mt8195_mt6359_rt1019_rt5682_driver_init6, !1, !"__initcall__kmod_mt8195_mt6359_rt1019_rt5682__307_1431_mt8195_mt6359_rt1019_rt5682_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1431, i32 1}
!2 = !{ptr @__exitcall_mt8195_mt6359_rt1019_rt5682_driver_exit, !1, !"__exitcall_mt8195_mt6359_rt1019_rt5682_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description308, !4, !"__UNIQUE_ID_description308", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1434, i32 1}
!5 = !{ptr @__UNIQUE_ID_author309, !6, !"__UNIQUE_ID_author309", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1435, i32 1}
!7 = !{ptr @__UNIQUE_ID_author310, !8, !"__UNIQUE_ID_author310", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1436, i32 1}
!9 = !{ptr @__UNIQUE_ID_file311, !10, !"__UNIQUE_ID_file311", i1 false, i1 false}
!10 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1437, i32 1}
!11 = !{ptr @__UNIQUE_ID_license312, !10, !"__UNIQUE_ID_license312", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias313, !13, !"__UNIQUE_ID_alias313", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1438, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1422, i32 11}
!16 = !{ptr @mt8195_mt6359_rt1019_rt5682_driver, !17, !"mt8195_mt6359_rt1019_rt5682_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1420, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1311, i32 41}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1313, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mt8195_mt6359_rt1019_rt5682_dev_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt8195_mt6359_rt1019_rt5682_dev_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1318, i32 25}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1326, i32 7}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1328, i32 3}
!34 = !{ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug303, !33, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1332, i32 50}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1336, i32 48}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1338, i32 10}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1340, i32 47}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1344, i32 4}
!45 = !{ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug304, !44, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1354, i32 33}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1360, i32 30}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1362, i32 5}
!52 = !{ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug305, !51, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1366, i32 34}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1369, i32 37}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1371, i32 5}
!59 = !{ptr @mt8195_mt6359_rt1019_rt5682_dev_probe.__UNIQUE_ID_ddebug306, !58, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1378, i32 37}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1379, i32 30}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1381, i32 15}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1381, i32 35}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1383, i32 15}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1383, i32 35}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1384, i32 37}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1385, i32 30}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1386, i32 30}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1238, i32 10}
!80 = !{ptr @mt8195_mt6359_rt1019_rt5682_soc_card, !81, !"mt8195_mt6359_rt1019_rt5682_soc_card", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1237, i32 28}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 591, i32 3}
!84 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug299, !83, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 596, i32 4}
!88 = !{ptr @mt8195_set_bias_level_post._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @mt8195_set_bias_level_post._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 599, i32 3}
!92 = !{ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug300, !91, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 935, i32 11}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 936, i32 18}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 947, i32 11}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 948, i32 18}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 959, i32 11}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 960, i32 18}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 971, i32 11}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 972, i32 18}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 982, i32 11}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 983, i32 18}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 994, i32 11}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 995, i32 18}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1006, i32 11}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1007, i32 18}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1018, i32 11}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1019, i32 18}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1029, i32 11}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1030, i32 18}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1041, i32 11}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1042, i32 18}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1053, i32 11}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1054, i32 18}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1065, i32 11}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1066, i32 18}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1077, i32 11}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1078, i32 18}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1088, i32 11}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1089, i32 18}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1100, i32 11}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1101, i32 18}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1112, i32 11}
!155 = !{ptr @.str.66, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1113, i32 18}
!157 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1139, i32 11}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1171, i32 11}
!161 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1189, i32 11}
!163 = !{ptr @.str.70, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1212, i32 11}
!165 = !{ptr @.str.71, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1218, i32 11}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1224, i32 11}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1230, i32 11}
!171 = !{ptr @mt8195_mt6359_rt1019_rt5682_dai_links, !172, !"mt8195_mt6359_rt1019_rt5682_dai_links", i1 false, i1 false}
!172 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 932, i32 32}
!173 = !{ptr @.str.75, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 647, i32 1}
!175 = !{ptr @DL2_FE_cpus, !174, !"DL2_FE_cpus", i1 false, i1 false}
!176 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @DL2_FE_codecs, !174, !"DL2_FE_codecs", i1 false, i1 false}
!179 = !{ptr @DL2_FE_platforms, !174, !"DL2_FE_platforms", i1 false, i1 false}
!180 = !{ptr @mt8195_playback_ops, !181, !"mt8195_playback_ops", i1 false, i1 false}
!181 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 516, i32 33}
!182 = !{ptr @mt8195_playback_startup.rates, !183, !"rates", i1 false, i1 false}
!183 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 476, i32 28}
!184 = !{ptr @mt8195_playback_startup.channels, !185, !"channels", i1 false, i1 false}
!185 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 479, i32 28}
!186 = !{ptr @mt8195_playback_startup.constraints_rates, !187, !"constraints_rates", i1 false, i1 false}
!187 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 482, i32 49}
!188 = !{ptr @mt8195_playback_startup.constraints_channels, !189, !"constraints_channels", i1 false, i1 false}
!189 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 487, i32 49}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 501, i32 3}
!192 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mt8195_playback_startup._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @mt8195_playback_startup._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 509, i32 3}
!197 = !{ptr @mt8195_playback_startup._entry.80, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @mt8195_playback_startup._entry_ptr.82, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.83, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 652, i32 1}
!201 = !{ptr @DL3_FE_cpus, !200, !"DL3_FE_cpus", i1 false, i1 false}
!202 = !{ptr @DL3_FE_codecs, !200, !"DL3_FE_codecs", i1 false, i1 false}
!203 = !{ptr @DL3_FE_platforms, !200, !"DL3_FE_platforms", i1 false, i1 false}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 657, i32 1}
!206 = !{ptr @DL6_FE_cpus, !205, !"DL6_FE_cpus", i1 false, i1 false}
!207 = !{ptr @DL6_FE_codecs, !205, !"DL6_FE_codecs", i1 false, i1 false}
!208 = !{ptr @DL6_FE_platforms, !205, !"DL6_FE_platforms", i1 false, i1 false}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 662, i32 1}
!211 = !{ptr @DL7_FE_cpus, !210, !"DL7_FE_cpus", i1 false, i1 false}
!212 = !{ptr @DL7_FE_codecs, !210, !"DL7_FE_codecs", i1 false, i1 false}
!213 = !{ptr @DL7_FE_platforms, !210, !"DL7_FE_platforms", i1 false, i1 false}
!214 = !{ptr @.str.86, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 667, i32 1}
!216 = !{ptr @DL8_FE_cpus, !215, !"DL8_FE_cpus", i1 false, i1 false}
!217 = !{ptr @DL8_FE_codecs, !215, !"DL8_FE_codecs", i1 false, i1 false}
!218 = !{ptr @DL8_FE_platforms, !215, !"DL8_FE_platforms", i1 false, i1 false}
!219 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 672, i32 1}
!221 = !{ptr @DL10_FE_cpus, !220, !"DL10_FE_cpus", i1 false, i1 false}
!222 = !{ptr @DL10_FE_codecs, !220, !"DL10_FE_codecs", i1 false, i1 false}
!223 = !{ptr @DL10_FE_platforms, !220, !"DL10_FE_platforms", i1 false, i1 false}
!224 = !{ptr @mt8195_hdmitx_dptx_playback_ops, !225, !"mt8195_hdmitx_dptx_playback_ops", i1 false, i1 false}
!225 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 408, i32 33}
!226 = !{ptr @mt8195_hdmitx_dptx_startup.rates, !227, !"rates", i1 false, i1 false}
!227 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 368, i32 28}
!228 = !{ptr @mt8195_hdmitx_dptx_startup.channels, !229, !"channels", i1 false, i1 false}
!229 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 371, i32 28}
!230 = !{ptr @mt8195_hdmitx_dptx_startup.constraints_rates, !231, !"constraints_rates", i1 false, i1 false}
!231 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 374, i32 49}
!232 = !{ptr @mt8195_hdmitx_dptx_startup.constraints_channels, !233, !"constraints_channels", i1 false, i1 false}
!233 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 379, i32 49}
!234 = !{ptr @.str.88, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 393, i32 3}
!236 = !{ptr @mt8195_hdmitx_dptx_startup._entry, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @mt8195_hdmitx_dptx_startup._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @mt8195_hdmitx_dptx_startup._entry.89, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 401, i32 3}
!240 = !{ptr @mt8195_hdmitx_dptx_startup._entry_ptr.90, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.91, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 677, i32 1}
!243 = !{ptr @DL11_FE_cpus, !242, !"DL11_FE_cpus", i1 false, i1 false}
!244 = !{ptr @DL11_FE_codecs, !242, !"DL11_FE_codecs", i1 false, i1 false}
!245 = !{ptr @DL11_FE_platforms, !242, !"DL11_FE_platforms", i1 false, i1 false}
!246 = !{ptr @.str.92, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 682, i32 1}
!248 = !{ptr @UL1_FE_cpus, !247, !"UL1_FE_cpus", i1 false, i1 false}
!249 = !{ptr @UL1_FE_codecs, !247, !"UL1_FE_codecs", i1 false, i1 false}
!250 = !{ptr @UL1_FE_platforms, !247, !"UL1_FE_platforms", i1 false, i1 false}
!251 = !{ptr @.str.93, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 687, i32 1}
!253 = !{ptr @UL2_FE_cpus, !252, !"UL2_FE_cpus", i1 false, i1 false}
!254 = !{ptr @UL2_FE_codecs, !252, !"UL2_FE_codecs", i1 false, i1 false}
!255 = !{ptr @UL2_FE_platforms, !252, !"UL2_FE_platforms", i1 false, i1 false}
!256 = !{ptr @mt8195_capture_ops, !257, !"mt8195_capture_ops", i1 false, i1 false}
!257 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 562, i32 33}
!258 = !{ptr @mt8195_capture_startup.rates, !259, !"rates", i1 false, i1 false}
!259 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 522, i32 28}
!260 = !{ptr @mt8195_capture_startup.channels, !261, !"channels", i1 false, i1 false}
!261 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 525, i32 28}
!262 = !{ptr @mt8195_capture_startup.constraints_rates, !263, !"constraints_rates", i1 false, i1 false}
!263 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 528, i32 49}
!264 = !{ptr @mt8195_capture_startup.constraints_channels, !265, !"constraints_channels", i1 false, i1 false}
!265 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 533, i32 49}
!266 = !{ptr @.str.94, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 547, i32 3}
!268 = !{ptr @mt8195_capture_startup._entry, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @mt8195_capture_startup._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @mt8195_capture_startup._entry.95, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 555, i32 3}
!272 = !{ptr @mt8195_capture_startup._entry_ptr.96, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.97, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 692, i32 1}
!275 = !{ptr @UL3_FE_cpus, !274, !"UL3_FE_cpus", i1 false, i1 false}
!276 = !{ptr @UL3_FE_codecs, !274, !"UL3_FE_codecs", i1 false, i1 false}
!277 = !{ptr @UL3_FE_platforms, !274, !"UL3_FE_platforms", i1 false, i1 false}
!278 = !{ptr @.str.98, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 697, i32 1}
!280 = !{ptr @UL4_FE_cpus, !279, !"UL4_FE_cpus", i1 false, i1 false}
!281 = !{ptr @UL4_FE_codecs, !279, !"UL4_FE_codecs", i1 false, i1 false}
!282 = !{ptr @UL4_FE_platforms, !279, !"UL4_FE_platforms", i1 false, i1 false}
!283 = !{ptr @.str.99, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 702, i32 1}
!285 = !{ptr @UL5_FE_cpus, !284, !"UL5_FE_cpus", i1 false, i1 false}
!286 = !{ptr @UL5_FE_codecs, !284, !"UL5_FE_codecs", i1 false, i1 false}
!287 = !{ptr @UL5_FE_platforms, !284, !"UL5_FE_platforms", i1 false, i1 false}
!288 = !{ptr @.str.100, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 707, i32 1}
!290 = !{ptr @UL6_FE_cpus, !289, !"UL6_FE_cpus", i1 false, i1 false}
!291 = !{ptr @UL6_FE_codecs, !289, !"UL6_FE_codecs", i1 false, i1 false}
!292 = !{ptr @UL6_FE_platforms, !289, !"UL6_FE_platforms", i1 false, i1 false}
!293 = !{ptr @.str.101, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 712, i32 1}
!295 = !{ptr @UL8_FE_cpus, !294, !"UL8_FE_cpus", i1 false, i1 false}
!296 = !{ptr @UL8_FE_codecs, !294, !"UL8_FE_codecs", i1 false, i1 false}
!297 = !{ptr @UL8_FE_platforms, !294, !"UL8_FE_platforms", i1 false, i1 false}
!298 = !{ptr @.str.102, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 717, i32 1}
!300 = !{ptr @UL9_FE_cpus, !299, !"UL9_FE_cpus", i1 false, i1 false}
!301 = !{ptr @UL9_FE_codecs, !299, !"UL9_FE_codecs", i1 false, i1 false}
!302 = !{ptr @UL9_FE_platforms, !299, !"UL9_FE_platforms", i1 false, i1 false}
!303 = !{ptr @.str.103, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 722, i32 1}
!305 = !{ptr @UL10_FE_cpus, !304, !"UL10_FE_cpus", i1 false, i1 false}
!306 = !{ptr @UL10_FE_codecs, !304, !"UL10_FE_codecs", i1 false, i1 false}
!307 = !{ptr @UL10_FE_platforms, !304, !"UL10_FE_platforms", i1 false, i1 false}
!308 = !{ptr @.str.104, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 728, i32 1}
!310 = !{ptr @DL_SRC_BE_cpus, !309, !"DL_SRC_BE_cpus", i1 false, i1 false}
!311 = !{ptr @.str.105, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.106, !309, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @DL_SRC_BE_codecs, !309, !"DL_SRC_BE_codecs", i1 false, i1 false}
!314 = !{ptr @DL_SRC_BE_platforms, !309, !"DL_SRC_BE_platforms", i1 false, i1 false}
!315 = !{ptr @.str.107, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 734, i32 1}
!317 = !{ptr @DPTX_BE_cpus, !316, !"DPTX_BE_cpus", i1 false, i1 false}
!318 = !{ptr @DPTX_BE_codecs, !316, !"DPTX_BE_codecs", i1 false, i1 false}
!319 = !{ptr @DPTX_BE_platforms, !316, !"DPTX_BE_platforms", i1 false, i1 false}
!320 = !{ptr @mt8195_dptx_ops, !321, !"mt8195_dptx_ops", i1 false, i1 false}
!321 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 425, i32 33}
!322 = !{ptr @.str.108, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 739, i32 1}
!324 = !{ptr @ETDM1_IN_BE_cpus, !323, !"ETDM1_IN_BE_cpus", i1 false, i1 false}
!325 = !{ptr @ETDM1_IN_BE_codecs, !323, !"ETDM1_IN_BE_codecs", i1 false, i1 false}
!326 = !{ptr @ETDM1_IN_BE_platforms, !323, !"ETDM1_IN_BE_platforms", i1 false, i1 false}
!327 = !{ptr @.str.109, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 744, i32 1}
!329 = !{ptr @ETDM2_IN_BE_cpus, !328, !"ETDM2_IN_BE_cpus", i1 false, i1 false}
!330 = !{ptr @ETDM2_IN_BE_codecs, !328, !"ETDM2_IN_BE_codecs", i1 false, i1 false}
!331 = !{ptr @ETDM2_IN_BE_platforms, !328, !"ETDM2_IN_BE_platforms", i1 false, i1 false}
!332 = !{ptr @.str.110, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 323, i32 30}
!334 = !{ptr @.str.111, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 330, i32 41}
!336 = !{ptr @.str.112, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 336, i32 3}
!338 = !{ptr @.str.113, !337, !"<string literal>", i1 false, i1 false}
!339 = !{ptr @mt8195_rt5682_init._entry, !337, !"_entry", i1 false, i1 false}
!340 = !{ptr @mt8195_rt5682_init._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.115, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 347, i32 3}
!343 = !{ptr @mt8195_rt5682_init._entry.114, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @mt8195_rt5682_init._entry_ptr.116, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @mt8195_rt5682_etdm_ops, !346, !"mt8195_rt5682_etdm_ops", i1 false, i1 false}
!346 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 130, i32 33}
!347 = !{ptr @.str.117, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 102, i32 3}
!349 = !{ptr @.str.118, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @mt8195_rt5682_etdm_hw_params._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.120, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 108, i32 3}
!354 = !{ptr @mt8195_rt5682_etdm_hw_params._entry.119, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.121, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.123, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 115, i32 3}
!358 = !{ptr @mt8195_rt5682_etdm_hw_params._entry.122, !357, !"_entry", i1 false, i1 false}
!359 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.124, !357, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.126, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 122, i32 3}
!362 = !{ptr @mt8195_rt5682_etdm_hw_params._entry.125, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.127, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.128, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 749, i32 1}
!366 = !{ptr @ETDM1_OUT_BE_cpus, !365, !"ETDM1_OUT_BE_cpus", i1 false, i1 false}
!367 = !{ptr @ETDM1_OUT_BE_codecs, !365, !"ETDM1_OUT_BE_codecs", i1 false, i1 false}
!368 = !{ptr @ETDM1_OUT_BE_platforms, !365, !"ETDM1_OUT_BE_platforms", i1 false, i1 false}
!369 = !{ptr @.str.129, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 754, i32 1}
!371 = !{ptr @ETDM2_OUT_BE_cpus, !370, !"ETDM2_OUT_BE_cpus", i1 false, i1 false}
!372 = !{ptr @.str.130, !370, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @.str.131, !370, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @ETDM2_OUT_BE_codecs, !370, !"ETDM2_OUT_BE_codecs", i1 false, i1 false}
!375 = !{ptr @ETDM2_OUT_BE_platforms, !370, !"ETDM2_OUT_BE_platforms", i1 false, i1 false}
!376 = !{ptr @.str.132, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 760, i32 1}
!378 = !{ptr @ETDM3_OUT_BE_cpus, !377, !"ETDM3_OUT_BE_cpus", i1 false, i1 false}
!379 = !{ptr @ETDM3_OUT_BE_codecs, !377, !"ETDM3_OUT_BE_codecs", i1 false, i1 false}
!380 = !{ptr @ETDM3_OUT_BE_platforms, !377, !"ETDM3_OUT_BE_platforms", i1 false, i1 false}
!381 = !{ptr @.str.133, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 765, i32 1}
!383 = !{ptr @PCM1_BE_cpus, !382, !"PCM1_BE_cpus", i1 false, i1 false}
!384 = !{ptr @PCM1_BE_codecs, !382, !"PCM1_BE_codecs", i1 false, i1 false}
!385 = !{ptr @PCM1_BE_platforms, !382, !"PCM1_BE_platforms", i1 false, i1 false}
!386 = !{ptr @.str.134, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 770, i32 1}
!388 = !{ptr @UL_SRC1_BE_cpus, !387, !"UL_SRC1_BE_cpus", i1 false, i1 false}
!389 = !{ptr @.str.135, !387, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.136, !387, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @UL_SRC1_BE_codecs, !387, !"UL_SRC1_BE_codecs", i1 false, i1 false}
!392 = !{ptr @UL_SRC1_BE_platforms, !387, !"UL_SRC1_BE_platforms", i1 false, i1 false}
!393 = !{ptr @.str.137, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 778, i32 1}
!395 = !{ptr @UL_SRC2_BE_cpus, !394, !"UL_SRC2_BE_cpus", i1 false, i1 false}
!396 = !{ptr @.str.138, !394, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @UL_SRC2_BE_codecs, !394, !"UL_SRC2_BE_codecs", i1 false, i1 false}
!398 = !{ptr @UL_SRC2_BE_platforms, !394, !"UL_SRC2_BE_platforms", i1 false, i1 false}
!399 = !{ptr @.str.139, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 784, i32 1}
!401 = !{ptr @AFE_SOF_DL2_cpus, !400, !"AFE_SOF_DL2_cpus", i1 false, i1 false}
!402 = !{ptr @AFE_SOF_DL2_codecs, !400, !"AFE_SOF_DL2_codecs", i1 false, i1 false}
!403 = !{ptr @AFE_SOF_DL2_platforms, !400, !"AFE_SOF_DL2_platforms", i1 false, i1 false}
!404 = !{ptr @.str.140, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 789, i32 1}
!406 = !{ptr @AFE_SOF_DL3_cpus, !405, !"AFE_SOF_DL3_cpus", i1 false, i1 false}
!407 = !{ptr @AFE_SOF_DL3_codecs, !405, !"AFE_SOF_DL3_codecs", i1 false, i1 false}
!408 = !{ptr @AFE_SOF_DL3_platforms, !405, !"AFE_SOF_DL3_platforms", i1 false, i1 false}
!409 = !{ptr @.str.141, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 794, i32 1}
!411 = !{ptr @AFE_SOF_UL4_cpus, !410, !"AFE_SOF_UL4_cpus", i1 false, i1 false}
!412 = !{ptr @AFE_SOF_UL4_codecs, !410, !"AFE_SOF_UL4_codecs", i1 false, i1 false}
!413 = !{ptr @AFE_SOF_UL4_platforms, !410, !"AFE_SOF_UL4_platforms", i1 false, i1 false}
!414 = !{ptr @.str.142, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 799, i32 1}
!416 = !{ptr @AFE_SOF_UL5_cpus, !415, !"AFE_SOF_UL5_cpus", i1 false, i1 false}
!417 = !{ptr @AFE_SOF_UL5_codecs, !415, !"AFE_SOF_UL5_codecs", i1 false, i1 false}
!418 = !{ptr @AFE_SOF_UL5_platforms, !415, !"AFE_SOF_UL5_platforms", i1 false, i1 false}
!419 = !{ptr @.str.143, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 84, i32 2}
!421 = !{ptr @.str.144, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @.str.145, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 85, i32 2}
!424 = !{ptr @.str.146, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @.str.147, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 86, i32 2}
!427 = !{ptr @.str.148, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @mt8195_mt6359_rt1019_rt5682_controls, !429, !"mt8195_mt6359_rt1019_rt5682_controls", i1 false, i1 false}
!429 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 83, i32 38}
!430 = !{ptr @.str.149, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 58, i32 2}
!432 = !{ptr @.str.150, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 59, i32 2}
!434 = !{ptr @.str.151, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 60, i32 2}
!436 = !{ptr @.str.152, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 61, i32 2}
!438 = !{ptr @mt8195_mt6359_rt1019_rt5682_widgets, !439, !"mt8195_mt6359_rt1019_rt5682_widgets", i1 false, i1 false}
!439 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 54, i32 2}
!440 = !{ptr @.str.154, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 66, i32 22}
!442 = !{ptr @.str.155, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 68, i32 28}
!444 = !{ptr @.str.156, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 69, i32 28}
!446 = !{ptr @.str.157, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 70, i32 4}
!448 = !{ptr @.str.158, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 72, i32 22}
!450 = !{ptr @.str.159, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 73, i32 22}
!452 = !{ptr @.str.160, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 74, i32 22}
!454 = !{ptr @.str.161, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 75, i32 22}
!456 = !{ptr @.str.162, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 77, i32 3}
!458 = !{ptr @.str.163, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 78, i32 3}
!460 = !{ptr @.str.164, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 79, i32 3}
!462 = !{ptr @.str.165, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 80, i32 3}
!464 = !{ptr @mt8195_mt6359_rt1019_rt5682_routes, !465, !"mt8195_mt6359_rt1019_rt5682_routes", i1 false, i1 false}
!465 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 64, i32 40}
!466 = !{ptr @.str.166, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1262, i32 3}
!468 = !{ptr @.str.167, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @mt8195_dailink_parse_of.__UNIQUE_ID_ddebug301, !467, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!470 = !{ptr @.str.168, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1276, i32 4}
!472 = !{ptr @mt8195_dailink_parse_of.__UNIQUE_ID_ddebug302, !471, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!473 = !{ptr @.str.169, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 437, i32 41}
!475 = !{ptr @.str.170, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 453, i32 41}
!477 = !{ptr @.str.171, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 159, i32 2}
!479 = !{ptr @.str.172, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @.str.173, !478, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry, !478, !"_entry", i1 false, i1 false}
!482 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.175, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 170, i32 3}
!485 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry.174, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.176, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.178, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 217, i32 5}
!489 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry.177, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.179, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.181, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 294, i32 2}
!493 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry.180, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.182, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.183, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 865, i32 54}
!497 = !{ptr @.str.184, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 873, i32 3}
!499 = !{ptr @.str.185, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry, !498, !"_entry", i1 false, i1 false}
!501 = !{ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry_ptr, !498, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.187, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 922, i32 6}
!504 = !{ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry.186, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @mt8195_mt6359_rt1019_rt5682_card_late_probe._entry_ptr.188, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @g_sof_conn_streams, !507, !"g_sof_conn_streams", i1 false, i1 false}
!507 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 804, i32 37}
!508 = !{ptr @mt8195_mt6359_rt1019_rt5682_dt_match, !509, !"mt8195_mt6359_rt1019_rt5682_dt_match", i1 false, i1 false}
!509 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1409, i32 34}
!510 = !{ptr @mt8195_mt6359_rt1019_rt5682_pm_ops, !511, !"mt8195_mt6359_rt1019_rt5682_pm_ops", i1 false, i1 false}
!511 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1019-rt5682.c", i32 1415, i32 32}
!512 = !{i32 1, !"wchar_size", i32 2}
!513 = !{i32 1, !"min_enum_size", i32 4}
!514 = !{i32 8, !"branch-target-enforcement", i32 0}
!515 = !{i32 8, !"sign-return-address", i32 0}
!516 = !{i32 8, !"sign-return-address-all", i32 0}
!517 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!518 = !{i32 7, !"uwtable", i32 1}
!519 = !{i32 7, !"frame-pointer", i32 2}
!520 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!521 = !{i64 2149070424, i64 2149070429, i64 2149070442, i64 2149070486, i64 2149070520, i64 2149070541}
!522 = !{!"auto-init"}
!523 = !{i32 0, i32 33}
