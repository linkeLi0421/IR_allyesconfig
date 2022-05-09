; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8173/mt8173-afe-pcm.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mtk_base_memif_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_base_irq_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.mt8173_afe_rate = type { i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_base_afe_memif = type { i32, i32, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.mtk_base_afe_irq = type { ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_mt8173_afe_pcm__241_1231_mt8173_afe_pcm_driver_init6 = internal global ptr @mt8173_afe_pcm_driver_init, section ".initcall6.init", align 4
@mt8173_afe_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8173_afe_pcm_dev_probe, ptr @mt8173_afe_pcm_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8173_afe_pcm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8173_afe_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8173_afe_pcm_driver_exit = internal global ptr @mt8173_afe_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [65 x i8] c"mt8173_afe_pcm.description=Mediatek ALSA SoC AFE platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [57 x i8] c"mt8173_afe_pcm.author=Koro Chen <koro.chen@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [61 x i8] c"mt8173_afe_pcm.file=sound/soc/mediatek/mt8173/mt8173-afe-pcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [30 x i8] c"mt8173_afe_pcm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt8173-afe-pcm\00", [17 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-afe-pcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt8173_afe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8173_afe_runtime_suspend, ptr @mt8173_afe_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Afe_ISR_Handle\00", [17 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1081, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not request_irq\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt8173_afe_pcm_dev_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt8173/mt8173-afe-pcm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dev_probe._entry_ptr = internal global ptr @mt8173_afe_pcm_dev_probe._entry, section ".printk_index", align 4
@mt8173_afe_pcm_dev_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt8173_afe_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1536, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mt8173_afe_pcm:1090:(&mt8173_afe_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dev_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1097, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mt8173_afe_init_audio_clk fail\0A\00", [32 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dev_probe._entry_ptr.10 = internal global ptr @mt8173_afe_pcm_dev_probe._entry.8, section ".printk_index", align 4
@memif_data = internal constant { [7 x %struct.mtk_base_memif_data], [256 x i8] } { [7 x %struct.mtk_base_memif_data] [%struct.mtk_base_memif_data { i32 0, ptr @.str.31, i32 64, i32 68, i32 0, i32 0, i32 0, i32 0, i32 20, i32 0, i32 15, i32 20, i32 21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 204, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 1, ptr @.str.32, i32 80, i32 84, i32 0, i32 0, i32 0, i32 0, i32 20, i32 4, i32 15, i32 20, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 -1, i32 0, i32 0, i32 0, i32 204, i32 1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 2, ptr @.str.33, i32 128, i32 140, i32 0, i32 0, i32 0, i32 0, i32 20, i32 16, i32 15, i32 20, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 -1, i32 0, i32 0, i32 0, i32 204, i32 6, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 3, ptr @.str.34, i32 144, i32 156, i32 0, i32 0, i32 0, i32 0, i32 16, i32 24, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 -1, i32 0, i32 0, i32 0, i32 204, i32 5, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 4, ptr @.str.35, i32 112, i32 124, i32 0, i32 0, i32 0, i32 0, i32 20, i32 12, i32 15, i32 20, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 6, i32 -1, i32 0, i32 0, i32 0, i32 204, i32 3, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 5, ptr @.str.36, i32 816, i32 828, i32 0, i32 0, i32 0, i32 0, i32 20, i32 30, i32 3, i32 20, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 7, i32 -1, i32 0, i32 0, i32 0, i32 204, i32 4, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 6, ptr @.str.37, i32 884, i32 888, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 204, i32 8, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [256 x i8] zeroinitializer }, align 32
@irq_data = internal constant { [7 x %struct.mtk_base_irq_data], [80 x i8] } { [7 x %struct.mtk_base_irq_data] [%struct.mtk_base_irq_data { i32 0, i32 940, i32 0, i32 262143, i32 928, i32 4, i32 15, i32 928, i32 0, i32 936, i32 0, i32 0 }, %struct.mtk_base_irq_data { i32 1, i32 940, i32 20, i32 262143, i32 928, i32 16, i32 15, i32 928, i32 2, i32 936, i32 2, i32 0 }, %struct.mtk_base_irq_data { i32 2, i32 944, i32 0, i32 262143, i32 928, i32 8, i32 15, i32 928, i32 1, i32 936, i32 1, i32 0 }, %struct.mtk_base_irq_data { i32 3, i32 944, i32 20, i32 262143, i32 928, i32 20, i32 15, i32 928, i32 3, i32 936, i32 3, i32 0 }, %struct.mtk_base_irq_data { i32 4, i32 988, i32 0, i32 262143, i32 928, i32 24, i32 15, i32 928, i32 14, i32 936, i32 6, i32 0 }, %struct.mtk_base_irq_data { i32 3, i32 944, i32 20, i32 262143, i32 928, i32 20, i32 15, i32 928, i32 3, i32 936, i32 3, i32 0 }, %struct.mtk_base_irq_data { i32 6, i32 956, i32 0, i32 262143, i32 -1, i32 0, i32 -1, i32 928, i32 12, i32 936, i32 4, i32 0 }], [80 x i8] zeroinitializer }, align 32
@mt8173_afe_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 512, i32 131072, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@mt8173_afe_backup_list = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 36, i32 40, i32 1120, i32 1124, i32 20, i32 64, i32 72, i32 128, i32 136, i32 884, i32 892, i32 912, i32 16], [40 x i8] zeroinitializer }, align 32
@mtk_afe_pcm_platform = external dso_local constant %struct.snd_soc_component_driver, align 4
@mt8173_afe_pcm_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.39, ptr null, i32 0, ptr @mt8173_afe_pcm_widgets, i32 10, ptr @mt8173_afe_pcm_routes, i32 16, ptr null, ptr null, ptr @mtk_afe_suspend, ptr @mtk_afe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dais = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.31, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.31, i64 4, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.33, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.33, i64 4, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.64, i32 10, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8173_afe_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.63, i64 4, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.62, i64 4, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@mt8173_afe_hdmi_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.70, ptr null, i32 0, ptr null, i32 0, ptr @mt8173_afe_hdmi_routes, i32 1, ptr null, ptr null, ptr @mtk_afe_suspend, ptr @mtk_afe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@mt8173_afe_hdmi_dais = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.37, i32 6, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.37, i64 4, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.72, i32 17, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8173_afe_hdmi_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.71, i64 4, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dev_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1190, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"MT8173 AFE driver initialized.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_dev_probe._entry_ptr.16 = internal global ptr @mt8173_afe_pcm_dev_probe._entry.13, section ".printk_index", align 4
@mt8173_afe_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 922, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s irq status err\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt8173_afe_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@mt8173_afe_irq_handler._entry_ptr = internal global ptr @mt8173_afe_irq_handler._entry, section ".printk_index", align 4
@mt8173_afe_init_audio_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 1042, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s devm_clk_get %s fail\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt8173_afe_init_audio_clk\00", [38 x i8] zeroinitializer }, align 32
@mt8173_afe_init_audio_clk._entry_ptr = internal global ptr @mt8173_afe_init_audio_clk._entry, section ".printk_index", align 4
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_sys_audio_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_pdn_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"top_pdn_aud_intbus\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s0_m\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s1_m\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s2_m\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s3_m\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2s3_b\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bck0\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bck1\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VUL\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAI\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AWB\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOD_DAI\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@mt8173_afe_i2s_rates = internal constant { [13 x %struct.mt8173_afe_rate], [56 x i8] } { [13 x %struct.mt8173_afe_rate] [%struct.mt8173_afe_rate { i32 8000, i32 0 }, %struct.mt8173_afe_rate { i32 11025, i32 1 }, %struct.mt8173_afe_rate { i32 12000, i32 2 }, %struct.mt8173_afe_rate { i32 16000, i32 4 }, %struct.mt8173_afe_rate { i32 22050, i32 5 }, %struct.mt8173_afe_rate { i32 24000, i32 6 }, %struct.mt8173_afe_rate { i32 32000, i32 8 }, %struct.mt8173_afe_rate { i32 44100, i32 9 }, %struct.mt8173_afe_rate { i32 48000, i32 10 }, %struct.mt8173_afe_rate { i32 88000, i32 11 }, %struct.mt8173_afe_rate { i32 96000, i32 12 }, %struct.mt8173_afe_rate { i32 174000, i32 13 }, %struct.mt8173_afe_rate { i32 192000, i32 14 }], [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt8173-afe-pcm-dai\00", [45 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_routes = internal constant { [16 x %struct.snd_soc_dapm_route], [192 x i8] } { [16 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.51, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.52, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.56, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.54, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.60, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.58, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }], [192 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I03\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I04\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I05\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I06\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I17\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I18\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O03\00", [28 x i8] zeroinitializer }, align 32
@mt8173_afe_o03_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O04\00", [28 x i8] zeroinitializer }, align 32
@mt8173_afe_o04_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O09\00", [28 x i8] zeroinitializer }, align 32
@mt8173_afe_o09_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O10\00", [28 x i8] zeroinitializer }, align 32
@mt8173_afe_o10_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt8173_afe_pcm_widgets = internal constant { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [472 x i8] } { [10 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt8173_afe_o03_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt8173_afe_o04_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mt8173_afe_o09_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @mt8173_afe_o10_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [472 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I05 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I06 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I03 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I17 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1120, i32 1120, i32 30, i32 30, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I04 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I18 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1124, i32 1124, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S Capture\00", [20 x i8] zeroinitializer }, align 32
@mtk_afe_fe_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@mt8173_afe_i2s_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8173_afe_i2s_startup, ptr @mt8173_afe_i2s_shutdown, ptr null, ptr null, ptr @mt8173_afe_i2s_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mt8173_afe_dais_set_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set m_ck rate\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt8173_afe_dais_set_clks\00", [39 x i8] zeroinitializer }, align 32
@mt8173_afe_dais_set_clks._entry_ptr = internal global ptr @mt8173_afe_dais_set_clks._entry, section ".printk_index", align 4
@mt8173_afe_dais_set_clks._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set b_ck rate\0A\00", [39 x i8] zeroinitializer }, align 32
@mt8173_afe_dais_set_clks._entry_ptr.69 = internal global ptr @mt8173_afe_dais_set_clks._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt8173-afe-hdmi-dai\00", [44 x i8] zeroinitializer }, align 32
@mt8173_afe_hdmi_routes = internal constant { [1 x %struct.snd_soc_dapm_route], [44 x i8] } { [1 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HDMIO Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HDMIO\00", [26 x i8] zeroinitializer }, align 32
@mt8173_afe_hdmi_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8173_afe_hdmi_startup, ptr @mt8173_afe_hdmi_shutdown, ptr null, ptr null, ptr @mt8173_afe_hdmi_prepare, ptr @mt8173_afe_hdmi_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mt8173_afe_dais_enable_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable m_ck\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mt8173_afe_dais_enable_clks\00", [36 x i8] zeroinitializer }, align 32
@mt8173_afe_dais_enable_clks._entry_ptr = internal global ptr @mt8173_afe_dais_enable_clks._entry, section ".printk_index", align 4
@mt8173_afe_dais_enable_clks._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to enable b_ck\0A\00", [41 x i8] zeroinitializer }, align 32
@mt8173_afe_dais_enable_clks._entry_ptr.77 = internal global ptr @mt8173_afe_dais_enable_clks._entry.75, section ".printk_index", align 4
@mt8173_afe_hdmi_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 439, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s cmd=%d %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8173_afe_hdmi_trigger\00", [40 x i8] zeroinitializer }, align 32
@mt8173_afe_hdmi_trigger._entry_ptr = internal global ptr @mt8173_afe_hdmi_trigger._entry, section ".printk_index", align 4
@switch.table.mt8173_afe_hdmi_prepare = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 17472, i32 17472, i32 17424, i32 17424, i32 16912, i32 16912, i32 12816, i32 12816], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 16000, i64 32000]
@__sancov_gen_cov_switch_values.81 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88000, i64 96000, i64 174000, i64 192000]
@__sancov_gen_cov_switch_values.82 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88000, i64 96000, i64 174000, i64 192000]
@__sancov_gen_cov_switch_values.83 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88000, i64 96000, i64 174000, i64 192000]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"mt8173_afe_pcm_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1221, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1223, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant [24 x i8] c"mt8173_afe_pcm_dt_match\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1210, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"mt8173_afe_pm_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1216, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1079, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1081, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [25 x i8] c"mt8173_afe_regmap_config\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 906, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1089, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1097, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [11 x i8] c"memif_data\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 703, i32 41 }
@___asan_gen_.136 = private unnamed_addr constant [9 x i8] c"irq_data\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 818, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"mt8173_afe_hardware\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 153, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant [23 x i8] c"mt8173_afe_backup_list\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 132, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant [29 x i8] c"mt8173_afe_pcm_dai_component\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 672, i32 46 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1159, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"mt8173_afe_pcm_dais\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 531, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"mt8173_afe_hdmi_dai_component\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 682, i32 46 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1181, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"mt8173_afe_hdmi_dais\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 578, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1190, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 922, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 1041, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 691, i32 30 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 692, i32 29 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 693, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 694, i32 25 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 695, i32 25 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 696, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 697, i32 25 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 698, i32 25 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 699, i32 23 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 700, i32 23 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 705, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 721, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 737, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 753, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 769, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 785, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 801, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 486, i32 67 }
@___asan_gen_.244 = private unnamed_addr constant [21 x i8] c"mt8173_afe_i2s_rates\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 169, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 673, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant [22 x i8] c"mt8173_afe_pcm_routes\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 649, i32 40 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 632, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 633, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 634, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 635, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 636, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 637, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 639, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [19 x i8] c"mt8173_afe_o03_mix\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 612, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 641, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [19 x i8] c"mt8173_afe_o04_mix\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 616, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 643, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [19 x i8] c"mt8173_afe_o09_mix\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 620, i32 38 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 645, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [19 x i8] c"mt8173_afe_o10_mix\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 625, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant [23 x i8] c"mt8173_afe_pcm_widgets\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 630, i32 41 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 613, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 617, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 621, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 622, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 626, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 627, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 652, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 656, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 557, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant [19 x i8] c"mt8173_afe_i2s_ops\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 518, i32 37 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 271, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 279, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 683, i32 10 }
@___asan_gen_.352 = private unnamed_addr constant [23 x i8] c"mt8173_afe_hdmi_routes\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 668, i32 40 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 669, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 596, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c"mt8173_afe_hdmi_ops\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 524, i32 37 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 247, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 255, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.386 = private constant [46 x i8] c"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.386, i32 439, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [37 x i8] c"switch.table.mt8173_afe_hdmi_prepare\00", align 1
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_mt8173_afe_pcm_driver_exit, ptr @__initcall__kmod_mt8173_afe_pcm__241_1231_mt8173_afe_pcm_driver_init6, ptr @mt8173_afe_dais_enable_clks._entry, ptr @mt8173_afe_dais_enable_clks._entry.75, ptr @mt8173_afe_dais_enable_clks._entry_ptr, ptr @mt8173_afe_dais_enable_clks._entry_ptr.77, ptr @mt8173_afe_dais_set_clks._entry, ptr @mt8173_afe_dais_set_clks._entry.67, ptr @mt8173_afe_dais_set_clks._entry_ptr, ptr @mt8173_afe_dais_set_clks._entry_ptr.69, ptr @mt8173_afe_hdmi_trigger._entry, ptr @mt8173_afe_hdmi_trigger._entry_ptr, ptr @mt8173_afe_init_audio_clk._entry, ptr @mt8173_afe_init_audio_clk._entry_ptr, ptr @mt8173_afe_irq_handler._entry, ptr @mt8173_afe_irq_handler._entry_ptr, ptr @mt8173_afe_pcm_dev_probe._entry, ptr @mt8173_afe_pcm_dev_probe._entry.13, ptr @mt8173_afe_pcm_dev_probe._entry.8, ptr @mt8173_afe_pcm_dev_probe._entry_ptr, ptr @mt8173_afe_pcm_dev_probe._entry_ptr.10, ptr @mt8173_afe_pcm_dev_probe._entry_ptr.16, ptr @mt8173_afe_pcm_driver_exit, ptr @mt8173_afe_pcm_driver, ptr @.str, ptr @mt8173_afe_pcm_dt_match, ptr @mt8173_afe_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mt8173_afe_pcm_dev_probe._key, ptr @mt8173_afe_regmap_config, ptr @.str.7, ptr @.str.9, ptr @memif_data, ptr @irq_data, ptr @mt8173_afe_hardware, ptr @mt8173_afe_backup_list, ptr @mt8173_afe_pcm_dai_component, ptr @.str.11, ptr @mt8173_afe_pcm_dais, ptr @mt8173_afe_hdmi_dai_component, ptr @.str.12, ptr @mt8173_afe_hdmi_dais, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @mt8173_afe_i2s_rates, ptr @.str.39, ptr @mt8173_afe_pcm_routes, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @mt8173_afe_o03_mix, ptr @.str.47, ptr @mt8173_afe_o04_mix, ptr @.str.48, ptr @mt8173_afe_o09_mix, ptr @.str.49, ptr @mt8173_afe_o10_mix, ptr @mt8173_afe_pcm_widgets, ptr @.str.51, ptr @.compoundliteral, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @mt8173_afe_i2s_ops, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @mt8173_afe_hdmi_routes, ptr @.str.71, ptr @.str.72, ptr @mt8173_afe_hdmi_ops, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @switch.table.mt8173_afe_hdmi_prepare], section "llvm.metadata"
@0 = internal global [106 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_dev_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_dev_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_data to i32), i32 1120, i32 1376, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_data to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_backup_list to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_dais to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_hdmi_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_hdmi_dais to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_dev_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_init_audio_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_i2s_rates to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_routes to i32), i32 832, i32 1024, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_o03_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_o04_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_o09_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_o10_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_pcm_widgets to i32), i32 1800, i32 2272, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_i2s_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_dais_set_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_dais_set_clks._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_hdmi_routes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_hdmi_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_dais_enable_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_dais_enable_clks._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_afe_hdmi_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt8173_afe_hdmi_prepare to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_pcm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8173_afe_pcm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8173_afe_pcm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8173_afe_pcm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_pcm_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 8589934591) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 8589934591) #7
  %call.i218 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 196, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i218, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i219 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i219, ptr %platform_priv, align 4
  %tobool9.not = icmp eq ptr %call.i219, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %dev13 = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 1
  %1 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev13, align 4
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp = icmp slt i32 %call14, 1
  br i1 %cmp, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp16.not = icmp eq i32 %call14, 0
  %spec.select = select i1 %cmp16.not, i32 -6, i32 %call14
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %2 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev13, align 4
  %call.i220 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %call14, ptr noundef nonnull @mt8173_afe_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %call.i218) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool20.not = icmp eq i32 %call.i220, 0
  br i1 %tobool20.not, label %if.end23, label %do.end

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %call24 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %6 = ptrtoint ptr %call.i218 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %call.i218, align 4
  %cmp.i221 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %call33 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call24, ptr noundef nonnull @mt8173_afe_regmap_config, ptr noundef nonnull @mt8173_afe_pcm_dev_probe._key, ptr noundef nonnull @.str.7) #7
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 2
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call33, ptr %regmap, align 4
  %cmp.i222 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %10 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %platform_priv, align 4
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 4
  %call.i223 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.21) #7
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i223, ptr %11, align 4
  %cmp.i.i = icmp ugt ptr %call.i223, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end39.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.i

