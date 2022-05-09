; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c"
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
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mt8195_mt6359_rt1011_rt5682_priv = type { %struct.snd_soc_jack, %struct.snd_soc_jack, %struct.snd_soc_jack, ptr }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.mt8195_afe_private = type { ptr, ptr, ptr, i32, ptr, i32, [3 x i32], %struct.spinlock, [22 x %struct.mtk_dai_memif_irq_priv], %struct.mtkaif_param, [26 x ptr] }
%struct.mtk_dai_memif_irq_priv = type { i32 }
%struct.mtkaif_param = type { i8, [3 x i32], [3 x i32], i32, i32 }

@__initcall__kmod_mt8195_mt6359_rt1011_rt5682__301_1192_mt8195_mt6359_rt1011_rt5682_driver_init6 = internal global ptr @mt8195_mt6359_rt1011_rt5682_driver_init, section ".initcall6.init", align 4
@mt8195_mt6359_rt1011_rt5682_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8195_mt6359_rt1011_rt5682_dev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8195_mt6359_rt1011_rt5682_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_mt6359_rt1011_rt5682_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8195_mt6359_rt1011_rt5682_driver_exit = internal global ptr @mt8195_mt6359_rt1011_rt5682_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [92 x i8] c"mt8195_mt6359_rt1011_rt5682.description=MT8195-MT6359-RT1011-RT5682 ALSA SoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [70 x i8] c"mt8195_mt6359_rt1011_rt5682.author=Trevor Wu <trevor.wu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [87 x i8] c"mt8195_mt6359_rt1011_rt5682.file=sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [40 x i8] c"mt8195_mt6359_rt1011_rt5682.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias306 = internal constant [71 x i8] c"mt8195_mt6359_rt1011_rt5682.alias=mt8195_mt6359_rt1011_rt5682 soc card\00", section ".modinfo", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt8195_mt6359_rt1011_rt5682\00", [36 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195_mt6359_rt1011_rt5682\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_poweroff, ptr @snd_soc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_soc_card = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.23, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_set_bias_level_post, ptr null, ptr null, i32 0, ptr @mt8195_mt6359_rt1011_rt5682_dai_links, i32 26, %struct.list_head zeroinitializer, i32 0, ptr @rt1011_amp_conf, i32 2, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @mt8195_mt6359_rt1011_rt5682_controls, i32 4, ptr @mt8195_mt6359_rt1011_rt5682_widgets, i32 4, ptr @mt8195_mt6359_rt1011_rt5682_routes, i32 5, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s new card name parsing error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mt8195_mt6359_rt1011_rt5682_dev_probe\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_dev_probe._entry_ptr = internal global ptr @mt8195_mt6359_rt1011_rt5682_dev_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"_5682s\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,platform\00", [46 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.9, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Property 'platform' missing or invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,dptx-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,hdmi-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DPTX_BE\00", [24 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.13, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No property 'dptx-codec'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETDM3_OUT_BE\00", [19 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No property 'hdmi-codec'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETDM1_OUT_BE\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETDM2_IN_BE\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rt5682s.2-001a\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt5682.2-001a\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt5682s-aif1\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8195_r1011_5682\00", [46 x i8] zeroinitializer }, align 32
@rt1011_amp_conf = internal global { [2 x %struct.snd_soc_codec_conf], [32 x i8] } { [2 x %struct.snd_soc_codec_conf] [%struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.132, ptr null, ptr null }, ptr @.str.146 }, %struct.snd_soc_codec_conf { %struct.snd_soc_dai_link_component { ptr @.str.134, ptr null, ptr null }, ptr @.str.147 }], [32 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_dapm_info_pin_switch, ptr @snd_soc_dapm_get_pin_switch, ptr @snd_soc_dapm_put_pin_switch, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.str.155 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_routes = internal constant { [5 x %struct.snd_soc_dapm_route], [92 x i8] } { [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }], [92 x i8] zeroinitializer }, align 32
@mt8195_set_bias_level_post.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8195_set_bias_level_post\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Disable i2so1 mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@mt8195_set_bias_level_post._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.4, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't enable i2so1 mclk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mt8195_set_bias_level_post._entry_ptr = internal global ptr @mt8195_set_bias_level_post._entry, section ".printk_index", align 4
@mt8195_set_bias_level_post.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.27, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enable i2so1 mclk\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL2_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL2 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL2_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.67 }], [20 x i8] zeroinitializer }, align 32
@DL2_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DL2_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_playback_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8195_playback_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL3_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL3 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL3_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.75 }], [20 x i8] zeroinitializer }, align 32
@DL3_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DL3_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL6_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL6 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL6_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.76 }], [20 x i8] zeroinitializer }, align 32
@DL6_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DL6_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL7_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL7 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL7_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.77 }], [20 x i8] zeroinitializer }, align 32
@DL7_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DL7_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL8_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL8 Playback\00", [19 x i8] zeroinitializer }, align 32
@DL8_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.78 }], [20 x i8] zeroinitializer }, align 32
@DL8_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DL8_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL10_FE\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DL10 Playback\00", [18 x i8] zeroinitializer }, align 32
@DL10_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.79 }], [20 x i8] zeroinitializer }, align 32
@DL10_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DL10_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_hdmitx_dptx_playback_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8195_hdmitx_dptx_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL11_FE\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DL11 Playback\00", [18 x i8] zeroinitializer }, align 32
@DL11_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.83 }], [20 x i8] zeroinitializer }, align 32
@DL11_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DL11_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL1_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL1 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL1_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.84 }], [20 x i8] zeroinitializer }, align 32
@UL1_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL1_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL2_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL2 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL2_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.85 }], [20 x i8] zeroinitializer }, align 32
@UL2_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL2_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_capture_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @mt8195_capture_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL3_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL3 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL3_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.89 }], [20 x i8] zeroinitializer }, align 32
@UL3_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL3_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL4_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL4 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL4_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.90 }], [20 x i8] zeroinitializer }, align 32
@UL4_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL4_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL5_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL5 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL5_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.91 }], [20 x i8] zeroinitializer }, align 32
@UL5_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL5_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL6_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL6 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL6_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.92 }], [20 x i8] zeroinitializer }, align 32
@UL6_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL6_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL8_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL8 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL8_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.93 }], [20 x i8] zeroinitializer }, align 32
@UL8_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL8_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UL9_FE\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"UL9 Capture\00", [20 x i8] zeroinitializer }, align 32
@UL9_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.94 }], [20 x i8] zeroinitializer }, align 32
@UL9_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL9_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL10_FE\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UL10 Capture\00", [19 x i8] zeroinitializer }, align 32
@UL10_FE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.95 }], [20 x i8] zeroinitializer }, align 32
@UL10_FE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@UL10_FE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DL_SRC_BE\00", [22 x i8] zeroinitializer }, align 32
@DL_SRC_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.96 }], [20 x i8] zeroinitializer }, align 32
@DL_SRC_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.97, ptr null, ptr @.str.98 }], [20 x i8] zeroinitializer }, align 32
@DL_SRC_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@DPTX_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.110 }], [20 x i8] zeroinitializer }, align 32
@DPTX_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@DPTX_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_dptx_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8195_dptx_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ETDM1_IN_BE\00", [20 x i8] zeroinitializer }, align 32
@ETDM1_IN_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.111 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_IN_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_IN_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@ETDM2_IN_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.112 }], [20 x i8] zeroinitializer }, align 32
@ETDM2_IN_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@ETDM2_IN_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_rt5682_etdm_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8195_rt5682_etdm_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ETDM1_OUT_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.130 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_OUT_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@ETDM1_OUT_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ETDM2_OUT_BE\00", [19 x i8] zeroinitializer }, align 32
@ETDM2_OUT_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.131 }], [20 x i8] zeroinitializer }, align 32
@ETDM2_OUT_BE_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.132, ptr null, ptr @.str.133 }, %struct.snd_soc_dai_link_component { ptr @.str.134, ptr null, ptr @.str.133 }], [40 x i8] zeroinitializer }, align 32
@ETDM2_OUT_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_rt1011_etdm_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @mt8195_rt1011_etdm_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ETDM3_OUT_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.139 }], [20 x i8] zeroinitializer }, align 32
@ETDM3_OUT_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@ETDM3_OUT_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCM1_BE\00", [24 x i8] zeroinitializer }, align 32
@PCM1_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.140 }], [20 x i8] zeroinitializer }, align 32
@PCM1_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.68, ptr null, ptr @.str.69 }], [20 x i8] zeroinitializer }, align 32
@PCM1_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UL_SRC1_BE\00", [21 x i8] zeroinitializer }, align 32
@UL_SRC1_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.141 }], [20 x i8] zeroinitializer }, align 32
@UL_SRC1_BE_codecs = internal global { [2 x %struct.snd_soc_dai_link_component], [40 x i8] } { [2 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.97, ptr null, ptr @.str.98 }, %struct.snd_soc_dai_link_component { ptr @.str.142, ptr null, ptr @.str.143 }], [40 x i8] zeroinitializer }, align 32
@UL_SRC1_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"UL_SRC2_BE\00", [21 x i8] zeroinitializer }, align 32
@UL_SRC2_BE_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.144 }], [20 x i8] zeroinitializer }, align 32
@UL_SRC2_BE_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.97, ptr null, ptr @.str.145 }], [20 x i8] zeroinitializer }, align 32
@UL_SRC2_BE_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@mt8195_mt6359_rt1011_rt5682_dai_links = internal global { [26 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [760 x i8] } { [26 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.28, ptr @.str.29, ptr @DL2_FE_cpus, i32 1, ptr @DL2_FE_codecs, i32 1, ptr @DL2_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.30, ptr @.str.31, ptr @DL3_FE_cpus, i32 1, ptr @DL3_FE_codecs, i32 1, ptr @DL3_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.32, ptr @.str.33, ptr @DL6_FE_cpus, i32 1, ptr @DL6_FE_codecs, i32 1, ptr @DL6_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.34, ptr @.str.35, ptr @DL7_FE_cpus, i32 1, ptr @DL7_FE_codecs, i32 1, ptr @DL7_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.36, ptr @.str.37, ptr @DL8_FE_cpus, i32 1, ptr @DL8_FE_codecs, i32 1, ptr @DL8_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.38, ptr @.str.39, ptr @DL10_FE_cpus, i32 1, ptr @DL10_FE_codecs, i32 1, ptr @DL10_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_hdmitx_dptx_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.40, ptr @.str.41, ptr @DL11_FE_cpus, i32 1, ptr @DL11_FE_codecs, i32 1, ptr @DL11_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_playback_ops, ptr null, i8 0, i8 -96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.42, ptr @.str.43, ptr @UL1_FE_cpus, i32 1, ptr @UL1_FE_codecs, i32 1, ptr @UL1_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.44, ptr @.str.45, ptr @UL2_FE_cpus, i32 1, ptr @UL2_FE_codecs, i32 1, ptr @UL2_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.46, ptr @.str.47, ptr @UL3_FE_cpus, i32 1, ptr @UL3_FE_codecs, i32 1, ptr @UL3_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.48, ptr @.str.49, ptr @UL4_FE_cpus, i32 1, ptr @UL4_FE_codecs, i32 1, ptr @UL4_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.50, ptr @.str.51, ptr @UL5_FE_cpus, i32 1, ptr @UL5_FE_codecs, i32 1, ptr @UL5_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.52, ptr @.str.53, ptr @UL6_FE_cpus, i32 1, ptr @UL6_FE_codecs, i32 1, ptr @UL6_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.54, ptr @.str.55, ptr @UL8_FE_cpus, i32 1, ptr @UL8_FE_codecs, i32 1, ptr @UL8_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.56, ptr @.str.57, ptr @UL9_FE_cpus, i32 1, ptr @UL9_FE_codecs, i32 1, ptr @UL9_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.58, ptr @.str.59, ptr @UL10_FE_cpus, i32 1, ptr @UL10_FE_codecs, i32 1, ptr @UL10_FE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] [i32 1, i32 1], ptr null, ptr null, ptr null, ptr @mt8195_capture_ops, ptr null, i8 0, i8 -64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.60, ptr null, ptr @DL_SRC_BE_cpus, i32 1, ptr @DL_SRC_BE_codecs, i32 1, ptr @DL_SRC_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr @mt8195_mt6359_init, ptr null, ptr null, ptr null, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.12, ptr null, ptr @DPTX_BE_cpus, i32 1, ptr @DPTX_BE_codecs, i32 1, ptr @DPTX_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8195_dptx_hw_params_fixup, ptr @mt8195_dptx_ops, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.61, ptr null, ptr @ETDM1_IN_BE_cpus, i32 1, ptr @ETDM1_IN_BE_codecs, i32 1, ptr @ETDM1_IN_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.18, ptr null, ptr @ETDM2_IN_BE_cpus, i32 1, ptr @ETDM2_IN_BE_codecs, i32 1, ptr @ETDM2_IN_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr @mt8195_rt5682_init, ptr null, ptr @mt8195_etdm_hw_params_fixup, ptr @mt8195_rt5682_etdm_ops, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.17, ptr null, ptr @ETDM1_OUT_BE_cpus, i32 1, ptr @ETDM1_OUT_BE_codecs, i32 1, ptr @ETDM1_OUT_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8195_etdm_hw_params_fixup, ptr @mt8195_rt5682_etdm_ops, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.62, ptr null, ptr @ETDM2_OUT_BE_cpus, i32 1, ptr @ETDM2_OUT_BE_codecs, i32 2, ptr @ETDM2_OUT_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @mt8195_etdm_hw_params_fixup, ptr @mt8195_rt1011_etdm_ops, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.15, ptr null, ptr @ETDM3_OUT_BE_cpus, i32 1, ptr @ETDM3_OUT_BE_codecs, i32 1, ptr @ETDM3_OUT_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.63, ptr null, ptr @PCM1_BE_cpus, i32 1, ptr @PCM1_BE_codecs, i32 1, ptr @PCM1_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.64, ptr null, ptr @UL_SRC1_BE_cpus, i32 1, ptr @UL_SRC1_BE_codecs, i32 2, ptr @UL_SRC1_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.65, ptr null, ptr @UL_SRC2_BE_cpus, i32 1, ptr @UL_SRC2_BE_codecs, i32 1, ptr @UL_SRC2_BE_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i8 64, i8 0, %struct.snd_soc_dobj zeroinitializer }], [760 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.channels = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2], [28 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_playback_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_playback_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_playback_startup.channels, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_playback_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 508, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hw_constraint_list rate failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8195_playback_startup\00", [40 x i8] zeroinitializer }, align 32
@mt8195_playback_startup._entry_ptr = internal global ptr @mt8195_playback_startup._entry, section ".printk_index", align 4
@mt8195_playback_startup._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.4, i32 516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"hw_constraint_list channel failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mt8195_playback_startup._entry_ptr.74 = internal global ptr @mt8195_playback_startup._entry.72, section ".printk_index", align 4
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL6\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL7\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL8\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL10\00", [27 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.channels = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 4, i32 6, i32 8], [16 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_hdmitx_dptx_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_hdmitx_dptx_startup.channels, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.80, ptr @.str.4, i32 403, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8195_hdmitx_dptx_startup\00", [37 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup._entry_ptr = internal global ptr @mt8195_hdmitx_dptx_startup._entry, section ".printk_index", align 4
@mt8195_hdmitx_dptx_startup._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.80, ptr @.str.4, i32 411, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8195_hdmitx_dptx_startup._entry_ptr.82 = internal global ptr @mt8195_hdmitx_dptx_startup._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL11\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.rates = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 48000], [28 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.channels = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 2], [24 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_capture_startup.rates, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_capture_startup.constraints_channels = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @mt8195_capture_startup.channels, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mt8195_capture_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.86, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt8195_capture_startup\00", [41 x i8] zeroinitializer }, align 32
@mt8195_capture_startup._entry_ptr = internal global ptr @mt8195_capture_startup._entry, section ".printk_index", align 4
@mt8195_capture_startup._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.86, ptr @.str.4, i32 562, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8195_capture_startup._entry_ptr.88 = internal global ptr @mt8195_capture_startup._entry.87, section ".printk_index", align 4
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL4\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL5\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL6\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL8\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL9\00", [28 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UL10\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DL_SRC\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6359-sound\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.4, ptr @.str.101, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt8195_mt6359_mtkaif_calibration\00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s(), start\0A\00", [19 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.100, ptr @.str.4, i32 181, ptr @.str.103, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s() Cannot find topckgen controller\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry_ptr = internal global ptr @mt8195_mt6359_mtkaif_calibration._entry, section ".printk_index", align 4
@mt8195_mt6359_mtkaif_calibration._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.100, ptr @.str.4, i32 229, ptr @.str.103, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s(), test fail, cycle_1 %d, cycle_2 %d, cycle_3 %d, monitor 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry_ptr.106 = internal global ptr @mt8195_mt6359_mtkaif_calibration._entry.104, section ".printk_index", align 4
@mt8195_mt6359_mtkaif_calibration._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.100, ptr @.str.4, i32 305, ptr @.str.103, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s(), end, calibration ok %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mt8195_mt6359_mtkaif_calibration._entry_ptr.109 = internal global ptr @mt8195_mt6359_mtkaif_calibration._entry.107, section ".printk_index", align 4
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DPTX\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ETDM1_IN\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ETDM2_IN\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@mt8195_rt5682_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 346, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Headset Jack creation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt8195_rt5682_init\00", [45 x i8] zeroinitializer }, align 32
@mt8195_rt5682_init._entry_ptr = internal global ptr @mt8195_rt5682_init._entry, section ".printk_index", align 4
@mt8195_rt5682_init._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.4, i32 357, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headset Jack set failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mt8195_rt5682_init._entry_ptr.118 = internal global ptr @mt8195_rt5682_init._entry.116, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.4, i32 79, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid bit width: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt8195_rt5682_etdm_hw_params\00", [35 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr = internal global ptr @mt8195_rt5682_etdm_hw_params._entry, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.4, i32 85, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set tdm slot\0A\00", [40 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr.123 = internal global ptr @mt8195_rt5682_etdm_hw_params._entry.121, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.4, i32 92, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to set pll\0A\00", [45 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr.126 = internal global ptr @mt8195_rt5682_etdm_hw_params._entry.124, section ".printk_index", align 4
@mt8195_rt5682_etdm_hw_params._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.120, ptr @.str.4, i32 99, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to set sysclk\0A\00", [42 x i8] zeroinitializer }, align 32
@mt8195_rt5682_etdm_hw_params._entry_ptr.129 = internal global ptr @mt8195_rt5682_etdm_hw_params._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM1_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM2_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1011.2-0038\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt1011-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt1011.2-0039\00", [18 x i8] zeroinitializer }, align 32
@mt8195_rt1011_etdm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"codec_dai clock not set\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt8195_rt1011_etdm_hw_params\00", [35 x i8] zeroinitializer }, align 32
@mt8195_rt1011_etdm_hw_params._entry_ptr = internal global ptr @mt8195_rt1011_etdm_hw_params._entry, section ".printk_index", align 4
@mt8195_rt1011_etdm_hw_params._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mt8195_rt1011_etdm_hw_params._entry_ptr.138 = internal global ptr @mt8195_rt1011_etdm_hw_params._entry.137, section ".printk_index", align 4
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETDM3_OUT\00", [22 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCM1\00", [27 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL_SRC1\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic-codec\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dmic-hifi\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL_SRC2\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6359-snd-codec-aif2\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Speaker Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Speaker\00", [19 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Speaker Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Speaker\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headphone Jack Switch\00", [42 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Mic Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@mt8195_mt6359_rt1011_rt5682_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left SPO\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right SPO\00", [22 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1P\00", [27 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DP Jack\00", [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI Jack\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.164 = private unnamed_addr constant [35 x i8] c"mt8195_mt6359_rt1011_rt5682_driver\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1181, i32 31 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1183, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant [37 x i8] c"mt8195_mt6359_rt1011_rt5682_dt_match\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1170, i32 34 }
@___asan_gen_.173 = private unnamed_addr constant [35 x i8] c"mt8195_mt6359_rt1011_rt5682_pm_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1176, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant [37 x i8] c"mt8195_mt6359_rt1011_rt5682_soc_card\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1077, i32 28 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1103, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1105, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1110, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1118, i32 7 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1120, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1124, i32 48 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1126, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1132, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1134, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1138, i32 34 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1141, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1143, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1150, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1151, i32 30 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1153, i32 15 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1153, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1155, i32 15 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1155, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1078, i32 10 }
@___asan_gen_.251 = private unnamed_addr constant [16 x i8] c"rt1011_amp_conf\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1066, i32 34 }
@___asan_gen_.254 = private unnamed_addr constant [37 x i8] c"mt8195_mt6359_rt1011_rt5682_controls\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 59, i32 38 }
@___asan_gen_.257 = private unnamed_addr constant [35 x i8] c"mt8195_mt6359_rt1011_rt5682_routes\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 49, i32 40 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 597, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 602, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 605, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 786, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 787, i32 18 }
@___asan_gen_.281 = private unnamed_addr constant [12 x i8] c"DL2_FE_cpus\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [14 x i8] c"DL2_FE_codecs\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"DL2_FE_platforms\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c"mt8195_playback_ops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 523, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 798, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 799, i32 18 }
@___asan_gen_.299 = private unnamed_addr constant [12 x i8] c"DL3_FE_cpus\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [14 x i8] c"DL3_FE_codecs\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"DL3_FE_platforms\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 810, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 811, i32 18 }
@___asan_gen_.314 = private unnamed_addr constant [12 x i8] c"DL6_FE_cpus\00", align 1
@___asan_gen_.317 = private unnamed_addr constant [14 x i8] c"DL6_FE_codecs\00", align 1
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"DL6_FE_platforms\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 822, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 823, i32 18 }
@___asan_gen_.329 = private unnamed_addr constant [12 x i8] c"DL7_FE_cpus\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [14 x i8] c"DL7_FE_codecs\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"DL7_FE_platforms\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 833, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 834, i32 18 }
@___asan_gen_.344 = private unnamed_addr constant [12 x i8] c"DL8_FE_cpus\00", align 1
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"DL8_FE_codecs\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"DL8_FE_platforms\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 845, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 846, i32 18 }
@___asan_gen_.359 = private unnamed_addr constant [13 x i8] c"DL10_FE_cpus\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [15 x i8] c"DL10_FE_codecs\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [18 x i8] c"DL10_FE_platforms\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [32 x i8] c"mt8195_hdmitx_dptx_playback_ops\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 418, i32 33 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 857, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 858, i32 18 }
@___asan_gen_.377 = private unnamed_addr constant [13 x i8] c"DL11_FE_cpus\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [15 x i8] c"DL11_FE_codecs\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [18 x i8] c"DL11_FE_platforms\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 869, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 870, i32 18 }
@___asan_gen_.392 = private unnamed_addr constant [12 x i8] c"UL1_FE_cpus\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [14 x i8] c"UL1_FE_codecs\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"UL1_FE_platforms\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 880, i32 11 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 881, i32 18 }
@___asan_gen_.407 = private unnamed_addr constant [12 x i8] c"UL2_FE_cpus\00", align 1
@___asan_gen_.410 = private unnamed_addr constant [14 x i8] c"UL2_FE_codecs\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [17 x i8] c"UL2_FE_platforms\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [19 x i8] c"mt8195_capture_ops\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 569, i32 33 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 892, i32 11 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 893, i32 18 }
@___asan_gen_.425 = private unnamed_addr constant [12 x i8] c"UL3_FE_cpus\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [14 x i8] c"UL3_FE_codecs\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [17 x i8] c"UL3_FE_platforms\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 904, i32 11 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 905, i32 18 }
@___asan_gen_.440 = private unnamed_addr constant [12 x i8] c"UL4_FE_cpus\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [14 x i8] c"UL4_FE_codecs\00", align 1
@___asan_gen_.446 = private unnamed_addr constant [17 x i8] c"UL4_FE_platforms\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 916, i32 11 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 917, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant [12 x i8] c"UL5_FE_cpus\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [14 x i8] c"UL5_FE_codecs\00", align 1
@___asan_gen_.461 = private unnamed_addr constant [17 x i8] c"UL5_FE_platforms\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 928, i32 11 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 929, i32 18 }
@___asan_gen_.470 = private unnamed_addr constant [12 x i8] c"UL6_FE_cpus\00", align 1
@___asan_gen_.473 = private unnamed_addr constant [14 x i8] c"UL6_FE_codecs\00", align 1
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"UL6_FE_platforms\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 939, i32 11 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 940, i32 18 }
@___asan_gen_.485 = private unnamed_addr constant [12 x i8] c"UL8_FE_cpus\00", align 1
@___asan_gen_.488 = private unnamed_addr constant [14 x i8] c"UL8_FE_codecs\00", align 1
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"UL8_FE_platforms\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 951, i32 11 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 952, i32 18 }
@___asan_gen_.500 = private unnamed_addr constant [12 x i8] c"UL9_FE_cpus\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [14 x i8] c"UL9_FE_codecs\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"UL9_FE_platforms\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 963, i32 11 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 964, i32 18 }
@___asan_gen_.515 = private unnamed_addr constant [13 x i8] c"UL10_FE_cpus\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [15 x i8] c"UL10_FE_codecs\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [18 x i8] c"UL10_FE_platforms\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 976, i32 11 }
@___asan_gen_.527 = private unnamed_addr constant [15 x i8] c"DL_SRC_BE_cpus\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"DL_SRC_BE_codecs\00", align 1
@___asan_gen_.533 = private unnamed_addr constant [20 x i8] c"DL_SRC_BE_platforms\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [13 x i8] c"DPTX_BE_cpus\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [15 x i8] c"DPTX_BE_codecs\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [18 x i8] c"DPTX_BE_platforms\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [16 x i8] c"mt8195_dptx_ops\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 432, i32 33 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 991, i32 11 }
@___asan_gen_.551 = private unnamed_addr constant [17 x i8] c"ETDM1_IN_BE_cpus\00", align 1
@___asan_gen_.554 = private unnamed_addr constant [19 x i8] c"ETDM1_IN_BE_codecs\00", align 1
@___asan_gen_.557 = private unnamed_addr constant [22 x i8] c"ETDM1_IN_BE_platforms\00", align 1
@___asan_gen_.560 = private unnamed_addr constant [17 x i8] c"ETDM2_IN_BE_cpus\00", align 1
@___asan_gen_.563 = private unnamed_addr constant [19 x i8] c"ETDM2_IN_BE_codecs\00", align 1
@___asan_gen_.566 = private unnamed_addr constant [22 x i8] c"ETDM2_IN_BE_platforms\00", align 1
@___asan_gen_.569 = private unnamed_addr constant [23 x i8] c"mt8195_rt5682_etdm_ops\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 107, i32 33 }
@___asan_gen_.572 = private unnamed_addr constant [18 x i8] c"ETDM1_OUT_BE_cpus\00", align 1
@___asan_gen_.575 = private unnamed_addr constant [20 x i8] c"ETDM1_OUT_BE_codecs\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [23 x i8] c"ETDM1_OUT_BE_platforms\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1023, i32 11 }
@___asan_gen_.584 = private unnamed_addr constant [18 x i8] c"ETDM2_OUT_BE_cpus\00", align 1
@___asan_gen_.587 = private unnamed_addr constant [20 x i8] c"ETDM2_OUT_BE_codecs\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [23 x i8] c"ETDM2_OUT_BE_platforms\00", align 1
@___asan_gen_.593 = private unnamed_addr constant [23 x i8] c"mt8195_rt1011_etdm_ops\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 140, i32 33 }
@___asan_gen_.596 = private unnamed_addr constant [18 x i8] c"ETDM3_OUT_BE_cpus\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [20 x i8] c"ETDM3_OUT_BE_codecs\00", align 1
@___asan_gen_.602 = private unnamed_addr constant [23 x i8] c"ETDM3_OUT_BE_platforms\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1043, i32 11 }
@___asan_gen_.608 = private unnamed_addr constant [13 x i8] c"PCM1_BE_cpus\00", align 1
@___asan_gen_.611 = private unnamed_addr constant [15 x i8] c"PCM1_BE_codecs\00", align 1
@___asan_gen_.614 = private unnamed_addr constant [18 x i8] c"PCM1_BE_platforms\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1053, i32 11 }
@___asan_gen_.620 = private unnamed_addr constant [16 x i8] c"UL_SRC1_BE_cpus\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [18 x i8] c"UL_SRC1_BE_codecs\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [21 x i8] c"UL_SRC1_BE_platforms\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1059, i32 11 }
@___asan_gen_.632 = private unnamed_addr constant [16 x i8] c"UL_SRC2_BE_cpus\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [18 x i8] c"UL_SRC2_BE_codecs\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [21 x i8] c"UL_SRC2_BE_platforms\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [38 x i8] c"mt8195_mt6359_rt1011_rt5682_dai_links\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 783, i32 32 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 644, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 483, i32 28 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 486, i32 28 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 489, i32 49 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 494, i32 49 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 508, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 516, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 649, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 654, i32 1 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 659, i32 1 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 664, i32 1 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 669, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 378, i32 28 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 381, i32 28 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 384, i32 49 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 389, i32 49 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 403, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 411, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 674, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 679, i32 1 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 684, i32 1 }
@___asan_gen_.725 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 529, i32 28 }
@___asan_gen_.728 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 532, i32 28 }
@___asan_gen_.731 = private unnamed_addr constant [18 x i8] c"constraints_rates\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 535, i32 49 }
@___asan_gen_.734 = private unnamed_addr constant [21 x i8] c"constraints_channels\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 540, i32 49 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 554, i32 3 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 562, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 689, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 694, i32 1 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 699, i32 1 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 704, i32 1 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 709, i32 1 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 714, i32 1 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 719, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 725, i32 1 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 150, i32 30 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 169, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 180, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 227, i32 5 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 304, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 731, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 736, i32 1 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 741, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 340, i32 41 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 346, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 357, i32 3 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 79, i32 3 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 85, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 92, i32 3 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 99, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 746, i32 1 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 751, i32 1 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 125, i32 4 }
@___asan_gen_.884 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 133, i32 4 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 759, i32 1 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 764, i32 1 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 769, i32 1 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 777, i32 1 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1069, i32 18 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 1073, i32 18 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 60, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 61, i32 2 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 62, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 63, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant [36 x i8] c"mt8195_mt6359_rt1011_rt5682_widgets\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 42, i32 1 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 51, i32 26 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 52, i32 27 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 54, i32 28 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 55, i32 28 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 56, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 444, i32 41 }
@___asan_gen_.959 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.960 = private constant [59 x i8] c"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.960, i32 460, i32 41 }
@llvm.compiler.used = appending global [293 x ptr] [ptr @__UNIQUE_ID_alias306, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_mt8195_mt6359_rt1011_rt5682_driver_exit, ptr @__initcall__kmod_mt8195_mt6359_rt1011_rt5682__301_1192_mt8195_mt6359_rt1011_rt5682_driver_init6, ptr @mt8195_capture_startup._entry, ptr @mt8195_capture_startup._entry.87, ptr @mt8195_capture_startup._entry_ptr, ptr @mt8195_capture_startup._entry_ptr.88, ptr @mt8195_hdmitx_dptx_startup._entry, ptr @mt8195_hdmitx_dptx_startup._entry.81, ptr @mt8195_hdmitx_dptx_startup._entry_ptr, ptr @mt8195_hdmitx_dptx_startup._entry_ptr.82, ptr @mt8195_mt6359_mtkaif_calibration._entry, ptr @mt8195_mt6359_mtkaif_calibration._entry.104, ptr @mt8195_mt6359_mtkaif_calibration._entry.107, ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr, ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.106, ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.109, ptr @mt8195_mt6359_rt1011_rt5682_dev_probe._entry, ptr @mt8195_mt6359_rt1011_rt5682_dev_probe._entry_ptr, ptr @mt8195_mt6359_rt1011_rt5682_driver_exit, ptr @mt8195_playback_startup._entry, ptr @mt8195_playback_startup._entry.72, ptr @mt8195_playback_startup._entry_ptr, ptr @mt8195_playback_startup._entry_ptr.74, ptr @mt8195_rt1011_etdm_hw_params._entry, ptr @mt8195_rt1011_etdm_hw_params._entry.137, ptr @mt8195_rt1011_etdm_hw_params._entry_ptr, ptr @mt8195_rt1011_etdm_hw_params._entry_ptr.138, ptr @mt8195_rt5682_etdm_hw_params._entry, ptr @mt8195_rt5682_etdm_hw_params._entry.121, ptr @mt8195_rt5682_etdm_hw_params._entry.124, ptr @mt8195_rt5682_etdm_hw_params._entry.127, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.123, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.126, ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.129, ptr @mt8195_rt5682_init._entry, ptr @mt8195_rt5682_init._entry.116, ptr @mt8195_rt5682_init._entry_ptr, ptr @mt8195_rt5682_init._entry_ptr.118, ptr @mt8195_set_bias_level_post._entry, ptr @mt8195_set_bias_level_post._entry_ptr, ptr @mt8195_mt6359_rt1011_rt5682_driver, ptr @.str, ptr @mt8195_mt6359_rt1011_rt5682_dt_match, ptr @mt8195_mt6359_rt1011_rt5682_pm_ops, ptr @mt8195_mt6359_rt1011_rt5682_soc_card, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rt1011_amp_conf, ptr @mt8195_mt6359_rt1011_rt5682_controls, ptr @mt8195_mt6359_rt1011_rt5682_routes, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @DL2_FE_cpus, ptr @DL2_FE_codecs, ptr @DL2_FE_platforms, ptr @mt8195_playback_ops, ptr @.str.30, ptr @.str.31, ptr @DL3_FE_cpus, ptr @DL3_FE_codecs, ptr @DL3_FE_platforms, ptr @.str.32, ptr @.str.33, ptr @DL6_FE_cpus, ptr @DL6_FE_codecs, ptr @DL6_FE_platforms, ptr @.str.34, ptr @.str.35, ptr @DL7_FE_cpus, ptr @DL7_FE_codecs, ptr @DL7_FE_platforms, ptr @.str.36, ptr @.str.37, ptr @DL8_FE_cpus, ptr @DL8_FE_codecs, ptr @DL8_FE_platforms, ptr @.str.38, ptr @.str.39, ptr @DL10_FE_cpus, ptr @DL10_FE_codecs, ptr @DL10_FE_platforms, ptr @mt8195_hdmitx_dptx_playback_ops, ptr @.str.40, ptr @.str.41, ptr @DL11_FE_cpus, ptr @DL11_FE_codecs, ptr @DL11_FE_platforms, ptr @.str.42, ptr @.str.43, ptr @UL1_FE_cpus, ptr @UL1_FE_codecs, ptr @UL1_FE_platforms, ptr @.str.44, ptr @.str.45, ptr @UL2_FE_cpus, ptr @UL2_FE_codecs, ptr @UL2_FE_platforms, ptr @mt8195_capture_ops, ptr @.str.46, ptr @.str.47, ptr @UL3_FE_cpus, ptr @UL3_FE_codecs, ptr @UL3_FE_platforms, ptr @.str.48, ptr @.str.49, ptr @UL4_FE_cpus, ptr @UL4_FE_codecs, ptr @UL4_FE_platforms, ptr @.str.50, ptr @.str.51, ptr @UL5_FE_cpus, ptr @UL5_FE_codecs, ptr @UL5_FE_platforms, ptr @.str.52, ptr @.str.53, ptr @UL6_FE_cpus, ptr @UL6_FE_codecs, ptr @UL6_FE_platforms, ptr @.str.54, ptr @.str.55, ptr @UL8_FE_cpus, ptr @UL8_FE_codecs, ptr @UL8_FE_platforms, ptr @.str.56, ptr @.str.57, ptr @UL9_FE_cpus, ptr @UL9_FE_codecs, ptr @UL9_FE_platforms, ptr @.str.58, ptr @.str.59, ptr @UL10_FE_cpus, ptr @UL10_FE_codecs, ptr @UL10_FE_platforms, ptr @.str.60, ptr @DL_SRC_BE_cpus, ptr @DL_SRC_BE_codecs, ptr @DL_SRC_BE_platforms, ptr @DPTX_BE_cpus, ptr @DPTX_BE_codecs, ptr @DPTX_BE_platforms, ptr @mt8195_dptx_ops, ptr @.str.61, ptr @ETDM1_IN_BE_cpus, ptr @ETDM1_IN_BE_codecs, ptr @ETDM1_IN_BE_platforms, ptr @ETDM2_IN_BE_cpus, ptr @ETDM2_IN_BE_codecs, ptr @ETDM2_IN_BE_platforms, ptr @mt8195_rt5682_etdm_ops, ptr @ETDM1_OUT_BE_cpus, ptr @ETDM1_OUT_BE_codecs, ptr @ETDM1_OUT_BE_platforms, ptr @.str.62, ptr @ETDM2_OUT_BE_cpus, ptr @ETDM2_OUT_BE_codecs, ptr @ETDM2_OUT_BE_platforms, ptr @mt8195_rt1011_etdm_ops, ptr @ETDM3_OUT_BE_cpus, ptr @ETDM3_OUT_BE_codecs, ptr @ETDM3_OUT_BE_platforms, ptr @.str.63, ptr @PCM1_BE_cpus, ptr @PCM1_BE_codecs, ptr @PCM1_BE_platforms, ptr @.str.64, ptr @UL_SRC1_BE_cpus, ptr @UL_SRC1_BE_codecs, ptr @UL_SRC1_BE_platforms, ptr @.str.65, ptr @UL_SRC2_BE_cpus, ptr @UL_SRC2_BE_codecs, ptr @UL_SRC2_BE_platforms, ptr @mt8195_mt6359_rt1011_rt5682_dai_links, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @mt8195_playback_startup.rates, ptr @mt8195_playback_startup.channels, ptr @mt8195_playback_startup.constraints_rates, ptr @mt8195_playback_startup.constraints_channels, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @mt8195_hdmitx_dptx_startup.rates, ptr @mt8195_hdmitx_dptx_startup.channels, ptr @mt8195_hdmitx_dptx_startup.constraints_rates, ptr @mt8195_hdmitx_dptx_startup.constraints_channels, ptr @.str.80, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @mt8195_capture_startup.rates, ptr @mt8195_capture_startup.channels, ptr @mt8195_capture_startup.constraints_rates, ptr @mt8195_capture_startup.constraints_channels, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @mt8195_mt6359_rt1011_rt5682_widgets, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163], section "llvm.metadata"
@0 = internal global [266 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_soc_card to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_amp_conf to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_routes to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_set_bias_level_post._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL2_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL2_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL2_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL3_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL3_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL3_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL6_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL6_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL6_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL7_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL7_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL7_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL8_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL8_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL8_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL10_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL10_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL10_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_playback_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL11_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL11_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL11_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL1_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL1_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL1_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL2_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL2_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL2_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL3_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL3_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL3_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL4_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL4_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL4_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL5_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL5_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL5_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL6_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL6_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL6_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL8_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL8_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL8_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL9_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL9_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL9_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL10_FE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL10_FE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL10_FE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL_SRC_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL_SRC_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DL_SRC_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DPTX_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DPTX_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DPTX_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_dptx_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_IN_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_IN_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_IN_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_IN_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_IN_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_IN_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_OUT_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_OUT_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM1_OUT_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_OUT_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_OUT_BE_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM2_OUT_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt1011_etdm_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM3_OUT_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM3_OUT_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ETDM3_OUT_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCM1_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCM1_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCM1_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC1_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC1_BE_codecs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC1_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC2_BE_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC2_BE_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UL_SRC2_BE_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_dai_links to i32), i32 3016, i32 3776, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_playback_startup._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.channels to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_hdmitx_dptx_startup._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.rates to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.channels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup.constraints_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_capture_startup._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_mtkaif_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_mtkaif_calibration._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_mtkaif_calibration._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_init._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt5682_etdm_hw_params._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt1011_etdm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_rt1011_etdm_hw_params._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_mt6359_rt1011_rt5682_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_mt6359_rt1011_rt5682_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8195_mt6359_rt1011_rt5682_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8195_mt6359_rt1011_rt5682_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8195_mt6359_rt1011_rt5682_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_mt6359_rt1011_rt5682_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i187 = alloca %struct.of_phandle_args, align 4
  %args.i181 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1011_rt5682_soc_card, i32 0, i32 5), align 4
  %call = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull @mt8195_mt6359_rt1011_rt5682_soc_card, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @mt8195_mt6359_rt1011_rt5682_soc_card, align 4
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
  %call.i179 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179)
  %tobool.not.i = icmp eq i32 %call.i179, 0
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_rt1011_rt5682_dev_probe, %if.then21)) #8
          to label %cleanup [label %if.then21], !srcloc !459

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end26:                                         ; preds = %of_parse_phandle.exit
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i181) #8
  %8 = call ptr @memset(ptr %args.i181, i32 255, i32 72)
  %call.i182 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i181) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i183 = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i183, label %if.end.i184, label %if.end26.of_parse_phandle.exit186_crit_edge

