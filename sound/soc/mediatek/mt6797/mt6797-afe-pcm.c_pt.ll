; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt6797/mt6797-afe-pcm.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.mtk_base_afe_dai = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head }

@mt6797_general_rate_transform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(), rate %u invalid, use %d!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt6797_general_rate_transform\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt6797/mt6797-afe-pcm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6797_general_rate_transform._entry_ptr = internal global ptr @mt6797_general_rate_transform._entry, section ".printk_index", align 4
@__initcall__kmod_snd_soc_mt6797_afe__239_910_mt6797_afe_pcm_driver_init6 = internal global ptr @mt6797_afe_pcm_driver_init, section ".initcall6.init", align 4
@mt6797_afe_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6797_afe_pcm_dev_probe, ptr @mt6797_afe_pcm_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6797_afe_pcm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6797_afe_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6797_afe_pcm_driver_exit = internal global ptr @mt6797_afe_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [78 x i8] c"snd_soc_mt6797_afe.description=Mediatek ALSA SoC AFE platform driver for 6797\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [73 x i8] c"snd_soc_mt6797_afe.author=KaiChieh Chuang <kaichieh.chuang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [69 x i8] c"snd_soc_mt6797_afe.file=sound/soc/mediatek/mt6797/snd-soc-mt6797-afe\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [34 x i8] c"snd_soc_mt6797_afe.license=GPL v2\00", section ".modinfo", align 1
@dai_memif_rate_transform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dai_memif_rate_transform\00", [39 x i8] zeroinitializer }, align 32
@dai_memif_rate_transform._entry_ptr = internal global ptr @dai_memif_rate_transform._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6797-audio\00", [19 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6797_afe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6797_afe_runtime_suspend, ptr @mt6797_afe_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 770, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init clock error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt6797_afe_pcm_dev_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry_ptr = internal global ptr @mt6797_afe_pcm_dev_probe._entry, section ".printk_index", align 4
@mt6797_afe_pcm_dev_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt6797_afe_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2124, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mt6797_afe_pcm:780:(&mt6797_afe_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@memif_data = internal constant { [8 x %struct.mtk_base_memif_data], [320 x i8] } { [8 x %struct.mtk_base_memif_data] [%struct.mtk_base_memif_data { i32 0, ptr @.str.28, i32 64, i32 68, i32 0, i32 0, i32 0, i32 0, i32 20, i32 0, i32 15, i32 20, i32 21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 1016, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 1, ptr @.str.29, i32 80, i32 84, i32 0, i32 0, i32 0, i32 0, i32 20, i32 4, i32 15, i32 20, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 1016, i32 4, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 2, ptr @.str.30, i32 864, i32 868, i32 0, i32 0, i32 0, i32 0, i32 16, i32 12, i32 15, i32 20, i32 23, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 5, i32 1016, i32 6, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 3, ptr @.str.31, i32 128, i32 140, i32 0, i32 0, i32 0, i32 0, i32 20, i32 16, i32 15, i32 20, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 3, i32 1016, i32 10, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 4, ptr @.str.32, i32 112, i32 124, i32 0, i32 0, i32 0, i32 0, i32 20, i32 12, i32 15, i32 20, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 6, i32 1016, i32 8, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 5, ptr @.str.33, i32 848, i32 860, i32 0, i32 0, i32 0, i32 0, i32 16, i32 20, i32 15, i32 16, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 9, i32 1016, i32 12, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 6, ptr @.str.34, i32 144, i32 156, i32 0, i32 0, i32 0, i32 0, i32 16, i32 24, i32 3, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 1016, i32 16, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 7, ptr @.str.35, i32 816, i32 828, i32 0, i32 0, i32 0, i32 0, i32 20, i32 30, i32 3, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 7, i32 1016, i32 18, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [320 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&afe->irq_alloc_lock\00", [43 x i8] zeroinitializer }, align 32
@irq_data = internal constant { [5 x %struct.mtk_base_irq_data], [48 x i8] } { [5 x %struct.mtk_base_irq_data] [%struct.mtk_base_irq_data { i32 0, i32 940, i32 0, i32 262143, i32 928, i32 4, i32 15, i32 928, i32 0, i32 936, i32 0, i32 0 }, %struct.mtk_base_irq_data { i32 1, i32 944, i32 0, i32 262143, i32 928, i32 8, i32 15, i32 928, i32 1, i32 936, i32 1, i32 0 }, %struct.mtk_base_irq_data { i32 2, i32 996, i32 0, i32 262143, i32 928, i32 16, i32 15, i32 928, i32 2, i32 936, i32 2, i32 0 }, %struct.mtk_base_irq_data { i32 3, i32 1000, i32 0, i32 262143, i32 928, i32 20, i32 15, i32 928, i32 3, i32 936, i32 3, i32 0 }, %struct.mtk_base_irq_data { i32 4, i32 988, i32 0, i32 262143, i32 928, i32 24, i32 15, i32 928, i32 14, i32 936, i32 6, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asys-isr\00", [23 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 816, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not request_irq for asys-isr\0A\00", [60 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry_ptr.15 = internal global ptr @mt6797_afe_pcm_dev_probe._entry.13, section ".printk_index", align 4
@mt6797_afe_pcm_dev_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.2, i32 827, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dai register i %d fail, ret %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry_ptr.18 = internal global ptr @mt6797_afe_pcm_dev_probe._entry.16, section ".printk_index", align 4
@mt6797_afe_pcm_dev_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.2, i32 836, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mtk_afe_combine_sub_dai fail, ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry_ptr.21 = internal global ptr @mt6797_afe_pcm_dev_probe._entry.19, section ".printk_index", align 4
@mt6797_afe_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 1092, i32 0, i32 0, i32 0, i32 0, i32 0, i32 393216, i32 256, i32 196608, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@mt6797_afe_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.76, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @mt6797_afe_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.8, ptr @.str.2, i32 858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"err_platform\0A\00", [18 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry_ptr.24 = internal global ptr @mt6797_afe_pcm_dev_probe._entry.22, section ".printk_index", align 4
@mt6797_afe_pcm_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.79, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.2, i32 867, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"err_dai_component\0A\00", [45 x i8] zeroinitializer }, align 32
@mt6797_afe_pcm_dev_probe._entry_ptr.27 = internal global ptr @mt6797_afe_pcm_dev_probe._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VUL\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AWB\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VUL12\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAI\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOD_DAI\00", [24 x i8] zeroinitializer }, align 32
@mt6797_afe_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 618, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(), irq status err, ret %d, status 0x%x, mcu_en 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt6797_afe_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@mt6797_afe_irq_handler._entry_ptr = internal global ptr @mt6797_afe_irq_handler._entry, section ".printk_index", align 4
@mt6797_memif_dai_driver = internal global { [8 x %struct.snd_soc_dai_driver], [320 x i8] } { [8 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.28, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.28, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.29, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.29, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.30, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.30, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.38, i32 5, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.38, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.39, i32 4, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.39, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.40, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.40, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.41, i32 7, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.41, i64 1092, i32 42, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.42, i32 6, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.42, i64 1092, i32 42, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [320 x i8] zeroinitializer }, align 32
@mt6797_memif_routes = internal constant { [18 x %struct.snd_soc_dapm_route], [248 x i8] } { [18 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.52, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.53, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.52, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.53, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.52, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.53, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.52, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.53, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.52, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.53, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }], [248 x i8] zeroinitializer }, align 32
@mtk_afe_fe_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_1\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_2\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL1_CH1\00", [24 x i8] zeroinitializer }, align 32
@memif_ul1_ch1_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL1_CH2\00", [24 x i8] zeroinitializer }, align 32
@memif_ul1_ch2_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL2_CH1\00", [24 x i8] zeroinitializer }, align 32
@memif_ul2_ch1_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL2_CH2\00", [24 x i8] zeroinitializer }, align 32
@memif_ul2_ch2_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL3_CH1\00", [24 x i8] zeroinitializer }, align 32
@memif_ul3_ch1_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL3_CH2\00", [24 x i8] zeroinitializer }, align 32
@memif_ul3_ch2_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UL_MONO_1_CH1\00", [18 x i8] zeroinitializer }, align 32
@memif_ul_mono_1_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UL_MONO_2_CH1\00", [18 x i8] zeroinitializer }, align 32
@memif_ul_mono_2_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt6797_memif_widgets = internal constant { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [352 x i8] } { [8 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @memif_ul1_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @memif_ul1_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @memif_ul2_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @memif_ul2_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @memif_ul3_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @memif_ul3_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @memif_ul_mono_1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @memif_ul_mono_2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [352 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDA_UL_CH1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1136, i32 1136, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDA_UL_CH2\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1140, i32 1140, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL1_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL2_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL3_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL1_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL2_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL3_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1088, i32 1088, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1092, i32 1092, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1100, i32 1100, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1100, i32 1100, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1096, i32 1096, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1096, i32 1096, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADDA Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt6797_afe_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s(), retry %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt6797_afe_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@mt6797_afe_runtime_suspend._entry_ptr = internal global ptr @mt6797_afe_runtime_suspend._entry, section ".printk_index", align 4
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt6797-afe-pcm-dai\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 130000, i64 176400, i64 192000, i64 260000]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 16000, i64 32000]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 8000, i64 16000, i64 32000]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 89, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [22 x i8] c"mt6797_afe_pcm_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 900, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 106, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 902, i32 14 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"mt6797_afe_pcm_dt_match\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 889, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"mt6797_afe_pm_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 895, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 770, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"mt6797_afe_regmap_config\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 595, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 779, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant [11 x i8] c"memif_data\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 388, i32 41 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 796, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"irq_data\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 527, i32 39 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 814, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 816, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 826, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 835, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"mt6797_afe_hardware\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 124, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"mt6797_afe_component\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 712, i32 46 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 858, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [29 x i8] c"mt6797_afe_pcm_dai_component\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 384, i32 46 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 867, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 390, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 407, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 424, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 441, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 458, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 475, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 492, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 509, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 617, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"mt6797_memif_dai_driver\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 175, i32 34 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"mt6797_memif_routes\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 358, i32 40 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 214, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 226, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 238, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 250, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 262, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 334, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [18 x i8] c"memif_ul1_ch1_mix\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 276, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 336, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [18 x i8] c"memif_ul1_ch2_mix\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 281, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 339, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"memif_ul2_ch1_mix\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 286, i32 38 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 341, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [18 x i8] c"memif_ul2_ch2_mix\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 297, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 344, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [18 x i8] c"memif_ul3_ch1_mix\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 308, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 346, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [18 x i8] c"memif_ul3_ch2_mix\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 313, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 349, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c"memif_ul_mono_1_mix\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 318, i32 38 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 353, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [20 x i8] c"memif_ul_mono_2_mix\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 325, i32 38 }
@___asan_gen_.295 = private unnamed_addr constant [21 x i8] c"mt6797_memif_widgets\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 332, i32 41 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 277, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 282, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 289, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 291, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 293, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 300, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 302, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 304, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 362, i32 29 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 144, i32 30 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 665, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.354 = private constant [46 x i8] c"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.354, i32 385, i32 10 }
@llvm.compiler.used = appending global [119 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_mt6797_afe_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_mt6797_afe__239_910_mt6797_afe_pcm_driver_init6, ptr @dai_memif_rate_transform._entry, ptr @dai_memif_rate_transform._entry_ptr, ptr @mt6797_afe_irq_handler._entry, ptr @mt6797_afe_irq_handler._entry_ptr, ptr @mt6797_afe_pcm_dev_probe._entry, ptr @mt6797_afe_pcm_dev_probe._entry.13, ptr @mt6797_afe_pcm_dev_probe._entry.16, ptr @mt6797_afe_pcm_dev_probe._entry.19, ptr @mt6797_afe_pcm_dev_probe._entry.22, ptr @mt6797_afe_pcm_dev_probe._entry.25, ptr @mt6797_afe_pcm_dev_probe._entry_ptr, ptr @mt6797_afe_pcm_dev_probe._entry_ptr.15, ptr @mt6797_afe_pcm_dev_probe._entry_ptr.18, ptr @mt6797_afe_pcm_dev_probe._entry_ptr.21, ptr @mt6797_afe_pcm_dev_probe._entry_ptr.24, ptr @mt6797_afe_pcm_dev_probe._entry_ptr.27, ptr @mt6797_afe_pcm_driver_exit, ptr @mt6797_afe_runtime_suspend._entry, ptr @mt6797_afe_runtime_suspend._entry_ptr, ptr @mt6797_general_rate_transform._entry, ptr @mt6797_general_rate_transform._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt6797_afe_pcm_driver, ptr @.str.5, ptr @.str.6, ptr @mt6797_afe_pcm_dt_match, ptr @mt6797_afe_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mt6797_afe_pcm_dev_probe._key, ptr @mt6797_afe_regmap_config, ptr @.str.10, ptr @memif_data, ptr @mt6797_afe_pcm_dev_probe.__key, ptr @.str.11, ptr @irq_data, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @mt6797_afe_hardware, ptr @mt6797_afe_component, ptr @.str.23, ptr @mt6797_afe_pcm_dai_component, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @mt6797_memif_dai_driver, ptr @mt6797_memif_routes, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @memif_ul1_ch1_mix, ptr @.str.44, ptr @memif_ul1_ch2_mix, ptr @.str.45, ptr @memif_ul2_ch1_mix, ptr @.str.46, ptr @memif_ul2_ch2_mix, ptr @.str.47, ptr @memif_ul3_ch1_mix, ptr @.str.48, ptr @memif_ul3_ch2_mix, ptr @.str.49, ptr @memif_ul_mono_1_mix, ptr @.str.50, ptr @memif_ul_mono_2_mix, ptr @mt6797_memif_widgets, ptr @.str.52, ptr @.compoundliteral, ptr @.str.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_general_rate_transform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_memif_rate_transform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_data to i32), i32 1280, i32 1600, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_data to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_pcm_dev_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_memif_dai_driver to i32), i32 1344, i32 1664, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_memif_routes to i32), i32 936, i32 1184, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul1_ch1_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul1_ch2_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul2_ch1_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul2_ch2_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul3_ch1_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul3_ch2_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul_mono_1_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul_mono_2_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_memif_widgets to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_afe_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6797_general_rate_transform(ptr noundef %dev, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %do.end [
    i32 8000, label %entry.return_crit_edge
    i32 11025, label %sw.bb1
    i32 12000, label %sw.bb2
    i32 16000, label %sw.bb3
    i32 22050, label %sw.bb4
    i32 24000, label %sw.bb5
    i32 32000, label %sw.bb6
    i32 44100, label %sw.bb7
    i32 48000, label %sw.bb8
    i32 88200, label %sw.bb9
    i32 96000, label %sw.bb10
    i32 130000, label %sw.bb11
    i32 176400, label %sw.bb12
    i32 192000, label %sw.bb13
    i32 260000, label %sw.bb14
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %rate, i32 noundef 10) #8
  br label %return

return:                                           ; preds = %do.end, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 10, %do.end ], [ 15, %sw.bb14 ], [ 14, %sw.bb13 ], [ 13, %sw.bb12 ], [ 7, %sw.bb11 ], [ 12, %sw.bb10 ], [ 11, %sw.bb9 ], [ 10, %sw.bb8 ], [ 9, %sw.bb7 ], [ 8, %sw.bb6 ], [ 6, %sw.bb5 ], [ 5, %sw.bb4 ], [ 4, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6797_rate_transform(ptr noundef %dev, i32 noundef %rate, i32 noundef %aud_blk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %aud_blk, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %switch = icmp eq i32 %0, 6
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %rate, label %do.end.i [
    i32 8000, label %sw.bb.return_crit_edge
    i32 16000, label %sw.bb1.i
    i32 32000, label %sw.bb2.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %rate, i32 noundef 1) #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @mt6797_general_rate_transform(ptr noundef %dev, i32 noundef %rate)
  br label %return

return:                                           ; preds = %sw.default, %do.end.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.default ], [ 1, %do.end.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_afe_pcm_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6797_afe_pcm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6797_afe_pcm_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6797_afe_pcm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_afe_pcm_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i206 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4, i32 noundef 3520) #5
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i206, ptr %platform_priv, align 4
  %tobool5.not = icmp eq ptr %call.i206, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev10, align 4
  %call12 = tail call i32 @mt6797_init_clock(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call16, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call25 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call16, ptr noundef nonnull @mt6797_afe_regmap_config, ptr noundef nonnull @mt6797_afe_pcm_dev_probe._key, ptr noundef nonnull @.str.10) #5
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call25, ptr %regmap, align 4
  %cmp.i207 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %memif_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %memif_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %memif_size, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 288, i32 noundef 3520) #5
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %memif to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %memif, align 4
  %tobool35.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool35.not, label %if.end31.cleanup_crit_edge, label %for.cond.preheader

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end31
  %8 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %memif_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp212 = icmp sgt i32 %9, 0
  br i1 %cmp212, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body43_crit_edge

for.cond.preheader.do.body43_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body43

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0213 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mtk_base_memif_data], ptr @memif_data, i32 0, i32 %i.0213
  %10 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memif, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %11, i32 %i.0213, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %data, align 4
  %13 = load ptr, ptr %memif, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %13, i32 %i.0213, i32 4
  %14 = ptrtoint ptr %irq_usage to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %irq_usage, align 4
  %inc = add nuw nsw i32 %i.0213, 1
  %15 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %memif_size, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body43_crit_edge

for.body.do.body43_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body43

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body43:                                        ; preds = %for.body.do.body43_crit_edge, %for.cond.preheader.do.body43_crit_edge
  %irq_alloc_lock = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %irq_alloc_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @mt6797_afe_pcm_dev_probe.__key) #5
  %irqs_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 13
  %17 = ptrtoint ptr %irqs_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5, ptr %irqs_size, align 4
  %call5.i.i208 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #5
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 12
  %18 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i208, ptr %irqs, align 4
  %tobool49.not = icmp eq ptr %call5.i.i208, null
  br i1 %tobool49.not, label %do.body43.cleanup_crit_edge, label %for.cond52.preheader

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond52.preheader:                             ; preds = %do.body43
  %19 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irqs_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp54214 = icmp sgt i32 %20, 0
  br i1 %cmp54214, label %for.cond52.preheader.for.body55_crit_edge, label %for.cond52.preheader.for.end61_crit_edge

for.cond52.preheader.for.end61_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond52.preheader.for.body55_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body55

for.body55:                                       ; preds = %for.body55.for.body55_crit_edge, %for.cond52.preheader.for.body55_crit_edge
  %i.1215 = phi i32 [ %inc60, %for.body55.for.body55_crit_edge ], [ 0, %for.cond52.preheader.for.body55_crit_edge ]
  %arrayidx56 = getelementptr [5 x %struct.mtk_base_irq_data], ptr @irq_data, i32 0, i32 %i.1215
  %21 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irqs, align 4
  %arrayidx58 = getelementptr %struct.mtk_base_afe_irq, ptr %22, i32 %i.1215
  %23 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx56, ptr %arrayidx58, align 4
  %inc60 = add nuw nsw i32 %i.1215, 1
  %24 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irqs_size, align 4
  %cmp54 = icmp slt i32 %inc60, %25
  br i1 %cmp54, label %for.body55.for.body55_crit_edge, label %for.body55.for.end61_crit_edge

for.body55.for.end61_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.body55.for.body55_crit_edge:                  ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body55

for.end61:                                        ; preds = %for.body55.for.end61_crit_edge, %for.cond52.preheader.for.end61_crit_edge
  %call62 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %for.end61.cleanup_crit_edge, label %if.end65

for.end61.cleanup_crit_edge:                      ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %for.end61
  %call.i209 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call62, ptr noundef nonnull @mt6797_afe_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %tobool67.not = icmp eq i32 %call.i209, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 15
  %26 = ptrtoint ptr %sub_dais to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %sub_dais, ptr %sub_dais, align 4
  %prev.i = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 15, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sub_dais, ptr %prev.i, align 4
  %call77 = tail call i32 @mt6797_dai_adda_register(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %for.inc85, label %if.end72.do.end82_crit_edge

if.end72.do.end82_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

do.end82:                                         ; preds = %for.inc85.2.do.end82_crit_edge, %for.inc85.1.do.end82_crit_edge, %for.inc85.do.end82_crit_edge, %if.end72.do.end82_crit_edge
  %i.2216.lcssa = phi i32 [ 0, %if.end72.do.end82_crit_edge ], [ 1, %for.inc85.do.end82_crit_edge ], [ 2, %for.inc85.1.do.end82_crit_edge ], [ 3, %for.inc85.2.do.end82_crit_edge ]
  %call77.lcssa = phi i32 [ %call77, %if.end72.do.end82_crit_edge ], [ %call77.1, %for.inc85.do.end82_crit_edge ], [ %call77.2, %for.inc85.1.do.end82_crit_edge ], [ %call77.3, %for.inc85.2.do.end82_crit_edge ]
  %28 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.17, i32 noundef %i.2216.lcssa, i32 noundef %call77.lcssa) #8
  br label %cleanup

for.inc85:                                        ; preds = %if.end72
  %call77.1 = tail call i32 @mt6797_dai_pcm_register(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.1)
  %tobool78.not.1 = icmp eq i32 %call77.1, 0
  br i1 %tobool78.not.1, label %for.inc85.1, label %for.inc85.do.end82_crit_edge

for.inc85.do.end82_crit_edge:                     ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

for.inc85.1:                                      ; preds = %for.inc85
  %call77.2 = tail call i32 @mt6797_dai_hostless_register(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.2)
  %tobool78.not.2 = icmp eq i32 %call77.2, 0
  br i1 %tobool78.not.2, label %for.inc85.2, label %for.inc85.1.do.end82_crit_edge

for.inc85.1.do.end82_crit_edge:                   ; preds = %for.inc85.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

for.inc85.2:                                      ; preds = %for.inc85.1
  %call77.3 = tail call fastcc i32 @mt6797_dai_memif_register(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.3)
  %tobool78.not.3 = icmp eq i32 %call77.3, 0
  br i1 %tobool78.not.3, label %for.inc85.3, label %for.inc85.2.do.end82_crit_edge

for.inc85.2.do.end82_crit_edge:                   ; preds = %for.inc85.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end82

for.inc85.3:                                      ; preds = %for.inc85.2
  %call88 = tail call i32 @mtk_afe_combine_sub_dai(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end95, label %do.end93

do.end93:                                         ; preds = %for.inc85.3
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.20, i32 noundef %call88) #8
  br label %cleanup

if.end95:                                         ; preds = %for.inc85.3
  %mtk_afe_hardware = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %mtk_afe_hardware to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mt6797_afe_hardware, ptr %mtk_afe_hardware, align 4
  %memif_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 19
  %33 = ptrtoint ptr %memif_fs to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mt6797_memif_fs, ptr %memif_fs, align 4
  %irq_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 20
  %34 = ptrtoint ptr %irq_fs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mt6797_irq_fs, ptr %irq_fs, align 4
  %runtime_resume = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @mt6797_afe_runtime_resume, ptr %runtime_resume, align 4
  %runtime_suspend = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mt6797_afe_runtime_suspend, ptr %runtime_suspend, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #5
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %38 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end98, label %if.end95.err_pm_disable_crit_edge

if.end95.err_pm_disable_crit_edge:                ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pm_disable

if.end98:                                         ; preds = %if.end95
  %call.i210 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #5
  %call101 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mt6797_afe_component, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end107, label %if.end98.err_pm_disable.sink.split_crit_edge

if.end98.err_pm_disable.sink.split_crit_edge:     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pm_disable.sink.split

if.end107:                                        ; preds = %if.end98
  %39 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev10, align 4
  %dai_drivers = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dai_drivers, align 4
  %num_dai_drivers = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 17
  %43 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_dai_drivers, align 4
  %call109 = tail call i32 @devm_snd_soc_register_component(ptr noundef %40, ptr noundef nonnull @mt6797_afe_pcm_dai_component, ptr noundef %42, i32 noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end107.cleanup_crit_edge, label %if.end107.err_pm_disable.sink.split_crit_edge

if.end107.err_pm_disable.sink.split_crit_edge:    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pm_disable.sink.split

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_pm_disable.sink.split:                        ; preds = %if.end107.err_pm_disable.sink.split_crit_edge, %if.end98.err_pm_disable.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.23, %if.end98.err_pm_disable.sink.split_crit_edge ], [ @.str.26, %if.end107.err_pm_disable.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call101, %if.end98.err_pm_disable.sink.split_crit_edge ], [ %call109, %if.end107.err_pm_disable.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull %.str.26.sink) #8
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_pm_disable.sink.split, %if.end95.err_pm_disable_crit_edge
  %ret.0 = phi i32 [ 0, %if.end95.err_pm_disable_crit_edge ], [ %ret.0.ph, %err_pm_disable.sink.split ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end107.cleanup_crit_edge, %do.end93, %do.end82, %do.end71, %for.end61.cleanup_crit_edge, %do.body43.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then28, %if.then19, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ %3, %if.then19 ], [ %5, %if.then28 ], [ %call.i209, %do.end71 ], [ %call77.lcssa, %do.end82 ], [ %call88, %do.end93 ], [ %ret.0, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ -12, %do.body43.cleanup_crit_edge ], [ %call62, %for.end61.cleanup_crit_edge ], [ 0, %if.end107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_afe_pcm_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @mt6797_afe_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt6797_init_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_afe_irq_handler(i32 noundef %irq_id, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %status = alloca i32, align 4
  %mcu_en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcu_en) #5
  %1 = ptrtoint ptr %mcu_en to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mcu_en, align 4, !annotation !183
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 948, ptr noundef nonnull %mcu_en) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 932, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = ptrtoint ptr %mcu_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcu_en, align 4
  %and = and i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %for.cond.preheader

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond.preheader:                               ; preds = %lor.lhs.false
  %memif6 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 10
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 12
  br label %for.body

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %dev3 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev3, align 4
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %14 = ptrtoint ptr %mcu_en to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mcu_en, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %call2, i32 noundef %13, i32 noundef %15) #8
  %16 = ptrtoint ptr %mcu_en to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mcu_en, align 4
  %and4 = and i32 %17, 95
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and4, ptr %status, align 4
  br label %err_irq

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %i.036 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %cleanup.for.body_crit_edge ]
  %19 = ptrtoint ptr %memif6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memif6, align 4
  %substream = getelementptr %struct.mtk_base_afe_memif, ptr %20, i32 %i.036, i32 2
  %21 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream, align 4
  %tobool7.not = icmp eq ptr %22, null
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %23 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irqs, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %20, i32 %i.036, i32 4
  %25 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq_usage, align 4
  %arrayidx10 = getelementptr %struct.mtk_base_afe_irq, ptr %24, i32 %26
  %27 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status, align 4
  %29 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx10, align 4
  %irq_en_shift = getelementptr inbounds %struct.mtk_base_irq_data, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %irq_en_shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_en_shift, align 4
  %shl = shl nuw i32 1, %32
  %and11 = and i32 %shl, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.then13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %cleanup.err_irq_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup.err_irq_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_irq

err_irq:                                          ; preds = %cleanup.err_irq_crit_edge, %do.end
  %irq_ret.0 = phi i32 [ 0, %do.end ], [ 1, %cleanup.err_irq_crit_edge ]
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %35 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %status, align 4
  %and17 = and i32 %36, 95
  %call18 = call i32 @regmap_write(ptr noundef %34, i32 noundef 936, i32 noundef %and17) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcu_en) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %irq_ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_combine_sub_dai(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_memif_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.76) #5
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %id2 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id2, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %switch.i = icmp eq i32 %14, 6
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %entry
  %15 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %rate, label %do.end.i.i [
    i32 8000, label %sw.bb.i.mt6797_rate_transform.exit_crit_edge
    i32 16000, label %sw.bb1.i.i
    i32 32000, label %sw.bb2.i.i
  ]

sw.bb.i.mt6797_rate_transform.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6797_rate_transform.exit

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6797_rate_transform.exit

sw.bb2.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt6797_rate_transform.exit

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %rate, i32 noundef 1) #8
  br label %mt6797_rate_transform.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i = tail call i32 @mt6797_general_rate_transform(ptr noundef %13, i32 noundef %rate) #5
  br label %mt6797_rate_transform.exit