if.end39.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.i:                                        ; preds = %if.end39
  %15 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev13, align 4
  %call.1.i = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.22) #7
  %arrayidx1.1.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.1.i, ptr %arrayidx1.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.1.i

for.inc.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %18 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev13, align 4
  %call.2.i = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef nonnull @.str.23) #7
  %arrayidx1.2.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.2.i, ptr %arrayidx1.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %21 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev13, align 4
  %call.3.i = tail call ptr @devm_clk_get(ptr noundef %22, ptr noundef nonnull @.str.24) #7
  %arrayidx1.3.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.3.i, ptr %arrayidx1.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.inc.2.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %24 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev13, align 4
  %call.4.i = tail call ptr @devm_clk_get(ptr noundef %25, ptr noundef nonnull @.str.25) #7
  %arrayidx1.4.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.4.i, ptr %arrayidx1.4.i, align 4
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %for.inc.3.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %27 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev13, align 4
  %call.5.i = tail call ptr @devm_clk_get(ptr noundef %28, ptr noundef nonnull @.str.26) #7
  %arrayidx1.5.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx1.5.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.5.i, ptr %arrayidx1.5.i, align 4
  %cmp.i.5.i = icmp ugt ptr %call.5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5.i, label %for.inc.4.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %30 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev13, align 4
  %call.6.i = tail call ptr @devm_clk_get(ptr noundef %31, ptr noundef nonnull @.str.27) #7
  %arrayidx1.6.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 6
  %32 = ptrtoint ptr %arrayidx1.6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.6.i, ptr %arrayidx1.6.i, align 4
  %cmp.i.6.i = icmp ugt ptr %call.6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6.i, label %for.inc.5.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %33 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev13, align 4
  %call.7.i = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef nonnull @.str.28) #7
  %arrayidx1.7.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 7
  %35 = ptrtoint ptr %arrayidx1.7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.7.i, ptr %arrayidx1.7.i, align 4
  %cmp.i.7.i = icmp ugt ptr %call.7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7.i, label %for.inc.6.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %36 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev13, align 4
  %call.8.i = tail call ptr @devm_clk_get(ptr noundef %37, ptr noundef nonnull @.str.29) #7
  %arrayidx1.8.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 8
  %38 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.8.i, ptr %arrayidx1.8.i, align 4
  %cmp.i.8.i = icmp ugt ptr %call.8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.8.i, label %for.inc.7.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %for.inc.8.i