if.end26.of_parse_phandle.exit186_crit_edge:      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit186

if.end.i184:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %args.i181 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i181, align 4
  br label %of_parse_phandle.exit186

of_parse_phandle.exit186:                         ; preds = %if.end.i184, %if.end26.of_parse_phandle.exit186_crit_edge
  %retval.0.i185 = phi ptr [ %10, %if.end.i184 ], [ null, %if.end26.of_parse_phandle.exit186_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i181) #8
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i187) #8
  %13 = call ptr @memset(ptr %args.i187, i32 255, i32 72)
  %call.i188 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i187) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool.not.i189 = icmp eq i32 %call.i188, 0
  br i1 %tobool.not.i189, label %if.end.i190, label %of_parse_phandle.exit186.of_parse_phandle.exit192_crit_edge

of_parse_phandle.exit186.of_parse_phandle.exit192_crit_edge: ; preds = %of_parse_phandle.exit186
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_parse_phandle.exit192

if.end.i190:                                      ; preds = %of_parse_phandle.exit186
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %args.i187 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i187, align 4
  br label %of_parse_phandle.exit192

of_parse_phandle.exit192:                         ; preds = %if.end.i190, %of_parse_phandle.exit186.of_parse_phandle.exit192_crit_edge
  %retval.0.i191 = phi ptr [ %15, %if.end.i190 ], [ null, %of_parse_phandle.exit186.of_parse_phandle.exit192_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i187) #8
  %16 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1011_rt5682_soc_card, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp198 = icmp sgt i32 %16, 0
  br i1 %cmp198, label %land.rhs.lr.ph, label %of_parse_phandle.exit192.for.end_crit_edge