mt6797_rate_transform.exit:                       ; preds = %sw.default.i, %do.end.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.mt6797_rate_transform.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %sw.default.i ], [ 1, %do.end.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %sw.bb.i.mt6797_rate_transform.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_irq_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.76) #5
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call2 = tail call i32 @mt6797_general_rate_transform(ptr noundef %7, i32 noundef %rate)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_afe_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @mt6797_afe_enable_clock(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 948, i32 noundef 127) #5
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1020, i32 noundef 134152192, i32 noundef 134152192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 204, i32 noundef 8388608, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 204, i32 noundef 4194304, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 108, i32 noundef 1073741823, i32 noundef 1073741823, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_afe_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %afe_on_retm = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %afe_on_retm) #5
  %2 = ptrtoint ptr %afe_on_retm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %afe_on_retm, align 4, !annotation !183
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %retry.0 = phi i32 [ 0, %entry ], [ %inc, %if.end.do.body_crit_edge ]
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %afe_on_retm) #5
  %7 = ptrtoint ptr %afe_on_retm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %afe_on_retm, align 4
  %and = and i32 %8, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end, label %if.end

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 2147480) #5
  %inc = add nuw nsw i32 %retry.0, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %if.end.do.end8_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool.not = icmp eq i32 %retry.0, 0
  br i1 %tobool.not, label %do.end.if.end10_crit_edge, label %do.end.do.end8_crit_edge