for.inc.7.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

for.inc.8.i:                                      ; preds = %for.inc.7.i
  %39 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev13, align 4
  %call.9.i = tail call ptr @devm_clk_get(ptr noundef %40, ptr noundef nonnull @.str.30) #7
  %arrayidx1.9.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.9.i, ptr %arrayidx1.9.i, align 4
  %cmp.i.9.i = icmp ugt ptr %call.9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.9.i, label %for.inc.8.i.mt8173_afe_init_audio_clk.exit_crit_edge, label %mt8173_afe_init_audio_clk.exit.thread

for.inc.8.i.mt8173_afe_init_audio_clk.exit_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_init_audio_clk.exit

mt8173_afe_init_audio_clk.exit.thread:            ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %arrayidx1.8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx1.8.i, align 4
  %call12.i = tail call i32 @clk_set_rate(ptr noundef %43, i32 noundef 22579200) #7
  %44 = ptrtoint ptr %arrayidx1.9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx1.9.i, align 4
  %call15.i = tail call i32 @clk_set_rate(ptr noundef %45, i32 noundef 24576000) #7
  br label %if.end47

mt8173_afe_init_audio_clk.exit:                   ; preds = %for.inc.8.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.7.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.6.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.5.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.4.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.3.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.2.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.1.i.mt8173_afe_init_audio_clk.exit_crit_edge, %for.inc.i.mt8173_afe_init_audio_clk.exit_crit_edge, %if.end39.mt8173_afe_init_audio_clk.exit_crit_edge
  %i.029.lcssa.i = phi i32 [ 0, %if.end39.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 1, %for.inc.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 2, %for.inc.1.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 3, %for.inc.2.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 4, %for.inc.3.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 5, %for.inc.4.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 6, %for.inc.5.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 7, %for.inc.6.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 8, %for.inc.7.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ 9, %for.inc.8.i.mt8173_afe_init_audio_clk.exit_crit_edge ]
  %.lcssa.i = phi ptr [ @.str.21, %if.end39.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.22, %for.inc.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.23, %for.inc.1.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.24, %for.inc.2.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.25, %for.inc.3.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.26, %for.inc.4.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.27, %for.inc.5.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.28, %for.inc.6.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.29, %for.inc.7.i.mt8173_afe_init_audio_clk.exit_crit_edge ], [ @.str.30, %for.inc.8.i.mt8173_afe_init_audio_clk.exit_crit_edge ]
  %arrayidx1.le.i = getelementptr [10 x ptr], ptr %11, i32 0, i32 %i.029.lcssa.i
  %46 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %.lcssa.i) #10
  %48 = ptrtoint ptr %arrayidx1.le.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx1.le.i, align 4
  %tobool41.not = icmp eq ptr %49, null
  br i1 %tobool41.not, label %mt8173_afe_init_audio_clk.exit.if.end47_crit_edge, label %do.end45

mt8173_afe_init_audio_clk.exit.if.end47_crit_edge: ; preds = %mt8173_afe_init_audio_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end45:                                         ; preds = %mt8173_afe_init_audio_clk.exit
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %49 to i32
  %51 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end47:                                         ; preds = %mt8173_afe_init_audio_clk.exit.if.end47_crit_edge, %mt8173_afe_init_audio_clk.exit.thread
  %memif_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 11
  %53 = ptrtoint ptr %memif_size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 7, ptr %memif_size, align 4
  %54 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev13, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef 252, i32 noundef 3520) #7
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 10
  %56 = ptrtoint ptr %memif to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %memif, align 4
  %tobool52.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool52.not, label %if.end47.cleanup_crit_edge, label %if.end54

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %if.end47
  %irqs_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 13
  %57 = ptrtoint ptr %irqs_size to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 7, ptr %irqs_size, align 4
  %58 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev13, align 4
  %call5.i.i224 = tail call noalias ptr @devm_kmalloc(ptr noundef %59, i32 noundef 56, i32 noundef 3520) #7
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 12
  %60 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i.i224, ptr %irqs, align 4
  %tobool59.not = icmp eq ptr %call5.i.i224, null
  br i1 %tobool59.not, label %if.end54.cleanup_crit_edge, label %for.cond.preheader

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end54
  %61 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irqs_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp63229 = icmp sgt i32 %62, 0
  br i1 %cmp63229, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0230 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x %struct.mtk_base_memif_data], ptr @memif_data, i32 0, i32 %i.0230
  %63 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %memif, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %64, i32 %i.0230, i32 3
  %65 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %arrayidx, ptr %data, align 4
  %arrayidx66 = getelementptr [7 x %struct.mtk_base_irq_data], ptr @irq_data, i32 0, i32 %i.0230
  %66 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %irqs, align 4
  %arrayidx68 = getelementptr %struct.mtk_base_afe_irq, ptr %67, i32 %i.0230
  %68 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx66, ptr %arrayidx68, align 4
  %69 = load ptr, ptr %irqs, align 4
  %irq_occupyed = getelementptr %struct.mtk_base_afe_irq, ptr %69, i32 %i.0230, i32 1
  %70 = ptrtoint ptr %irq_occupyed to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %irq_occupyed, align 4
  %71 = load ptr, ptr %memif, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %71, i32 %i.0230, i32 4
  %72 = ptrtoint ptr %irq_usage to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %i.0230, ptr %irq_usage, align 4
  %73 = load ptr, ptr %memif, align 4
  %const_irq = getelementptr %struct.mtk_base_afe_memif, ptr %73, i32 %i.0230, i32 5
  %74 = ptrtoint ptr %const_irq to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %const_irq, align 4
  %inc = add nuw nsw i32 %i.0230, 1
  %75 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irqs_size, align 4
  %cmp63 = icmp slt i32 %inc, %76
  br i1 %cmp63, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mtk_afe_hardware = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 18
  %77 = ptrtoint ptr %mtk_afe_hardware to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @mt8173_afe_hardware, ptr %mtk_afe_hardware, align 4
  %memif_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 19
  %78 = ptrtoint ptr %memif_fs to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @mt8173_memif_fs, ptr %memif_fs, align 4
  %irq_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 20
  %79 = ptrtoint ptr %irq_fs to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @mt8173_irq_fs, ptr %irq_fs, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i218, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %81 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %for.end.if.end84_crit_edge, label %if.then78