of_parse_phandle.exit192.for.end_crit_edge:       ; preds = %of_parse_phandle.exit192
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %of_parse_phandle.exit192
  %cond = select i1 %tobool4.not, ptr @.str.20, ptr @.str.19
  %cond114 = select i1 %tobool4.not, ptr @.str.22, ptr @.str.21
  %tobool74.not = icmp eq ptr %retval.0.i191, null
  %tobool45.not = icmp eq ptr %retval.0.i185, null
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0199 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1011_rt5682_soc_card, i32 0, i32 24), align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 %i.0199
  %tobool34.not = icmp eq ptr %arrayidx, null
  br i1 %tobool34.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 %i.0199, i32 6
  %18 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platforms, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool36.not = icmp eq ptr %21, null
  br i1 %tobool36.not, label %if.then37, label %for.body.if.end40_crit_edge

for.body.if.end40_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %of_node39 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %of_node39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %5, ptr %of_node39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %for.body.if.end40_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call42 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(8) @.str.12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else69

if.then44:                                        ; preds = %if.end40
  br i1 %tobool45.not, label %do.body47, label %if.else

do.body47:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_rt1011_rt5682_dev_probe, %if.then59)) #8
          to label %for.inc [label %if.then59], !srcloc !459

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %for.inc

if.else:                                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 %i.0199, i32 4
  %25 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %codecs, align 4
  %of_node64 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %of_node64 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i185, ptr %of_node64, align 4
  %28 = load ptr, ptr %codecs, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 4
  %30 = load ptr, ptr %codecs, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.14, ptr %dai_name, align 4
  %init = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 %i.0199, i32 13
  %32 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mt8195_dptx_codec_init, ptr %init, align 4
  br label %for.inc