do.end.do.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end8:                                          ; preds = %do.end.do.end8_crit_edge, %if.end.do.end8_crit_edge
  %retry.123 = phi i32 [ %retry.0, %do.end.do.end8_crit_edge ], [ 100000, %if.end.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev9, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %retry.123) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %do.end.if.end10_crit_edge
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i20 = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 936, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call13 = call i32 @mt6797_afe_disable_clock(ptr noundef %1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %afe_on_retm) #5
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt6797_dai_adda_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt6797_dai_pcm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt6797_dai_hostless_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt6797_dai_memif_register(ptr noundef %afe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 8
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 15
  %2 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sub_dais, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %sub_dais, ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sub_dais, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %sub_dais to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %sub_dais, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mt6797_memif_dai_driver, ptr %call.i, align 4
  %num_dai_drivers = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %num_dai_drivers, align 4
  %dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mt6797_memif_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %num_dapm_widgets, align 4
  %dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mt6797_memif_routes, ptr %dapm_routes, align 4
  %num_dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 18, ptr %num_dapm_routes, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt6797_afe_enable_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt6797_afe_disable_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6797_afe_component_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_afe_add_sub_dai_control(ptr noundef %component) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_pcm_new(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_pcm_pointer(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_add_sub_dai_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !168, !170, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 89, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt6797_general_rate_transform._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt6797_general_rate_transform._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_snd_soc_mt6797_afe__239_910_mt6797_afe_pcm_driver_init6, !9, !"__initcall__kmod_snd_soc_mt6797_afe__239_910_mt6797_afe_pcm_driver_init6", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 910, i32 1}
!10 = !{ptr @__exitcall_mt6797_afe_pcm_driver_exit, !9, !"__exitcall_mt6797_afe_pcm_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description240, !12, !"__UNIQUE_ID_description240", i1 false, i1 false}
!12 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 912, i32 1}
!13 = !{ptr @__UNIQUE_ID_author241, !14, !"__UNIQUE_ID_author241", i1 false, i1 false}
!14 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 913, i32 1}
!15 = !{ptr @__UNIQUE_ID_file242, !16, !"__UNIQUE_ID_file242", i1 false, i1 false}
!16 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 914, i32 1}
!17 = !{ptr @__UNIQUE_ID_license243, !16, !"__UNIQUE_ID_license243", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 106, i32 3}
!20 = !{ptr @dai_memif_rate_transform._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dai_memif_rate_transform._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 902, i32 14}
!24 = !{ptr @mt6797_afe_pcm_driver, !25, !"mt6797_afe_pcm_driver", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 900, i32 31}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 770, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mt6797_afe_pcm_dev_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt6797_afe_pcm_dev_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mt6797_afe_pcm_dev_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 779, i32 16}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mt6797_afe_pcm_dev_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 796, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 814, i32 30}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 816, i32 3}
!42 = !{ptr @mt6797_afe_pcm_dev_probe._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt6797_afe_pcm_dev_probe._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 826, i32 4}
!46 = !{ptr @mt6797_afe_pcm_dev_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mt6797_afe_pcm_dev_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 835, i32 3}
!50 = !{ptr @mt6797_afe_pcm_dev_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mt6797_afe_pcm_dev_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 858, i32 3}
!54 = !{ptr @mt6797_afe_pcm_dev_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mt6797_afe_pcm_dev_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 867, i32 3}
!58 = !{ptr @mt6797_afe_pcm_dev_probe._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mt6797_afe_pcm_dev_probe._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @mt6797_afe_regmap_config, !61, !"mt6797_afe_regmap_config", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 595, i32 35}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 390, i32 11}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 407, i32 11}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 424, i32 11}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 441, i32 11}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 458, i32 11}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 475, i32 11}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 492, i32 11}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 509, i32 11}
!78 = !{ptr @memif_data, !79, !"memif_data", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 388, i32 41}
!80 = !{ptr @irq_data, !81, !"irq_data", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 527, i32 39}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 617, i32 3}
!84 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mt6797_afe_irq_handler._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mt6797_afe_irq_handler._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = distinct !{null, !88, !"dai_register_cbs", i1 false, i1 false}
!88 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 740, i32 30}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 214, i32 11}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 226, i32 11}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 238, i32 11}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 250, i32 11}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 262, i32 11}
!99 = !{ptr @mt6797_memif_dai_driver, !100, !"mt6797_memif_dai_driver", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 175, i32 34}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 334, i32 2}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 336, i32 2}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 339, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 341, i32 2}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 344, i32 2}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 346, i32 2}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 349, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 353, i32 2}
!117 = !{ptr @mt6797_memif_widgets, !118, !"mt6797_memif_widgets", i1 false, i1 false}
!118 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 332, i32 41}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 277, i32 2}
!121 = !{ptr @memif_ul1_ch1_mix, !122, !"memif_ul1_ch1_mix", i1 false, i1 false}
!122 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 276, i32 38}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 282, i32 2}
!125 = !{ptr @memif_ul1_ch2_mix, !126, !"memif_ul1_ch2_mix", i1 false, i1 false}
!126 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 281, i32 38}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 289, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 291, i32 2}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 293, i32 2}
!133 = !{ptr @memif_ul2_ch1_mix, !134, !"memif_ul2_ch1_mix", i1 false, i1 false}
!134 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 286, i32 38}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 300, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 302, i32 2}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 304, i32 2}
!141 = !{ptr @memif_ul2_ch2_mix, !142, !"memif_ul2_ch2_mix", i1 false, i1 false}
!142 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 297, i32 38}
!143 = !{ptr @memif_ul3_ch1_mix, !144, !"memif_ul3_ch1_mix", i1 false, i1 false}
!144 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 308, i32 38}
!145 = !{ptr @memif_ul3_ch2_mix, !146, !"memif_ul3_ch2_mix", i1 false, i1 false}
!146 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 313, i32 38}
!147 = !{ptr @memif_ul_mono_1_mix, !148, !"memif_ul_mono_1_mix", i1 false, i1 false}
!148 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 318, i32 38}
!149 = !{ptr @memif_ul_mono_2_mix, !150, !"memif_ul_mono_2_mix", i1 false, i1 false}
!150 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 325, i32 38}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 362, i32 29}
!153 = !{ptr @mt6797_memif_routes, !154, !"mt6797_memif_routes", i1 false, i1 false}
!154 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 358, i32 40}
!155 = !{ptr @mt6797_afe_hardware, !156, !"mt6797_afe_hardware", i1 false, i1 false}
!156 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 124, i32 38}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 144, i32 30}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 665, i32 3}
!161 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mt6797_afe_runtime_suspend._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @mt6797_afe_runtime_suspend._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @mt6797_afe_component, !165, !"mt6797_afe_component", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 712, i32 46}
!166 = !{ptr @.str.79, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 385, i32 10}
!168 = !{ptr @mt6797_afe_pcm_dai_component, !169, !"mt6797_afe_pcm_dai_component", i1 false, i1 false}
!169 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 384, i32 46}
!170 = !{ptr @mt6797_afe_pcm_dt_match, !171, !"mt6797_afe_pcm_dt_match", i1 false, i1 false}
!171 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 889, i32 34}
!172 = !{ptr @mt6797_afe_pm_ops, !173, !"mt6797_afe_pm_ops", i1 false, i1 false}
!173 = !{!"../sound/soc/mediatek/mt6797/mt6797-afe-pcm.c", i32 895, i32 32}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{!"auto-init"}