for.end.if.end84_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then78:                                        ; preds = %for.end
  %call80 = tail call i32 @mt8173_afe_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.if.end84_crit_edge, label %if.then78.err_pm_disable_crit_edge

if.then78.err_pm_disable_crit_edge:               ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.then78.if.end84_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.end84:                                         ; preds = %if.then78.if.end84_crit_edge, %for.end.if.end84_crit_edge
  %reg_back_up_list = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 4
  %82 = ptrtoint ptr %reg_back_up_list to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @mt8173_afe_backup_list, ptr %reg_back_up_list, align 4
  %reg_back_up_list_num = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 6
  %83 = ptrtoint ptr %reg_back_up_list_num to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 14, ptr %reg_back_up_list_num, align 4
  %runtime_resume = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 8
  %84 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @mt8173_afe_runtime_resume, ptr %runtime_resume, align 4
  %runtime_suspend = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i218, i32 0, i32 7
  %85 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @mt8173_afe_runtime_suspend, ptr %runtime_suspend, align 4
  %call86 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mtk_afe_pcm_platform, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end84.err_pm_disable_crit_edge

if.end84.err_pm_disable_crit_edge:                ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end89:                                         ; preds = %if.end84
  %call.i225 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #7
  %tobool92.not = icmp eq ptr %call.i225, null
  br i1 %tobool92.not, label %if.end89.err_pm_disable_crit_edge, label %if.end94

if.end89.err_pm_disable_crit_edge:                ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end94:                                         ; preds = %if.end89
  %call96 = tail call i32 @snd_soc_component_initialize(ptr noundef nonnull %call.i225, ptr noundef nonnull @mt8173_afe_pcm_dai_component, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.end94.err_pm_disable_crit_edge

if.end94.err_pm_disable_crit_edge:                ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end99:                                         ; preds = %if.end94
  %debugfs_prefix = getelementptr inbounds %struct.snd_soc_component, ptr %call.i225, i32 0, i32 26
  %86 = ptrtoint ptr %debugfs_prefix to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @.str.11, ptr %debugfs_prefix, align 4
  %call100 = tail call i32 @snd_soc_add_component(ptr noundef nonnull %call.i225, ptr noundef nonnull @mt8173_afe_pcm_dais, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end103, label %if.end99.err_pm_disable_crit_edge

if.end99.err_pm_disable_crit_edge:                ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end103:                                        ; preds = %if.end99
  %call.i226 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 256, i32 noundef 3520) #7
  %tobool106.not = icmp eq ptr %call.i226, null
  br i1 %tobool106.not, label %if.end103.err_pm_disable_crit_edge, label %if.end108

if.end103.err_pm_disable_crit_edge:               ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end108:                                        ; preds = %if.end103
  %call110 = tail call i32 @snd_soc_component_initialize(ptr noundef nonnull %call.i226, ptr noundef nonnull @mt8173_afe_hdmi_dai_component, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end108.err_pm_disable_crit_edge

if.end108.err_pm_disable_crit_edge:               ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_disable

if.end113:                                        ; preds = %if.end108
  %debugfs_prefix114 = getelementptr inbounds %struct.snd_soc_component, ptr %call.i226, i32 0, i32 26
  %87 = ptrtoint ptr %debugfs_prefix114 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @.str.12, ptr %debugfs_prefix114, align 4
  %call115 = tail call i32 @snd_soc_add_component(ptr noundef nonnull %call.i226, ptr noundef nonnull @mt8173_afe_hdmi_dais, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.end121, label %err_cleanup_components

do.end121:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

err_cleanup_components:                           ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #7
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_cleanup_components, %if.end108.err_pm_disable_crit_edge, %if.end103.err_pm_disable_crit_edge, %if.end99.err_pm_disable_crit_edge, %if.end94.err_pm_disable_crit_edge, %if.end89.err_pm_disable_crit_edge, %if.end84.err_pm_disable_crit_edge, %if.then78.err_pm_disable_crit_edge
  %ret.0 = phi i32 [ %call86, %if.end84.err_pm_disable_crit_edge ], [ %call96, %if.end94.err_pm_disable_crit_edge ], [ %call100, %if.end99.err_pm_disable_crit_edge ], [ %call110, %if.end108.err_pm_disable_crit_edge ], [ %call115, %err_cleanup_components ], [ %call80, %if.then78.err_pm_disable_crit_edge ], [ -12, %if.end89.err_pm_disable_crit_edge ], [ -12, %if.end103.err_pm_disable_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %do.end121, %if.end54.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end45, %if.then36, %if.then27, %do.end, %if.then15, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then15 ], [ %call.i220, %do.end ], [ %7, %if.then27 ], [ %9, %if.then36 ], [ %50, %do.end45 ], [ %ret.0, %err_pm_disable ], [ 0, %do.end121 ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end47.cleanup_crit_edge ], [ -12, %if.end54.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_pcm_dev_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @mt8173_afe_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %reg_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_value) #7
  %0 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_value, align 4, !annotation !208
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 932, ptr noundef nonnull %reg_value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %memif1 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 10
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 12
  %3 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %memif1, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %for.cond.preheader.cleanup_crit_edge, label %if.end4

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #10
  %9 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 255, ptr %reg_value, align 4
  br label %err_irq

if.end4:                                          ; preds = %for.cond.preheader
  %10 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irqs, align 4
  %arrayidx6 = getelementptr %struct.mtk_base_afe_irq, ptr %11, i32 %6
  %12 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_value, align 4
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6, align 4
  %irq_clr_shift = getelementptr inbounds %struct.mtk_base_irq_data, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %irq_clr_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_clr_shift, align 4
  %shl = shl nuw i32 1, %17
  %and = and i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %substream = getelementptr %struct.mtk_base_afe_memif, ptr %4, i32 0, i32 2
  %18 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %20 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memif1, align 4
  %irq_usage.1 = getelementptr %struct.mtk_base_afe_memif, ptr %21, i32 1, i32 4
  %22 = ptrtoint ptr %irq_usage.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_usage.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2.1 = icmp slt i32 %23, 0
  br i1 %cmp2.1, label %cleanup.cleanup.1_crit_edge, label %if.end4.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end4.1:                                        ; preds = %cleanup
  %24 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irqs, align 4
  %arrayidx6.1 = getelementptr %struct.mtk_base_afe_irq, ptr %25, i32 %23
  %26 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg_value, align 4
  %28 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx6.1, align 4
  %irq_clr_shift.1 = getelementptr inbounds %struct.mtk_base_irq_data, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %irq_clr_shift.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq_clr_shift.1, align 4
  %shl.1 = shl nuw i32 1, %31
  %and.1 = and i32 %shl.1, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool7.not.1, label %if.end4.1.cleanup.1_crit_edge, label %if.end9.1

if.end4.1.cleanup.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1

if.end9.1:                                        ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #9
  %substream.1 = getelementptr %struct.mtk_base_afe_memif, ptr %21, i32 1, i32 2
  %32 = ptrtoint ptr %substream.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %substream.1, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %33) #7
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end9.1, %if.end4.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %34 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memif1, align 4
  %irq_usage.2 = getelementptr %struct.mtk_base_afe_memif, ptr %35, i32 2, i32 4
  %36 = ptrtoint ptr %irq_usage.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq_usage.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp2.2 = icmp slt i32 %37, 0
  br i1 %cmp2.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end4.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end4.2:                                        ; preds = %cleanup.1
  %38 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irqs, align 4
  %arrayidx6.2 = getelementptr %struct.mtk_base_afe_irq, ptr %39, i32 %37
  %40 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg_value, align 4
  %42 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6.2, align 4
  %irq_clr_shift.2 = getelementptr inbounds %struct.mtk_base_irq_data, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %irq_clr_shift.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq_clr_shift.2, align 4
  %shl.2 = shl nuw i32 1, %45
  %and.2 = and i32 %shl.2, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool7.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool7.not.2, label %if.end4.2.cleanup.2_crit_edge, label %if.end9.2

if.end4.2.cleanup.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.2

if.end9.2:                                        ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #9
  %substream.2 = getelementptr %struct.mtk_base_afe_memif, ptr %35, i32 2, i32 2
  %46 = ptrtoint ptr %substream.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %substream.2, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %47) #7
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end9.2, %if.end4.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %48 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %memif1, align 4
  %irq_usage.3 = getelementptr %struct.mtk_base_afe_memif, ptr %49, i32 3, i32 4
  %50 = ptrtoint ptr %irq_usage.3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_usage.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp2.3 = icmp slt i32 %51, 0
  br i1 %cmp2.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end4.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.end4.3:                                        ; preds = %cleanup.2
  %52 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %irqs, align 4
  %arrayidx6.3 = getelementptr %struct.mtk_base_afe_irq, ptr %53, i32 %51
  %54 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reg_value, align 4
  %56 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx6.3, align 4
  %irq_clr_shift.3 = getelementptr inbounds %struct.mtk_base_irq_data, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %irq_clr_shift.3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %irq_clr_shift.3, align 4
  %shl.3 = shl nuw i32 1, %59
  %and.3 = and i32 %shl.3, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool7.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool7.not.3, label %if.end4.3.cleanup.3_crit_edge, label %if.end9.3

if.end4.3.cleanup.3_crit_edge:                    ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.3

if.end9.3:                                        ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #9
  %substream.3 = getelementptr %struct.mtk_base_afe_memif, ptr %49, i32 3, i32 2
  %60 = ptrtoint ptr %substream.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %substream.3, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %61) #7
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end9.3, %if.end4.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %62 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %memif1, align 4
  %irq_usage.4 = getelementptr %struct.mtk_base_afe_memif, ptr %63, i32 4, i32 4
  %64 = ptrtoint ptr %irq_usage.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq_usage.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp2.4 = icmp slt i32 %65, 0
  br i1 %cmp2.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end4.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