if.else69:                                        ; preds = %if.end40
  %call71 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(13) @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %if.then73, label %if.else102

if.then73:                                        ; preds = %if.else69
  br i1 %tobool74.not, label %do.body76, label %if.else93

do.body76:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_rt1011_rt5682_dev_probe, %if.then88)) #8
          to label %for.inc [label %if.then88], !srcloc !459

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.16) #8
  br label %for.inc

if.else93:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #10
  %codecs94 = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 %i.0199, i32 4
  %33 = ptrtoint ptr %codecs94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %codecs94, align 4
  %of_node95 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %of_node95 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i191, ptr %of_node95, align 4
  %36 = load ptr, ptr %codecs94, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %36, align 4
  %38 = load ptr, ptr %codecs94, align 4
  %dai_name99 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dai_name99 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.14, ptr %dai_name99, align 4
  %init100 = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 %i.0199, i32 13
  %40 = ptrtoint ptr %init100 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @mt8195_hdmi_codec_init, ptr %init100, align 4
  br label %for.inc

if.else102:                                       ; preds = %if.else69
  %call104 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(13) @.str.17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp eq i32 %call104, 0
  br i1 %cmp105, label %if.else102.if.then109_crit_edge, label %lor.lhs.false

if.else102.if.then109_crit_edge:                  ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