if.end4.4:                                        ; preds = %cleanup.3
  %66 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %irqs, align 4
  %arrayidx6.4 = getelementptr %struct.mtk_base_afe_irq, ptr %67, i32 %65
  %68 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %reg_value, align 4
  %70 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx6.4, align 4
  %irq_clr_shift.4 = getelementptr inbounds %struct.mtk_base_irq_data, ptr %71, i32 0, i32 10
  %72 = ptrtoint ptr %irq_clr_shift.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq_clr_shift.4, align 4
  %shl.4 = shl nuw i32 1, %73
  %and.4 = and i32 %shl.4, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool7.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool7.not.4, label %if.end4.4.cleanup.4_crit_edge, label %if.end9.4

if.end4.4.cleanup.4_crit_edge:                    ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.4

if.end9.4:                                        ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #9
  %substream.4 = getelementptr %struct.mtk_base_afe_memif, ptr %63, i32 4, i32 2
  %74 = ptrtoint ptr %substream.4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %substream.4, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %75) #7
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end9.4, %if.end4.4.cleanup.4_crit_edge, %cleanup.3.cleanup.4_crit_edge
  %76 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %memif1, align 4
  %irq_usage.5 = getelementptr %struct.mtk_base_afe_memif, ptr %77, i32 5, i32 4
  %78 = ptrtoint ptr %irq_usage.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq_usage.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp2.5 = icmp slt i32 %79, 0
  br i1 %cmp2.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end4.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

if.end4.5:                                        ; preds = %cleanup.4
  %80 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %irqs, align 4
  %arrayidx6.5 = getelementptr %struct.mtk_base_afe_irq, ptr %81, i32 %79
  %82 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %reg_value, align 4
  %84 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx6.5, align 4
  %irq_clr_shift.5 = getelementptr inbounds %struct.mtk_base_irq_data, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %irq_clr_shift.5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %irq_clr_shift.5, align 4
  %shl.5 = shl nuw i32 1, %87
  %and.5 = and i32 %shl.5, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool7.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool7.not.5, label %if.end4.5.cleanup.5_crit_edge, label %if.end9.5

if.end4.5.cleanup.5_crit_edge:                    ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.5

if.end9.5:                                        ; preds = %if.end4.5
  call void @__sanitizer_cov_trace_pc() #9
  %substream.5 = getelementptr %struct.mtk_base_afe_memif, ptr %77, i32 5, i32 2
  %88 = ptrtoint ptr %substream.5 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %substream.5, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %89) #7
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end9.5, %if.end4.5.cleanup.5_crit_edge, %cleanup.4.cleanup.5_crit_edge
  %90 = ptrtoint ptr %memif1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %memif1, align 4
  %irq_usage.6 = getelementptr %struct.mtk_base_afe_memif, ptr %91, i32 6, i32 4
  %92 = ptrtoint ptr %irq_usage.6 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq_usage.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp2.6 = icmp slt i32 %93, 0
  br i1 %cmp2.6, label %cleanup.5.err_irq_crit_edge, label %if.end4.6

cleanup.5.err_irq_crit_edge:                      ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end4.6:                                        ; preds = %cleanup.5
  %94 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %irqs, align 4
  %arrayidx6.6 = getelementptr %struct.mtk_base_afe_irq, ptr %95, i32 %93
  %96 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %reg_value, align 4
  %98 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx6.6, align 4
  %irq_clr_shift.6 = getelementptr inbounds %struct.mtk_base_irq_data, ptr %99, i32 0, i32 10
  %100 = ptrtoint ptr %irq_clr_shift.6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq_clr_shift.6, align 4
  %shl.6 = shl nuw i32 1, %101
  %and.6 = and i32 %shl.6, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool7.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool7.not.6, label %if.end4.6.err_irq_crit_edge, label %if.end9.6

if.end4.6.err_irq_crit_edge:                      ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end9.6:                                        ; preds = %if.end4.6
  call void @__sanitizer_cov_trace_pc() #9
  %substream.6 = getelementptr %struct.mtk_base_afe_memif, ptr %91, i32 6, i32 2
  %102 = ptrtoint ptr %substream.6 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %substream.6, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %103) #7
  br label %err_irq

err_irq:                                          ; preds = %if.end9.6, %if.end4.6.err_irq_crit_edge, %cleanup.5.err_irq_crit_edge, %do.end
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %106 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %reg_value, align 4
  %and12 = and i32 %107, 255
  %call13 = call i32 @regmap_write(ptr noundef %105, i32 noundef 936, i32 noundef %and12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_value) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_memif_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.38) #7
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %memif2 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %memif2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memif2, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %7, i32 %13, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %if.else [
    i32 3, label %entry.if.then_crit_edge
    i32 5, label %entry.if.then_crit_edge18
  ]