lor.lhs.false:                                    ; preds = %if.else102
  %call107 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull dereferenceable(12) @.str.18) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %lor.lhs.false.if.then109_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then109

if.then109:                                       ; preds = %lor.lhs.false.if.then109_crit_edge, %if.else102.if.then109_crit_edge
  %codecs111 = getelementptr %struct.snd_soc_dai_link, ptr %17, i32 %i.0199, i32 4
  %41 = ptrtoint ptr %codecs111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %codecs111, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %cond, ptr %42, align 4
  %44 = load ptr, ptr %codecs111, align 4
  %dai_name116 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dai_name116 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cond114, ptr %dai_name116, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then109, %lor.lhs.false.for.inc_crit_edge, %if.else93, %if.then88, %do.body76, %if.else, %if.then59, %do.body47
  %inc = add nuw nsw i32 %i.0199, 1
  %46 = load i32, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1011_rt5682_soc_card, i32 0, i32 25), align 4
  %cmp = icmp slt i32 %inc, %46
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %of_parse_phandle.exit192.for.end_crit_edge
  store ptr %call.i, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @mt8195_mt6359_rt1011_rt5682_soc_card, i32 0, i32 57), align 4
  %call121 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull @mt8195_mt6359_rt1011_rt5682_soc_card) #8
  call void @of_node_put(ptr noundef nonnull %5) #8
  call void @of_node_put(ptr noundef %retval.0.i185) #8
  call void @of_node_put(ptr noundef %retval.0.i191) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then21, %do.body16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call121, %for.end ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body16 ]
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
  %dp_jack = getelementptr inbounds %struct.mt8195_mt6359_rt1011_rt5682_priv, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.162, i32 noundef 4, ptr noundef %dp_jack, ptr noundef null, i32 noundef 0) #8
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
  %hdmi_jack = getelementptr inbounds %struct.mt8195_mt6359_rt1011_rt5682_priv, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.163, i32 noundef 4, ptr noundef %hdmi_jack, ptr noundef null, i32 noundef 0) #8
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
  %call2 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(14) @.str.20) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(15) @.str.19) #12
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
  %i2so1_mclk = getelementptr inbounds %struct.mt8195_mt6359_rt1011_rt5682_priv, ptr %3, i32 0, i32 3
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_set_bias_level_post, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !459

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug296, ptr noundef %12, ptr noundef nonnull @.str.25) #8
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %i2so1_mclk18 = getelementptr inbounds %struct.mt8195_mt6359_rt1011_rt5682_priv, ptr %3, i32 0, i32 3
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i58.ph) #11
  br label %cleanup

do.body27:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_set_bias_level_post, %if.then39)) #8
          to label %cleanup [label %if.then39], !srcloc !459

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  %dev40 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %17 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug297, ptr noundef %18, ptr noundef nonnull @.str.27) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_mt6359_init(ptr noundef %rtd) #2 align 64 {
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
  tail call void @mt6359_set_mtkaif_protocol(ptr noundef %7, i32 noundef 2) #8
  tail call fastcc void @mt8195_mt6359_mtkaif_calibration(ptr noundef %rtd)
  ret i32 0
}

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
  %call1 = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %rtd, ptr noundef nonnull @.str.99) #8
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
  %i2so1_mclk = getelementptr inbounds %struct.mt8195_mt6359_rt1011_rt5682_priv, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %i2so1_mclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %i2so1_mclk, align 4
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %call5 = tail call i32 @snd_soc_card_jack_new(ptr noundef %24, ptr noundef nonnull @.str.113, i32 noundef 30723, ptr noundef %11, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.114, i32 noundef %call5) #11
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.117, i32 noundef %call14) #11
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
  %.str.73.sink = phi ptr [ @.str.70, %entry.cleanup.sink.split_crit_edge ], [ @.str.73, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.73.sink) #11
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
  %.str.73.sink = phi ptr [ @.str.70, %entry.cleanup.sink.split_crit_edge ], [ @.str.73, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.73.sink) #11
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
  %.str.73.sink = phi ptr [ @.str.70, %entry.cleanup.sink.split_crit_edge ], [ @.str.73, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull %.str.73.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt6359_set_mtkaif_protocol(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt8195_mt6359_mtkaif_calibration(ptr noundef %rtd) unnamed_addr #2 align 64 {
entry:
  %monitor = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %rtd, ptr noundef nonnull @.str.99) #8
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
  %mtkaif_params = getelementptr inbounds %struct.mt8195_afe_private, ptr %13, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %monitor) #8
  %14 = ptrtoint ptr %monitor to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %monitor, align 4, !annotation !460
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_mt6359_mtkaif_calibration.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_mt6359_mtkaif_calibration, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_mt6359_mtkaif_calibration.__UNIQUE_ID_ddebug295, ptr noundef %16, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %17 = ptrtoint ptr %mtkaif_params to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %mtkaif_params, align 4
  %arrayidx7 = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 1, i32 0
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 2, i32 0
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx9, align 4
  %arrayidx7.1 = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %arrayidx7.1, align 4
  %arrayidx9.1 = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx9.1, align 4
  %arrayidx7.2 = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %arrayidx7.2, align 4
  %arrayidx9.2 = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %arrayidx9.2, align 4
  %topckgen = getelementptr inbounds %struct.mt8195_afe_private, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %topckgen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %topckgen, align 4
  %cmp.i = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %dev17 = getelementptr inbounds %struct.mtk_base_afe, ptr %11, i32 0, i32 1
  %26 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev17, align 4
  br i1 %cmp.i, label %do.end16, label %if.end18

do.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100) #11
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %27, i32 noundef 4) #8
  tail call void @mt6359_mtkaif_calibration_enable(ptr noundef %7) #8
  %28 = ptrtoint ptr %topckgen to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %topckgen, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 812, i32 noundef 65535, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %for.body26

for.body26:                                       ; preds = %for.inc102.for.body26_crit_edge, %if.end18
  %phase.036 = phi i32 [ 0, %if.end18 ], [ %inc103, %for.inc102.for.body26_crit_edge ]
  %mtkaif_calibration_ok.0.off035 = phi i1 [ true, %if.end18 ], [ %mtkaif_calibration_ok.1.off0, %for.inc102.for.body26_crit_edge ]
  %prev_cycle_3.034 = phi i32 [ -1, %if.end18 ], [ %prev_cycle_3.1, %for.inc102.for.body26_crit_edge ]
  %prev_cycle_2.033 = phi i32 [ -1, %if.end18 ], [ %prev_cycle_2.1, %for.inc102.for.body26_crit_edge ]
  %prev_cycle_1.032 = phi i32 [ -1, %if.end18 ], [ %prev_cycle_1.1, %for.inc102.for.body26_crit_edge ]
  %30 = phi i32 [ -1, %if.end18 ], [ %41, %for.inc102.for.body26_crit_edge ]
  %prev_cycle_1.11931 = phi i32 [ 0, %if.end18 ], [ %prev_cycle_1.117, %for.inc102.for.body26_crit_edge ]
  %31 = phi i32 [ -1, %if.end18 ], [ %42, %for.inc102.for.body26_crit_edge ]
  %prev_cycle_2.12330 = phi i32 [ 0, %if.end18 ], [ %prev_cycle_2.121, %for.inc102.for.body26_crit_edge ]
  %32 = phi i32 [ -1, %if.end18 ], [ %43, %for.inc102.for.body26_crit_edge ]
  %prev_cycle_3.12829 = phi i32 [ 0, %if.end18 ], [ %prev_cycle_3.126, %for.inc102.for.body26_crit_edge ]
  call void @mt6359_set_mtkaif_calibration_phase(ptr noundef %7, i32 noundef %phase.036, i32 noundef %phase.036, i32 noundef %phase.036) #8
  %33 = ptrtoint ptr %topckgen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %topckgen, align 4
  %call.i9 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 812, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %for.body26
  %test_done_1.0 = phi i32 [ 0, %for.body26 ], [ %and35, %while.body.while.cond_crit_edge ]
  %test_done_2.0 = phi i32 [ 0, %for.body26 ], [ %and37, %while.body.while.cond_crit_edge ]
  %test_done_3.0 = phi i32 [ 0, %for.body26 ], [ %and39, %while.body.while.cond_crit_edge ]
  %cycle_1.0 = phi i32 [ -1, %for.body26 ], [ %spec.select, %while.body.while.cond_crit_edge ]
  %cycle_2.0 = phi i32 [ -1, %for.body26 ], [ %cycle_2.1, %while.body.while.cond_crit_edge ]
  %cycle_3.0 = phi i32 [ -1, %for.body26 ], [ %cycle_3.1, %while.body.while.cond_crit_edge ]
  %counter.0 = phi i32 [ 0, %for.body26 ], [ %inc54, %while.body.while.cond_crit_edge ]
  %and = and i32 %test_done_2.0, %test_done_1.0
  %and29 = and i32 %and, %test_done_3.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %35 = ptrtoint ptr %topckgen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %topckgen, align 4
  %call34 = call i32 @regmap_read(ptr noundef %36, i32 noundef 816, ptr noundef nonnull %monitor) #8
  %37 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %monitor, align 4
  %shr = lshr i32 %38, 28
  %and35 = and i32 %shr, 1
  %shr36 = lshr i32 %38, 29
  %and37 = and i32 %shr36, 1
  %shr38 = lshr i32 %38, 30
  %and39 = and i32 %shr38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp40.not = icmp eq i32 %and35, 0
  %and42 = and i32 %38, 15
  %spec.select = select i1 %cmp40.not, i32 %cycle_1.0, i32 %and42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp44.not = icmp eq i32 %and37, 0
  %shr46 = lshr i32 %38, 4
  %and47 = and i32 %shr46, 15
  %cycle_2.1 = select i1 %cmp44.not, i32 %cycle_2.0, i32 %and47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp49.not = icmp eq i32 %and39, 0
  %shr51 = lshr i32 %38, 8
  %and52 = and i32 %shr51, 15
  %cycle_3.1 = select i1 %cmp49.not, i32 %cycle_3.0, i32 %and52
  %inc54 = add nuw nsw i32 %counter.0, 1
  %exitcond = icmp eq i32 %inc54, 10001
  br i1 %exitcond, label %do.end59, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end59:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.100, i32 noundef %spec.select, i32 noundef %cycle_2.1, i32 noundef %cycle_3.1, i32 noundef %38) #11
  br label %while.end

while.end:                                        ; preds = %do.end59, %while.cond.while.end_crit_edge
  %cycle_1.2 = phi i32 [ %spec.select, %do.end59 ], [ %cycle_1.0, %while.cond.while.end_crit_edge ]
  %cycle_2.2 = phi i32 [ %cycle_2.1, %do.end59 ], [ %cycle_2.0, %while.cond.while.end_crit_edge ]
  %cycle_3.2 = phi i32 [ %cycle_3.1, %do.end59 ], [ %cycle_3.0, %while.cond.while.end_crit_edge ]
  %mtkaif_calibration_ok.1.off0 = phi i1 [ false, %do.end59 ], [ %mtkaif_calibration_ok.0.off035, %while.cond.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase.036)
  %cmp62 = icmp eq i32 %phase.036, 0
  %prev_cycle_1.1 = select i1 %cmp62, i32 %cycle_1.2, i32 %prev_cycle_1.032
  %prev_cycle_2.1 = select i1 %cmp62, i32 %cycle_2.2, i32 %prev_cycle_2.033
  %prev_cycle_3.1 = select i1 %cmp62, i32 %cycle_3.2, i32 %prev_cycle_3.034
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_1.2, i32 %prev_cycle_1.1)
  %cmp65.not = icmp ne i32 %cycle_1.2, %prev_cycle_1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp67 = icmp slt i32 %30, 0
  %or.cond = select i1 %cmp65.not, i1 %cmp67, i1 false
  %sub = add nsw i32 %phase.036, -1
  %prev_cycle_1.117 = select i1 %or.cond, i32 %prev_cycle_1.1, i32 %prev_cycle_1.11931
  %41 = select i1 %or.cond, i32 %sub, i32 %30
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_2.2, i32 %prev_cycle_2.1)
  %cmp72.not = icmp ne i32 %cycle_2.2, %prev_cycle_2.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp75 = icmp slt i32 %31, 0
  %or.cond41 = select i1 %cmp72.not, i1 %cmp75, i1 false
  %prev_cycle_2.121 = select i1 %or.cond41, i32 %prev_cycle_2.1, i32 %prev_cycle_2.12330
  %42 = select i1 %or.cond41, i32 %sub, i32 %31
  call void @__sanitizer_cov_trace_cmp4(i32 %cycle_3.2, i32 %prev_cycle_3.1)
  %cmp81.not = icmp ne i32 %cycle_3.2, %prev_cycle_3.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp84 = icmp slt i32 %32, 0
  %or.cond42 = select i1 %cmp81.not, i1 %cmp84, i1 false
  %prev_cycle_3.126 = select i1 %or.cond42, i32 %prev_cycle_3.1, i32 %prev_cycle_3.12829
  %43 = select i1 %or.cond42, i32 %sub, i32 %32
  %44 = ptrtoint ptr %topckgen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %topckgen, align 4
  %call.i10 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 812, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %cmp93 = icmp sgt i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %cmp96 = icmp sgt i32 %42, -1
  %or.cond43 = select i1 %cmp93, i1 %cmp96, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp99 = icmp sgt i32 %43, -1
  %or.cond44 = select i1 %or.cond43, i1 %cmp99, i1 false
  br i1 %or.cond44, label %while.end.for.end104_crit_edge, label %for.inc102

while.end.for.end104_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

for.inc102:                                       ; preds = %while.end
  %inc103 = add nuw nsw i32 %phase.036, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %phase.036)
  %cmp24 = icmp ugt i32 %phase.036, 41
  %mtkaif_calibration_ok.0.off0.not = xor i1 %mtkaif_calibration_ok.1.off0, true
  %brmerge = select i1 %cmp24, i1 true, i1 %mtkaif_calibration_ok.0.off0.not
  br i1 %brmerge, label %for.inc102.for.end104_crit_edge, label %for.inc102.for.body26_crit_edge

for.inc102.for.body26_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.inc102.for.end104_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

for.end104:                                       ; preds = %for.inc102.for.end104_crit_edge, %while.end.for.end104_crit_edge
  %46 = call i32 @llvm.smax.i32(i32 %41, i32 0)
  %47 = call i32 @llvm.smax.i32(i32 %42, i32 0)
  %48 = call i32 @llvm.smax.i32(i32 %43, i32 0)
  %49 = select i1 %cmp99, i1 %cmp96, i1 false
  %50 = select i1 %49, i1 %cmp93, i1 false
  %mtkaif_calibration_ok.5.off0 = select i1 %50, i1 %mtkaif_calibration_ok.1.off0, i1 false
  call void @mt6359_set_mtkaif_calibration_phase(ptr noundef %7, i32 noundef %46, i32 noundef %47, i32 noundef %48) #8
  call void @mt6359_mtkaif_calibration_disable(ptr noundef %7) #8
  %51 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev17, align 4
  %call.i11 = call i32 @__pm_runtime_idle(ptr noundef %52, i32 noundef 5) #8
  %frombool126 = zext i1 %mtkaif_calibration_ok.5.off0 to i8
  %53 = ptrtoint ptr %mtkaif_params to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %frombool126, ptr %mtkaif_params, align 4
  %54 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %46, ptr %arrayidx7, align 4
  %55 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %47, ptr %arrayidx7.1, align 4
  %56 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %48, ptr %arrayidx7.2, align 4
  %57 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %prev_cycle_1.117, ptr %arrayidx9, align 4
  %mtkaif_phase_cycle.sroa.7.0.uglygep.sroa_idx = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 2, i32 1
  %58 = ptrtoint ptr %mtkaif_phase_cycle.sroa.7.0.uglygep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %prev_cycle_2.121, ptr %mtkaif_phase_cycle.sroa.7.0.uglygep.sroa_idx, align 4
  %mtkaif_phase_cycle.sroa.10.0.uglygep.sroa_idx = getelementptr %struct.mt8195_afe_private, ptr %13, i32 0, i32 9, i32 2, i32 2
  %59 = ptrtoint ptr %mtkaif_phase_cycle.sroa.10.0.uglygep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %prev_cycle_3.126, ptr %mtkaif_phase_cycle.sroa.10.0.uglygep.sroa_idx, align 4
  %60 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev17, align 4
  %62 = zext i1 %mtkaif_calibration_ok.5.off0 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.100, i32 noundef %62) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end104, %do.end16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %monitor) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !461
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.119, i32 noundef %call5) #11
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.122) #11
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.125) #11
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.128) #11
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_rt1011_etdm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
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
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp35.not = icmp eq i32 %5, 0
  br i1 %cmp35.not, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %mul = shl i32 %7, 6
  %mul2 = shl i32 %7, 8
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cpus, align 4
  %arrayidx42 = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx42, align 4
  %tobool.not43 = icmp eq ptr %13, null
  br i1 %tobool.not43, label %land.rhs.lr.ph.cleanup_crit_edge, label %land.rhs.lr.ph.for.body_crit_edge

land.rhs.lr.ph.for.body_crit_edge:                ; preds = %land.rhs.lr.ph
  br label %for.body

land.rhs.lr.ph.cleanup_crit_edge:                 ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %inc = add nuw i32 %i.03644, 1
  %14 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %15)
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %land.rhs, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %for.cond
  %16 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dais, align 4
  %18 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_cpus, align 4
  %add = add i32 %19, %inc
  %arrayidx = getelementptr ptr, ptr %17, i32 %add
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %land.rhs.lr.ph.for.body_crit_edge
  %22 = phi ptr [ %21, %land.rhs.for.body_crit_edge ], [ %13, %land.rhs.lr.ph.for.body_crit_edge ]
  %i.03644 = phi i32 [ %inc, %land.rhs.for.body_crit_edge ], [ 0, %land.rhs.lr.ph.for.body_crit_edge ]
  %call3 = tail call i32 @snd_soc_dai_set_pll(ptr noundef nonnull %22, i32 noundef 0, i32 noundef 0, i32 noundef %mul, i32 noundef %mul2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.cleanup.sink.split_crit_edge, label %if.end

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %for.body
  %call6 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %22, i32 noundef 2, i32 noundef %mul2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup.sink.split_crit_edge, label %for.cond

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call3, %for.body.cleanup.sink.split_crit_edge ], [ %call6, %if.end.cleanup.sink.split_crit_edge ]
  %dev12 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.135) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %land.rhs.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %land.rhs.lr.ph.cleanup_crit_edge ], [ %call6, %for.cond.cleanup_crit_edge ], [ %call6, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 266)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !33, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !160, !161, !163, !165, !167, !169, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !203, !204, !205, !207, !209, !211, !213, !215, !217, !218, !219, !221, !222, !224, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !237, !239, !241, !243, !245, !247, !249, !250, !251, !253, !254, !256, !257, !258, !259, !261, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !274, !276, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !294, !295, !296, !298, !300, !301, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !324, !325, !326, !327, !329, !330, !331, !332, !334, !336, !337, !338, !339, !341, !342, !343, !345, !347, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !372, !373, !374, !375, !377, !379, !380, !381, !382, !384, !385, !387, !388, !389, !390, !392, !393, !394, !395, !397, !398, !399, !400, !401, !402, !404, !405, !406, !407, !408, !410, !412, !414, !416, !417, !419, !420, !422, !423, !425, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448}
!llvm.module.flags = !{!450, !451, !452, !453, !454, !455, !456, !457}
!llvm.ident = !{!458}