entry.if.then_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge18
  %19 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %rate, label %if.then.cleanup_crit_edge [
    i32 8000, label %if.then.if.end_crit_edge
    i32 16000, label %sw.bb8
    i32 32000, label %sw.bb9
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.bb9:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %rate, label %if.else.if.end_crit_edge [
    i32 8000, label %if.else.if.then.i_crit_edge
    i32 11025, label %if.then.fold.split.i
    i32 12000, label %if.then.fold.split9.i
    i32 16000, label %if.then.fold.split10.i
    i32 22050, label %if.then.fold.split11.i
    i32 24000, label %if.then.fold.split12.i
    i32 32000, label %if.then.fold.split13.i
    i32 44100, label %if.then.fold.split14.i
    i32 48000, label %if.then.fold.split15.i
    i32 88000, label %if.then.fold.split16.i
    i32 96000, label %if.then.fold.split17.i
    i32 174000, label %if.then.fold.split18.i
    i32 192000, label %if.then.fold.split19.i
  ]

if.else.if.then.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split.i:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split9.i:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %if.else.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.else.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ], [ 10, %if.then.fold.split17.i ], [ 11, %if.then.fold.split18.i ], [ 12, %if.then.fold.split19.i ]
  %regvalue.i = getelementptr [13 x %struct.mt8173_afe_rate], ptr @mt8173_afe_i2s_rates, i32 0, i32 %i.07.lcssa.i, i32 1
  %21 = ptrtoint ptr %regvalue.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regvalue.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.else.if.end_crit_edge, %sw.bb9, %sw.bb8, %if.then.if.end_crit_edge
  %fs.0 = phi i32 [ 2, %sw.bb9 ], [ 1, %sw.bb8 ], [ 0, %if.then.if.end_crit_edge ], [ %22, %if.then.i ], [ -22, %if.else.if.end_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %fs.0, %if.end ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt8173_irq_fs(ptr nocapture noundef readnone %substream, i32 noundef %rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %rate, label %entry.mt8173_afe_i2s_fs.exit_crit_edge [
    i32 8000, label %entry.if.then.i_crit_edge
    i32 11025, label %if.then.fold.split.i
    i32 12000, label %if.then.fold.split9.i
    i32 16000, label %if.then.fold.split10.i
    i32 22050, label %if.then.fold.split11.i
    i32 24000, label %if.then.fold.split12.i
    i32 32000, label %if.then.fold.split13.i
    i32 44100, label %if.then.fold.split14.i
    i32 48000, label %if.then.fold.split15.i
    i32 88000, label %if.then.fold.split16.i
    i32 96000, label %if.then.fold.split17.i
    i32 174000, label %if.then.fold.split18.i
    i32 192000, label %if.then.fold.split19.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.mt8173_afe_i2s_fs.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_i2s_fs.exit

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split17.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split18.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split19.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split19.i, %if.then.fold.split18.i, %if.then.fold.split17.i, %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split9.i, %if.then.fold.split.i, %entry.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split9.i ], [ 3, %if.then.fold.split10.i ], [ 4, %if.then.fold.split11.i ], [ 5, %if.then.fold.split12.i ], [ 6, %if.then.fold.split13.i ], [ 7, %if.then.fold.split14.i ], [ 8, %if.then.fold.split15.i ], [ 9, %if.then.fold.split16.i ], [ 10, %if.then.fold.split17.i ], [ 11, %if.then.fold.split18.i ], [ 12, %if.then.fold.split19.i ]
  %regvalue.i = getelementptr [13 x %struct.mt8173_afe_rate], ptr @mt8173_afe_i2s_rates, i32 0, i32 %i.07.lcssa.i, i32 1
  %1 = ptrtoint ptr %regvalue.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regvalue.i, align 4
  br label %mt8173_afe_i2s_fs.exit

mt8173_afe_i2s_fs.exit:                           ; preds = %if.then.i, %entry.mt8173_afe_i2s_fs.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then.i ], [ -22, %entry.mt8173_afe_i2s_fs.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %arrayidx3 = getelementptr [10 x ptr], ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %call.i83 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i84 = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i84, label %if.end.i87, label %if.end.err_infra_crit_edge

if.end.err_infra_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_infra

if.end.i87:                                       ; preds = %if.end
  %call1.i85 = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool2.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool2.not.i86, label %if.end7, label %if.end.i87.err_infra.sink.split_crit_edge

if.end.i87.err_infra.sink.split_crit_edge:        ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_infra.sink.split

if.end7:                                          ; preds = %if.end.i87
  %arrayidx9 = getelementptr [10 x ptr], ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %call.i91 = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end.i95, label %if.end7.err_top_aud_bus_crit_edge

if.end7.err_top_aud_bus_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_top_aud_bus

if.end.i95:                                       ; preds = %if.end7
  %call1.i93 = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool2.not.i94 = icmp eq i32 %call1.i93, 0
  br i1 %tobool2.not.i94, label %if.end13, label %if.end.i95.err_top_aud_bus.sink.split_crit_edge

if.end.i95.err_top_aud_bus.sink.split_crit_edge:  ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_top_aud_bus.sink.split

if.end13:                                         ; preds = %if.end.i95
  %arrayidx15 = getelementptr [10 x ptr], ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 4
  %call.i99 = tail call i32 @clk_prepare(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end.i103, label %if.end13.err_top_aud_crit_edge

if.end13.err_top_aud_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_top_aud

if.end.i103:                                      ; preds = %if.end13
  %call1.i101 = tail call i32 @clk_enable(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool2.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool2.not.i102, label %if.end19, label %if.end.i103.err_top_aud.sink.split_crit_edge

if.end.i103.err_top_aud.sink.split_crit_edge:     ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_top_aud.sink.split

if.end19:                                         ; preds = %if.end.i103
  %arrayidx21 = getelementptr [10 x ptr], ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx21, align 4
  %call22 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.err_bck0_crit_edge

if.end19.err_bck0_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bck0

if.end25:                                         ; preds = %if.end19
  %arrayidx27 = getelementptr [10 x ptr], ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx27, align 4
  %call28 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %err_i2s1_m

if.end31:                                         ; preds = %if.end25
  %arrayidx33 = getelementptr [10 x ptr], ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx33, align 4
  %call34 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.err_i2s2_m_crit_edge

if.end31.err_i2s2_m_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_i2s2_m

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 108, i32 noundef 24, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 948, i32 noundef 255, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

err_i2s1_m:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx27, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  tail call void @clk_unprepare(ptr noundef %27) #7
  br label %err_i2s2_m

err_i2s2_m:                                       ; preds = %err_i2s1_m, %if.end31.err_i2s2_m_crit_edge
  %ret.0 = phi i32 [ %call28, %err_i2s1_m ], [ %call34, %if.end31.err_i2s2_m_crit_edge ]
  %arrayidx48 = getelementptr [10 x ptr], ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx48, align 4
  tail call void @clk_disable(ptr noundef %29) #7
  tail call void @clk_unprepare(ptr noundef %29) #7
  br label %err_bck0

err_bck0:                                         ; preds = %err_i2s2_m, %if.end19.err_bck0_crit_edge
  %ret.1 = phi i32 [ %call22, %if.end19.err_bck0_crit_edge ], [ %ret.0, %err_i2s2_m ]
  %30 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx15, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  br label %err_top_aud.sink.split

err_top_aud.sink.split:                           ; preds = %err_bck0, %if.end.i103.err_top_aud.sink.split_crit_edge
  %.sink = phi ptr [ %31, %err_bck0 ], [ %11, %if.end.i103.err_top_aud.sink.split_crit_edge ]
  %ret.2.ph = phi i32 [ %ret.1, %err_bck0 ], [ %call1.i101, %if.end.i103.err_top_aud.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #7
  br label %err_top_aud

err_top_aud:                                      ; preds = %err_top_aud.sink.split, %if.end13.err_top_aud_crit_edge
  %ret.2 = phi i32 [ %call.i99, %if.end13.err_top_aud_crit_edge ], [ %ret.2.ph, %err_top_aud.sink.split ]
  %32 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx9, align 4
  tail call void @clk_disable(ptr noundef %33) #7
  br label %err_top_aud_bus.sink.split

err_top_aud_bus.sink.split:                       ; preds = %err_top_aud, %if.end.i95.err_top_aud_bus.sink.split_crit_edge
  %.sink119 = phi ptr [ %33, %err_top_aud ], [ %9, %if.end.i95.err_top_aud_bus.sink.split_crit_edge ]
  %ret.3.ph = phi i32 [ %ret.2, %err_top_aud ], [ %call1.i93, %if.end.i95.err_top_aud_bus.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink119) #7
  br label %err_top_aud_bus

err_top_aud_bus:                                  ; preds = %err_top_aud_bus.sink.split, %if.end7.err_top_aud_bus_crit_edge
  %ret.3 = phi i32 [ %call.i91, %if.end7.err_top_aud_bus_crit_edge ], [ %ret.3.ph, %err_top_aud_bus.sink.split ]
  %34 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  br label %err_infra.sink.split

err_infra.sink.split:                             ; preds = %err_top_aud_bus, %if.end.i87.err_infra.sink.split_crit_edge
  %.sink120 = phi ptr [ %35, %err_top_aud_bus ], [ %7, %if.end.i87.err_infra.sink.split_crit_edge ]
  %ret.4.ph = phi i32 [ %ret.3, %err_top_aud_bus ], [ %call1.i85, %if.end.i87.err_infra.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink120) #7
  br label %err_infra

err_infra:                                        ; preds = %err_infra.sink.split, %if.end.err_infra_crit_edge
  %ret.4 = phi i32 [ %call.i83, %if.end.err_infra_crit_edge ], [ %ret.4.ph, %err_infra.sink.split ]
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %37) #7
  tail call void @clk_unprepare(ptr noundef %37) #7
  br label %cleanup

cleanup:                                          ; preds = %err_infra, %if.end37, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %err_infra ], [ 0, %if.end37 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_priv, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx = getelementptr [10 x ptr], ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %arrayidx5 = getelementptr [10 x ptr], ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx5, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %arrayidx7 = getelementptr [10 x ptr], ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  %arrayidx9 = getelementptr [10 x ptr], ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %arrayidx11 = getelementptr [10 x ptr], ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11, align 4
  tail call void @clk_disable(ptr noundef %17) #7
  tail call void @clk_unprepare(ptr noundef %17) #7
  %arrayidx13 = getelementptr [10 x ptr], ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_i2s_startup(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt8173_afe_i2s_shutdown(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !208
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 56, ptr noundef nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.end.mt8173_afe_set_i2s_enable.exit_crit_edge, label %if.end.i

if.end.mt8173_afe_set_i2s_enable.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_set_i2s_enable.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 56, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i16.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 52, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %mt8173_afe_set_i2s_enable.exit

mt8173_afe_set_i2s_enable.exit:                   ; preds = %if.end.i, %if.end.mt8173_afe_set_i2s_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i5 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %mt8173_afe_set_i2s_enable.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_i2s_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr [10 x ptr], ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.mt8173_afe_dais_set_clks.exit_crit_edge, label %if.then.i

entry.mt8173_afe_dais_set_clks.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_dais_set_clks.exit

if.then.i:                                        ; preds = %entry
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %mul = shl i32 %11, 8
  %call.i = tail call i32 @clk_set_rate(ptr noundef nonnull %9, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.mt8173_afe_dais_set_clks.exit_crit_edge, label %cleanup.sink.split.i

if.then.i.mt8173_afe_dais_set_clks.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_dais_set_clks.exit

cleanup.sink.split.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev12.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.65) #10
  br label %mt8173_afe_dais_set_clks.exit

mt8173_afe_dais_set_clks.exit:                    ; preds = %cleanup.sink.split.i, %if.then.i.mt8173_afe_dais_set_clks.exit_crit_edge, %entry.mt8173_afe_dais_set_clks.exit_crit_edge
  %arrayidx4 = getelementptr [10 x ptr], ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4, align 4
  %tobool.not.i22 = icmp eq ptr %15, null
  br i1 %tobool.not.i22, label %mt8173_afe_dais_set_clks.exit.mt8173_afe_dais_set_clks.exit29_crit_edge, label %if.then.i25

mt8173_afe_dais_set_clks.exit.mt8173_afe_dais_set_clks.exit29_crit_edge: ; preds = %mt8173_afe_dais_set_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_dais_set_clks.exit29

if.then.i25:                                      ; preds = %mt8173_afe_dais_set_clks.exit
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %mul6 = shl i32 %17, 8
  %call.i23 = tail call i32 @clk_set_rate(ptr noundef nonnull %15, i32 noundef %mul6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool1.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool1.not.i24, label %if.then.i25.mt8173_afe_dais_set_clks.exit29_crit_edge, label %cleanup.sink.split.i28

if.then.i25.mt8173_afe_dais_set_clks.exit29_crit_edge: ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_dais_set_clks.exit29

cleanup.sink.split.i28:                           ; preds = %if.then.i25
  call void @__sanitizer_cov_trace_pc() #9
  %dev12.i27 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %dev12.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev12.i27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.65) #10
  br label %mt8173_afe_dais_set_clks.exit29

mt8173_afe_dais_set_clks.exit29:                  ; preds = %cleanup.sink.split.i28, %if.then.i25.mt8173_afe_dais_set_clks.exit29_crit_edge, %mt8173_afe_dais_set_clks.exit.mt8173_afe_dais_set_clks.exit29_crit_edge
  %20 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime1, align 4
  %rate9 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %rate9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate9, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %23, label %mt8173_afe_dais_set_clks.exit29.cleanup_crit_edge [
    i32 8000, label %mt8173_afe_dais_set_clks.exit29.if.end_crit_edge
    i32 11025, label %if.then.fold.split.i.i
    i32 12000, label %if.then.fold.split9.i.i
    i32 16000, label %if.then.fold.split10.i.i
    i32 22050, label %if.then.fold.split11.i.i
    i32 24000, label %if.then.fold.split12.i.i
    i32 32000, label %if.then.fold.split13.i.i
    i32 44100, label %if.then.fold.split14.i.i
    i32 48000, label %if.then.fold.split15.i.i
    i32 88000, label %if.then.fold.split16.i.i
    i32 96000, label %if.then.fold.split17.i.i
    i32 174000, label %if.then.fold.split18.i.i
    i32 192000, label %if.then.fold.split19.i.i
  ]

mt8173_afe_dais_set_clks.exit29.if.end_crit_edge: ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mt8173_afe_dais_set_clks.exit29.cleanup_crit_edge: ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.fold.split.i.i:                           ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split9.i.i:                          ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split10.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split11.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split12.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split13.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split14.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split15.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split16.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split17.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split18.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.fold.split19.i.i:                         ; preds = %mt8173_afe_dais_set_clks.exit29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.then.fold.split19.i.i, %if.then.fold.split18.i.i, %if.then.fold.split17.i.i, %if.then.fold.split16.i.i, %if.then.fold.split15.i.i, %if.then.fold.split14.i.i, %if.then.fold.split13.i.i, %if.then.fold.split12.i.i, %if.then.fold.split11.i.i, %if.then.fold.split10.i.i, %if.then.fold.split9.i.i, %if.then.fold.split.i.i, %mt8173_afe_dais_set_clks.exit29.if.end_crit_edge
  %i.07.lcssa.i.i = phi i32 [ 0, %mt8173_afe_dais_set_clks.exit29.if.end_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 2, %if.then.fold.split9.i.i ], [ 3, %if.then.fold.split10.i.i ], [ 4, %if.then.fold.split11.i.i ], [ 5, %if.then.fold.split12.i.i ], [ 6, %if.then.fold.split13.i.i ], [ 7, %if.then.fold.split14.i.i ], [ 8, %if.then.fold.split15.i.i ], [ 9, %if.then.fold.split16.i.i ], [ 10, %if.then.fold.split17.i.i ], [ 11, %if.then.fold.split18.i.i ], [ 12, %if.then.fold.split19.i.i ]
  %regvalue.i.i = getelementptr [13 x %struct.mt8173_afe_rate], ptr @mt8173_afe_i2s_rates, i32 0, i32 %i.07.lcssa.i.i, i32 1
  %25 = ptrtoint ptr %regvalue.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regvalue.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 288, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 1536, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %and.i = shl i32 %26, 8
  %shl.i = and i32 %and.i, 3840
  %or4.i = or i32 %shl.i, 4104
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 56, i32 noundef -2, i32 noundef %or4.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 52, i32 noundef -2, i32 noundef %or4.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val.i, align 4, !annotation !208
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call.i31 = call i32 @regmap_read(ptr noundef %37, i32 noundef 56, ptr noundef nonnull %val.i) #7
  %38 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val.i, align 4
  %and.i32 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %cmp.i.not = icmp eq i32 %and.i32, 0
  br i1 %cmp.i.not, label %if.end.i34, label %if.end.mt8173_afe_set_i2s_enable.exit_crit_edge

if.end.mt8173_afe_set_i2s_enable.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_set_i2s_enable.exit

if.end.i34:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call.i.i33 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 56, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call.i16.i = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 52, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %mt8173_afe_set_i2s_enable.exit

mt8173_afe_set_i2s_enable.exit:                   ; preds = %if.end.i34, %if.end.mt8173_afe_set_i2s_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

cleanup:                                          ; preds = %mt8173_afe_set_i2s_enable.exit, %mt8173_afe_dais_set_clks.exit29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mt8173_afe_set_i2s_enable.exit ], [ -22, %mt8173_afe_dais_set_clks.exit29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_active(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_hdmi_startup(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [10 x ptr], ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [10 x ptr], ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end3.i_crit_edge, label %if.then.i

if.end.if.end3.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @clk_prepare(ptr noundef nonnull %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef nonnull %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end3.i_crit_edge, label %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.i

if.end.i.i.if.end3.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i.i.if.end3.i_crit_edge, %if.end.if.end3.i_crit_edge
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %if.end3.i.cleanup_crit_edge, label %if.then5.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5.i:                                       ; preds = %if.end3.i
  %call.i1.i = tail call i32 @clk_prepare(ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %if.end.i5.i, label %if.then5.i.cleanup.sink.split.i_crit_edge

if.then5.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i5.i:                                      ; preds = %if.then5.i
  %call1.i3.i = tail call i32 @clk_enable(ptr noundef nonnull %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool2.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool2.not.i4.i, label %if.end.i5.i.cleanup_crit_edge, label %if.end.i5.i.cleanup.sink.split.sink.split.i_crit_edge

if.end.i5.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.sink.split.i

if.end.i5.i.cleanup_crit_edge:                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.sink.split.i:                  ; preds = %if.end.i5.i.cleanup.sink.split.sink.split.i_crit_edge, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge
  %b_ck.sink.i = phi ptr [ %7, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %9, %if.end.i5.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %.str.76.sink.ph.i = phi ptr [ @.str.73, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge ], [ @.str.76, %if.end.i5.i.cleanup.sink.split.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef nonnull %b_ck.sink.i) #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.then5.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.76.sink.i = phi ptr [ @.str.73, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.76, %if.then5.i.cleanup.sink.split.i_crit_edge ], [ %.str.76.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %dev12.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %.str.76.sink.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end.i5.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt8173_afe_hdmi_shutdown(ptr nocapture noundef readnone %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %call1 = tail call i32 @snd_soc_dai_active(ptr noundef %dai) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [10 x ptr], ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [10 x ptr], ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %7) #7
  tail call void @clk_unprepare(ptr noundef nonnull %7) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %9) #7
  tail call void @clk_unprepare(ptr noundef nonnull %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_hdmi_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %6 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr [10 x ptr], ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %arrayidx3 = getelementptr [10 x ptr], ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channels, align 8
  %mul5 = shl i32 %11, 5
  %mul6 = mul i32 %mul5, %15
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %mul = shl i32 %11, 7
  %call.i = tail call i32 @clk_set_rate(ptr noundef nonnull %9, i32 noundef %mul) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end3.i_crit_edge, label %if.then.i.cleanup.sink.split.i_crit_edge

if.then.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %tobool4.not.i = icmp eq ptr %13, null
  br i1 %tobool4.not.i, label %if.end3.i.mt8173_afe_dais_set_clks.exit_crit_edge, label %if.then5.i

if.end3.i.mt8173_afe_dais_set_clks.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_dais_set_clks.exit

if.then5.i:                                       ; preds = %if.end3.i
  %call6.i = tail call i32 @clk_set_rate(ptr noundef nonnull %13, i32 noundef %mul6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.mt8173_afe_dais_set_clks.exit_crit_edge, label %if.then5.i.cleanup.sink.split.i_crit_edge

if.then5.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.then5.i.mt8173_afe_dais_set_clks.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8173_afe_dais_set_clks.exit

cleanup.sink.split.i:                             ; preds = %if.then5.i.cleanup.sink.split.i_crit_edge, %if.then.i.cleanup.sink.split.i_crit_edge
  %.str.68.sink.i = phi ptr [ @.str.65, %if.then.i.cleanup.sink.split.i_crit_edge ], [ @.str.68, %if.then5.i.cleanup.sink.split.i_crit_edge ]
  %dev12.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %.str.68.sink.i) #10
  br label %mt8173_afe_dais_set_clks.exit

mt8173_afe_dais_set_clks.exit:                    ; preds = %cleanup.sink.split.i, %if.then5.i.mt8173_afe_dais_set_clks.exit_crit_edge, %if.end3.i.mt8173_afe_dais_set_clks.exit_crit_edge
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 1352, i32 noundef -2, i32 noundef 520102430, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 8
  %switch.tableidx = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %22 = icmp ult i32 %switch.tableidx, 8
  br i1 %22, label %switch.lookup, label %mt8173_afe_dais_set_clks.exit.sw.epilog_crit_edge

mt8173_afe_dais_set_clks.exit.sw.epilog_crit_edge: ; preds = %mt8173_afe_dais_set_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %mt8173_afe_dais_set_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.mt8173_afe_hdmi_prepare, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %mt8173_afe_dais_set_clks.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %mt8173_afe_dais_set_clks.exit.sw.epilog_crit_edge ]
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 1356, i32 noundef 65535, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels, align 8
  %shl = shl i32 %29, 4
  %call.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 880, i32 noundef 240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8173_afe_hdmi_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dai, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %cmd, ptr noundef %7) #10
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge29
    i32 0, label %entry.sw.bb8_crit_edge
    i32 5, label %entry.sw.bb8_crit_edge30
  ]

entry.sw.bb8_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 3145728, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 912, i32 noundef 16362248) #7
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 880, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 1352, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge30
  %regmap9 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap9, align 4
  %call.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 1352, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap9, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 880, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %21 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap9, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef 3145728, i32 noundef 3145728, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb8 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 106)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !195, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__initcall__kmod_mt8173_afe_pcm__241_1231_mt8173_afe_pcm_driver_init6, !1, !"__initcall__kmod_mt8173_afe_pcm__241_1231_mt8173_afe_pcm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1231, i32 1}
!2 = !{ptr @__exitcall_mt8173_afe_pcm_driver_exit, !1, !"__exitcall_mt8173_afe_pcm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1233, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1234, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1235, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1223, i32 14}
!12 = !{ptr @mt8173_afe_pcm_driver, !13, !"mt8173_afe_pcm_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1221, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1079, i32 14}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1081, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt8173_afe_pcm_dev_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt8173_afe_pcm_dev_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mt8173_afe_pcm_dev_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1089, i32 16}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1097, i32 3}
!29 = !{ptr @mt8173_afe_pcm_dev_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mt8173_afe_pcm_dev_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1159, i32 29}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1181, i32 30}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1190, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mt8173_afe_pcm_dev_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @mt8173_afe_pcm_dev_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 922, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mt8173_afe_irq_handler._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mt8173_afe_irq_handler._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mt8173_afe_regmap_config, !46, !"mt8173_afe_regmap_config", i1 false, i1 false}
!46 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 906, i32 35}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1041, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mt8173_afe_init_audio_clk._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt8173_afe_init_audio_clk._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 691, i32 30}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 692, i32 29}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 693, i32 33}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 694, i32 25}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 695, i32 25}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 696, i32 25}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 697, i32 25}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 698, i32 25}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 699, i32 23}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 700, i32 23}
!72 = distinct !{null, !73, !"aud_clks", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 690, i32 20}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 705, i32 11}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 721, i32 11}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 737, i32 11}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 753, i32 11}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 769, i32 11}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 785, i32 11}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 801, i32 11}
!88 = !{ptr @memif_data, !89, !"memif_data", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 703, i32 41}
!90 = !{ptr @irq_data, !91, !"irq_data", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 818, i32 39}
!92 = !{ptr @mt8173_afe_hardware, !93, !"mt8173_afe_hardware", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 153, i32 38}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 486, i32 67}
!96 = !{ptr @mt8173_afe_i2s_rates, !97, !"mt8173_afe_i2s_rates", i1 false, i1 false}
!97 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 169, i32 37}
!98 = !{ptr @mt8173_afe_backup_list, !99, !"mt8173_afe_backup_list", i1 false, i1 false}
!99 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 132, i32 27}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 673, i32 10}
!102 = !{ptr @mt8173_afe_pcm_dai_component, !103, !"mt8173_afe_pcm_dai_component", i1 false, i1 false}
!103 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 672, i32 46}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 632, i32 2}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 633, i32 2}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 634, i32 2}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 635, i32 2}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 636, i32 2}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 637, i32 2}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 639, i32 2}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 641, i32 2}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 643, i32 2}
!122 = !{ptr @.str.49, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 645, i32 2}
!124 = !{ptr @mt8173_afe_pcm_widgets, !125, !"mt8173_afe_pcm_widgets", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 630, i32 41}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 613, i32 2}
!128 = !{ptr @mt8173_afe_o03_mix, !129, !"mt8173_afe_o03_mix", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 612, i32 38}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 617, i32 2}
!132 = !{ptr @mt8173_afe_o04_mix, !133, !"mt8173_afe_o04_mix", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 616, i32 38}
!134 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 621, i32 2}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 622, i32 2}
!138 = !{ptr @mt8173_afe_o09_mix, !139, !"mt8173_afe_o09_mix", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 620, i32 38}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 626, i32 2}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 627, i32 2}
!144 = !{ptr @mt8173_afe_o10_mix, !145, !"mt8173_afe_o10_mix", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 625, i32 38}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 652, i32 3}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 656, i32 16}
!150 = !{ptr @mt8173_afe_pcm_routes, !151, !"mt8173_afe_pcm_routes", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 649, i32 40}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 557, i32 11}
!154 = !{ptr @mt8173_afe_pcm_dais, !155, !"mt8173_afe_pcm_dais", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 531, i32 34}
!156 = !{ptr @mt8173_afe_i2s_ops, !157, !"mt8173_afe_i2s_ops", i1 false, i1 false}
!157 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 518, i32 37}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 271, i32 4}
!160 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @mt8173_afe_dais_set_clks._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @mt8173_afe_dais_set_clks._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.68, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 279, i32 4}
!165 = !{ptr @mt8173_afe_dais_set_clks._entry.67, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @mt8173_afe_dais_set_clks._entry_ptr.69, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.70, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 683, i32 10}
!169 = !{ptr @mt8173_afe_hdmi_dai_component, !170, !"mt8173_afe_hdmi_dai_component", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 682, i32 46}
!171 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 669, i32 3}
!173 = !{ptr @mt8173_afe_hdmi_routes, !174, !"mt8173_afe_hdmi_routes", i1 false, i1 false}
!174 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 668, i32 40}
!175 = !{ptr @.str.72, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 596, i32 11}
!177 = !{ptr @mt8173_afe_hdmi_dais, !178, !"mt8173_afe_hdmi_dais", i1 false, i1 false}
!178 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 578, i32 34}
!179 = !{ptr @mt8173_afe_hdmi_ops, !180, !"mt8173_afe_hdmi_ops", i1 false, i1 false}
!180 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 524, i32 37}
!181 = !{ptr @.str.73, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 247, i32 4}
!183 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @mt8173_afe_dais_enable_clks._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @mt8173_afe_dais_enable_clks._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.76, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 255, i32 4}
!188 = !{ptr @mt8173_afe_dais_enable_clks._entry.75, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @mt8173_afe_dais_enable_clks._entry_ptr.77, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.78, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 439, i32 2}
!192 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @mt8173_afe_hdmi_trigger._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @mt8173_afe_hdmi_trigger._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @mt8173_afe_pcm_dt_match, !196, !"mt8173_afe_pcm_dt_match", i1 false, i1 false}
!196 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1210, i32 34}
!197 = !{ptr @mt8173_afe_pm_ops, !198, !"mt8173_afe_pm_ops", i1 false, i1 false}
!198 = !{!"../sound/soc/mediatek/mt8173/mt8173-afe-pcm.c", i32 1216, i32 32}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"auto-init"}