!0 = !{ptr @__initcall__kmod_mt8195_mt6359_rt1011_rt5682__301_1192_mt8195_mt6359_rt1011_rt5682_driver_init6, !1, !"__initcall__kmod_mt8195_mt6359_rt1011_rt5682__301_1192_mt8195_mt6359_rt1011_rt5682_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1192, i32 1}
!2 = !{ptr @__exitcall_mt8195_mt6359_rt1011_rt5682_driver_exit, !1, !"__exitcall_mt8195_mt6359_rt1011_rt5682_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1195, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1196, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1197, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias306, !11, !"__UNIQUE_ID_alias306", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1198, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1183, i32 11}
!14 = !{ptr @mt8195_mt6359_rt1011_rt5682_driver, !15, !"mt8195_mt6359_rt1011_rt5682_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1181, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1103, i32 41}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1105, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt8195_mt6359_rt1011_rt5682_dev_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt8195_mt6359_rt1011_rt5682_dev_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1110, i32 25}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1118, i32 7}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1120, i32 3}
!32 = !{ptr @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug298, !31, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1124, i32 48}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1126, i32 10}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1132, i32 30}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1134, i32 5}
!41 = !{ptr @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug299, !40, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1138, i32 34}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1141, i32 37}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1143, i32 5}
!48 = !{ptr @mt8195_mt6359_rt1011_rt5682_dev_probe.__UNIQUE_ID_ddebug300, !47, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1150, i32 37}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1151, i32 30}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1153, i32 15}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1153, i32 35}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1155, i32 15}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1155, i32 35}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1078, i32 10}
!63 = !{ptr @mt8195_mt6359_rt1011_rt5682_soc_card, !64, !"mt8195_mt6359_rt1011_rt5682_soc_card", i1 false, i1 false}
!64 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1077, i32 28}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 597, i32 3}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug296, !66, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 602, i32 4}
!71 = !{ptr @mt8195_set_bias_level_post._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @mt8195_set_bias_level_post._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 605, i32 3}
!75 = !{ptr @mt8195_set_bias_level_post.__UNIQUE_ID_ddebug297, !74, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 786, i32 11}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 787, i32 18}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 798, i32 11}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 799, i32 18}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 810, i32 11}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 811, i32 18}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 822, i32 11}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 823, i32 18}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 833, i32 11}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 834, i32 18}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 845, i32 11}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 846, i32 18}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 857, i32 11}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 858, i32 18}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 869, i32 11}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 870, i32 18}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 880, i32 11}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 881, i32 18}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 892, i32 11}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 893, i32 18}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 904, i32 11}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 905, i32 18}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 916, i32 11}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 917, i32 18}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 928, i32 11}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 929, i32 18}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 939, i32 11}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 940, i32 18}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 951, i32 11}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 952, i32 18}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 963, i32 11}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 964, i32 18}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 976, i32 11}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 991, i32 11}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1023, i32 11}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1043, i32 11}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1053, i32 11}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1059, i32 11}
!152 = !{ptr @mt8195_mt6359_rt1011_rt5682_dai_links, !153, !"mt8195_mt6359_rt1011_rt5682_dai_links", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 783, i32 32}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 644, i32 1}
!156 = !{ptr @DL2_FE_cpus, !155, !"DL2_FE_cpus", i1 false, i1 false}
!157 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @DL2_FE_codecs, !155, !"DL2_FE_codecs", i1 false, i1 false}
!160 = !{ptr @DL2_FE_platforms, !155, !"DL2_FE_platforms", i1 false, i1 false}
!161 = !{ptr @mt8195_playback_ops, !162, !"mt8195_playback_ops", i1 false, i1 false}
!162 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 523, i32 33}
!163 = !{ptr @mt8195_playback_startup.rates, !164, !"rates", i1 false, i1 false}
!164 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 483, i32 28}
!165 = !{ptr @mt8195_playback_startup.channels, !166, !"channels", i1 false, i1 false}
!166 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 486, i32 28}
!167 = !{ptr @mt8195_playback_startup.constraints_rates, !168, !"constraints_rates", i1 false, i1 false}
!168 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 489, i32 49}
!169 = !{ptr @mt8195_playback_startup.constraints_channels, !170, !"constraints_channels", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 494, i32 49}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 508, i32 3}
!173 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @mt8195_playback_startup._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @mt8195_playback_startup._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 516, i32 3}
!178 = !{ptr @mt8195_playback_startup._entry.72, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @mt8195_playback_startup._entry_ptr.74, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.75, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 649, i32 1}
!182 = !{ptr @DL3_FE_cpus, !181, !"DL3_FE_cpus", i1 false, i1 false}
!183 = !{ptr @DL3_FE_codecs, !181, !"DL3_FE_codecs", i1 false, i1 false}
!184 = !{ptr @DL3_FE_platforms, !181, !"DL3_FE_platforms", i1 false, i1 false}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 654, i32 1}
!187 = !{ptr @DL6_FE_cpus, !186, !"DL6_FE_cpus", i1 false, i1 false}
!188 = !{ptr @DL6_FE_codecs, !186, !"DL6_FE_codecs", i1 false, i1 false}
!189 = !{ptr @DL6_FE_platforms, !186, !"DL6_FE_platforms", i1 false, i1 false}
!190 = !{ptr @.str.77, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 659, i32 1}
!192 = !{ptr @DL7_FE_cpus, !191, !"DL7_FE_cpus", i1 false, i1 false}
!193 = !{ptr @DL7_FE_codecs, !191, !"DL7_FE_codecs", i1 false, i1 false}
!194 = !{ptr @DL7_FE_platforms, !191, !"DL7_FE_platforms", i1 false, i1 false}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 664, i32 1}
!197 = !{ptr @DL8_FE_cpus, !196, !"DL8_FE_cpus", i1 false, i1 false}
!198 = !{ptr @DL8_FE_codecs, !196, !"DL8_FE_codecs", i1 false, i1 false}
!199 = !{ptr @DL8_FE_platforms, !196, !"DL8_FE_platforms", i1 false, i1 false}
!200 = !{ptr @.str.79, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 669, i32 1}
!202 = !{ptr @DL10_FE_cpus, !201, !"DL10_FE_cpus", i1 false, i1 false}
!203 = !{ptr @DL10_FE_codecs, !201, !"DL10_FE_codecs", i1 false, i1 false}
!204 = !{ptr @DL10_FE_platforms, !201, !"DL10_FE_platforms", i1 false, i1 false}
!205 = !{ptr @mt8195_hdmitx_dptx_playback_ops, !206, !"mt8195_hdmitx_dptx_playback_ops", i1 false, i1 false}
!206 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 418, i32 33}
!207 = !{ptr @mt8195_hdmitx_dptx_startup.rates, !208, !"rates", i1 false, i1 false}
!208 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 378, i32 28}
!209 = !{ptr @mt8195_hdmitx_dptx_startup.channels, !210, !"channels", i1 false, i1 false}
!210 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 381, i32 28}
!211 = !{ptr @mt8195_hdmitx_dptx_startup.constraints_rates, !212, !"constraints_rates", i1 false, i1 false}
!212 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 384, i32 49}
!213 = !{ptr @mt8195_hdmitx_dptx_startup.constraints_channels, !214, !"constraints_channels", i1 false, i1 false}
!214 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 389, i32 49}
!215 = !{ptr @.str.80, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 403, i32 3}
!217 = !{ptr @mt8195_hdmitx_dptx_startup._entry, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @mt8195_hdmitx_dptx_startup._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @mt8195_hdmitx_dptx_startup._entry.81, !220, !"_entry", i1 false, i1 false}
!220 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 411, i32 3}
!221 = !{ptr @mt8195_hdmitx_dptx_startup._entry_ptr.82, !220, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.83, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 674, i32 1}
!224 = !{ptr @DL11_FE_cpus, !223, !"DL11_FE_cpus", i1 false, i1 false}
!225 = !{ptr @DL11_FE_codecs, !223, !"DL11_FE_codecs", i1 false, i1 false}
!226 = !{ptr @DL11_FE_platforms, !223, !"DL11_FE_platforms", i1 false, i1 false}
!227 = !{ptr @.str.84, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 679, i32 1}
!229 = !{ptr @UL1_FE_cpus, !228, !"UL1_FE_cpus", i1 false, i1 false}
!230 = !{ptr @UL1_FE_codecs, !228, !"UL1_FE_codecs", i1 false, i1 false}
!231 = !{ptr @UL1_FE_platforms, !228, !"UL1_FE_platforms", i1 false, i1 false}
!232 = !{ptr @.str.85, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 684, i32 1}
!234 = !{ptr @UL2_FE_cpus, !233, !"UL2_FE_cpus", i1 false, i1 false}
!235 = !{ptr @UL2_FE_codecs, !233, !"UL2_FE_codecs", i1 false, i1 false}
!236 = !{ptr @UL2_FE_platforms, !233, !"UL2_FE_platforms", i1 false, i1 false}
!237 = !{ptr @mt8195_capture_ops, !238, !"mt8195_capture_ops", i1 false, i1 false}
!238 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 569, i32 33}
!239 = !{ptr @mt8195_capture_startup.rates, !240, !"rates", i1 false, i1 false}
!240 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 529, i32 28}
!241 = !{ptr @mt8195_capture_startup.channels, !242, !"channels", i1 false, i1 false}
!242 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 532, i32 28}
!243 = !{ptr @mt8195_capture_startup.constraints_rates, !244, !"constraints_rates", i1 false, i1 false}
!244 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 535, i32 49}
!245 = !{ptr @mt8195_capture_startup.constraints_channels, !246, !"constraints_channels", i1 false, i1 false}
!246 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 540, i32 49}
!247 = !{ptr @.str.86, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 554, i32 3}
!249 = !{ptr @mt8195_capture_startup._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @mt8195_capture_startup._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @mt8195_capture_startup._entry.87, !252, !"_entry", i1 false, i1 false}
!252 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 562, i32 3}
!253 = !{ptr @mt8195_capture_startup._entry_ptr.88, !252, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.89, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 689, i32 1}
!256 = !{ptr @UL3_FE_cpus, !255, !"UL3_FE_cpus", i1 false, i1 false}
!257 = !{ptr @UL3_FE_codecs, !255, !"UL3_FE_codecs", i1 false, i1 false}
!258 = !{ptr @UL3_FE_platforms, !255, !"UL3_FE_platforms", i1 false, i1 false}
!259 = !{ptr @.str.90, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 694, i32 1}
!261 = !{ptr @UL4_FE_cpus, !260, !"UL4_FE_cpus", i1 false, i1 false}
!262 = !{ptr @UL4_FE_codecs, !260, !"UL4_FE_codecs", i1 false, i1 false}
!263 = !{ptr @UL4_FE_platforms, !260, !"UL4_FE_platforms", i1 false, i1 false}
!264 = !{ptr @.str.91, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 699, i32 1}
!266 = !{ptr @UL5_FE_cpus, !265, !"UL5_FE_cpus", i1 false, i1 false}
!267 = !{ptr @UL5_FE_codecs, !265, !"UL5_FE_codecs", i1 false, i1 false}
!268 = !{ptr @UL5_FE_platforms, !265, !"UL5_FE_platforms", i1 false, i1 false}
!269 = !{ptr @.str.92, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 704, i32 1}
!271 = !{ptr @UL6_FE_cpus, !270, !"UL6_FE_cpus", i1 false, i1 false}
!272 = !{ptr @UL6_FE_codecs, !270, !"UL6_FE_codecs", i1 false, i1 false}
!273 = !{ptr @UL6_FE_platforms, !270, !"UL6_FE_platforms", i1 false, i1 false}
!274 = !{ptr @.str.93, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 709, i32 1}
!276 = !{ptr @UL8_FE_cpus, !275, !"UL8_FE_cpus", i1 false, i1 false}
!277 = !{ptr @UL8_FE_codecs, !275, !"UL8_FE_codecs", i1 false, i1 false}
!278 = !{ptr @UL8_FE_platforms, !275, !"UL8_FE_platforms", i1 false, i1 false}
!279 = !{ptr @.str.94, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 714, i32 1}
!281 = !{ptr @UL9_FE_cpus, !280, !"UL9_FE_cpus", i1 false, i1 false}
!282 = !{ptr @UL9_FE_codecs, !280, !"UL9_FE_codecs", i1 false, i1 false}
!283 = !{ptr @UL9_FE_platforms, !280, !"UL9_FE_platforms", i1 false, i1 false}
!284 = !{ptr @.str.95, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 719, i32 1}
!286 = !{ptr @UL10_FE_cpus, !285, !"UL10_FE_cpus", i1 false, i1 false}
!287 = !{ptr @UL10_FE_codecs, !285, !"UL10_FE_codecs", i1 false, i1 false}
!288 = !{ptr @UL10_FE_platforms, !285, !"UL10_FE_platforms", i1 false, i1 false}
!289 = !{ptr @.str.96, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 725, i32 1}
!291 = !{ptr @DL_SRC_BE_cpus, !290, !"DL_SRC_BE_cpus", i1 false, i1 false}
!292 = !{ptr @.str.97, !290, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.98, !290, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @DL_SRC_BE_codecs, !290, !"DL_SRC_BE_codecs", i1 false, i1 false}
!295 = !{ptr @DL_SRC_BE_platforms, !290, !"DL_SRC_BE_platforms", i1 false, i1 false}
!296 = !{ptr @.str.99, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 150, i32 30}
!298 = !{ptr @.str.100, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 169, i32 2}
!300 = !{ptr @.str.101, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @mt8195_mt6359_mtkaif_calibration.__UNIQUE_ID_ddebug295, !299, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!302 = !{ptr @.str.102, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 180, i32 3}
!304 = !{ptr @.str.103, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.105, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 227, i32 5}
!309 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry.104, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.106, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.108, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 304, i32 2}
!313 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry.107, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @mt8195_mt6359_mtkaif_calibration._entry_ptr.109, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.110, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 731, i32 1}
!317 = !{ptr @DPTX_BE_cpus, !316, !"DPTX_BE_cpus", i1 false, i1 false}
!318 = !{ptr @DPTX_BE_codecs, !316, !"DPTX_BE_codecs", i1 false, i1 false}
!319 = !{ptr @DPTX_BE_platforms, !316, !"DPTX_BE_platforms", i1 false, i1 false}
!320 = !{ptr @mt8195_dptx_ops, !321, !"mt8195_dptx_ops", i1 false, i1 false}
!321 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 432, i32 33}
!322 = !{ptr @.str.111, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 736, i32 1}
!324 = !{ptr @ETDM1_IN_BE_cpus, !323, !"ETDM1_IN_BE_cpus", i1 false, i1 false}
!325 = !{ptr @ETDM1_IN_BE_codecs, !323, !"ETDM1_IN_BE_codecs", i1 false, i1 false}
!326 = !{ptr @ETDM1_IN_BE_platforms, !323, !"ETDM1_IN_BE_platforms", i1 false, i1 false}
!327 = !{ptr @.str.112, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 741, i32 1}
!329 = !{ptr @ETDM2_IN_BE_cpus, !328, !"ETDM2_IN_BE_cpus", i1 false, i1 false}
!330 = !{ptr @ETDM2_IN_BE_codecs, !328, !"ETDM2_IN_BE_codecs", i1 false, i1 false}
!331 = !{ptr @ETDM2_IN_BE_platforms, !328, !"ETDM2_IN_BE_platforms", i1 false, i1 false}
!332 = !{ptr @.str.113, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 340, i32 41}
!334 = !{ptr @.str.114, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 346, i32 3}
!336 = !{ptr @.str.115, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @mt8195_rt5682_init._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @mt8195_rt5682_init._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.117, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 357, i32 3}
!341 = !{ptr @mt8195_rt5682_init._entry.116, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @mt8195_rt5682_init._entry_ptr.118, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @mt8195_rt5682_etdm_ops, !344, !"mt8195_rt5682_etdm_ops", i1 false, i1 false}
!344 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 107, i32 33}
!345 = !{ptr @.str.119, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 79, i32 3}
!347 = !{ptr @.str.120, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @mt8195_rt5682_etdm_hw_params._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.122, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 85, i32 3}
!352 = !{ptr @mt8195_rt5682_etdm_hw_params._entry.121, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.123, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.125, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 92, i32 3}
!356 = !{ptr @mt8195_rt5682_etdm_hw_params._entry.124, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.126, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.128, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 99, i32 3}
!360 = !{ptr @mt8195_rt5682_etdm_hw_params._entry.127, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @mt8195_rt5682_etdm_hw_params._entry_ptr.129, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.130, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 746, i32 1}
!364 = !{ptr @ETDM1_OUT_BE_cpus, !363, !"ETDM1_OUT_BE_cpus", i1 false, i1 false}
!365 = !{ptr @ETDM1_OUT_BE_codecs, !363, !"ETDM1_OUT_BE_codecs", i1 false, i1 false}
!366 = !{ptr @ETDM1_OUT_BE_platforms, !363, !"ETDM1_OUT_BE_platforms", i1 false, i1 false}
!367 = !{ptr @.str.131, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 751, i32 1}
!369 = !{ptr @ETDM2_OUT_BE_cpus, !368, !"ETDM2_OUT_BE_cpus", i1 false, i1 false}
!370 = !{ptr @.str.132, !368, !"<string literal>", i1 false, i1 false}
!371 = !{ptr @.str.133, !368, !"<string literal>", i1 false, i1 false}
!372 = !{ptr @.str.134, !368, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @ETDM2_OUT_BE_codecs, !368, !"ETDM2_OUT_BE_codecs", i1 false, i1 false}
!374 = !{ptr @ETDM2_OUT_BE_platforms, !368, !"ETDM2_OUT_BE_platforms", i1 false, i1 false}
!375 = !{ptr @mt8195_rt1011_etdm_ops, !376, !"mt8195_rt1011_etdm_ops", i1 false, i1 false}
!376 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 140, i32 33}
!377 = !{ptr @.str.135, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 125, i32 4}
!379 = !{ptr @.str.136, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @mt8195_rt1011_etdm_hw_params._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @mt8195_rt1011_etdm_hw_params._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @mt8195_rt1011_etdm_hw_params._entry.137, !383, !"_entry", i1 false, i1 false}
!383 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 133, i32 4}
!384 = !{ptr @mt8195_rt1011_etdm_hw_params._entry_ptr.138, !383, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.139, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 759, i32 1}
!387 = !{ptr @ETDM3_OUT_BE_cpus, !386, !"ETDM3_OUT_BE_cpus", i1 false, i1 false}
!388 = !{ptr @ETDM3_OUT_BE_codecs, !386, !"ETDM3_OUT_BE_codecs", i1 false, i1 false}
!389 = !{ptr @ETDM3_OUT_BE_platforms, !386, !"ETDM3_OUT_BE_platforms", i1 false, i1 false}
!390 = !{ptr @.str.140, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 764, i32 1}
!392 = !{ptr @PCM1_BE_cpus, !391, !"PCM1_BE_cpus", i1 false, i1 false}
!393 = !{ptr @PCM1_BE_codecs, !391, !"PCM1_BE_codecs", i1 false, i1 false}
!394 = !{ptr @PCM1_BE_platforms, !391, !"PCM1_BE_platforms", i1 false, i1 false}
!395 = !{ptr @.str.141, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 769, i32 1}
!397 = !{ptr @UL_SRC1_BE_cpus, !396, !"UL_SRC1_BE_cpus", i1 false, i1 false}
!398 = !{ptr @.str.142, !396, !"<string literal>", i1 false, i1 false}
!399 = !{ptr @.str.143, !396, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @UL_SRC1_BE_codecs, !396, !"UL_SRC1_BE_codecs", i1 false, i1 false}
!401 = !{ptr @UL_SRC1_BE_platforms, !396, !"UL_SRC1_BE_platforms", i1 false, i1 false}
!402 = !{ptr @.str.144, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 777, i32 1}
!404 = !{ptr @UL_SRC2_BE_cpus, !403, !"UL_SRC2_BE_cpus", i1 false, i1 false}
!405 = !{ptr @.str.145, !403, !"<string literal>", i1 false, i1 false}
!406 = !{ptr @UL_SRC2_BE_codecs, !403, !"UL_SRC2_BE_codecs", i1 false, i1 false}
!407 = !{ptr @UL_SRC2_BE_platforms, !403, !"UL_SRC2_BE_platforms", i1 false, i1 false}
!408 = !{ptr @.str.146, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1069, i32 18}
!410 = !{ptr @.str.147, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1073, i32 18}
!412 = !{ptr @rt1011_amp_conf, !413, !"rt1011_amp_conf", i1 false, i1 false}
!413 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1066, i32 34}
!414 = !{ptr @.str.148, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 60, i32 2}
!416 = !{ptr @.str.149, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.150, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 61, i32 2}
!419 = !{ptr @.str.151, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @.str.152, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 62, i32 2}
!422 = !{ptr @.str.153, !421, !"<string literal>", i1 false, i1 false}
!423 = !{ptr @.str.154, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 63, i32 2}
!425 = !{ptr @.str.155, !424, !"<string literal>", i1 false, i1 false}
!426 = !{ptr @mt8195_mt6359_rt1011_rt5682_controls, !427, !"mt8195_mt6359_rt1011_rt5682_controls", i1 false, i1 false}
!427 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 59, i32 38}
!428 = !{ptr @mt8195_mt6359_rt1011_rt5682_widgets, !429, !"mt8195_mt6359_rt1011_rt5682_widgets", i1 false, i1 false}
!429 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 42, i32 1}
!430 = !{ptr @.str.157, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 51, i32 26}
!432 = !{ptr @.str.158, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 52, i32 27}
!434 = !{ptr @.str.159, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 54, i32 28}
!436 = !{ptr @.str.160, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 55, i32 28}
!438 = !{ptr @.str.161, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 56, i32 4}
!440 = !{ptr @mt8195_mt6359_rt1011_rt5682_routes, !441, !"mt8195_mt6359_rt1011_rt5682_routes", i1 false, i1 false}
!441 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 49, i32 40}
!442 = !{ptr @.str.162, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 444, i32 41}
!444 = !{ptr @.str.163, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 460, i32 41}
!446 = !{ptr @mt8195_mt6359_rt1011_rt5682_dt_match, !447, !"mt8195_mt6359_rt1011_rt5682_dt_match", i1 false, i1 false}
!447 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1170, i32 34}
!448 = !{ptr @mt8195_mt6359_rt1011_rt5682_pm_ops, !449, !"mt8195_mt6359_rt1011_rt5682_pm_ops", i1 false, i1 false}
!449 = !{!"../sound/soc/mediatek/mt8195/mt8195-mt6359-rt1011-rt5682.c", i32 1176, i32 32}
!450 = !{i32 1, !"wchar_size", i32 2}
!451 = !{i32 1, !"min_enum_size", i32 4}
!452 = !{i32 8, !"branch-target-enforcement", i32 0}
!453 = !{i32 8, !"sign-return-address", i32 0}
!454 = !{i32 8, !"sign-return-address-all", i32 0}
!455 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!456 = !{i32 7, !"uwtable", i32 1}
!457 = !{i32 7, !"frame-pointer", i32 2}
!458 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!459 = !{i64 2149063562, i64 2149063567, i64 2149063580, i64 2149063624, i64 2149063658, i64 2149063679}
!460 = !{!"auto-init"}
!461 = !{i32 0, i32 33}
