; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mtk_base_memif_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt8183_afe_private = type { ptr, i32, [20 x ptr], i32, i32, [4 x i32], [4 x i32], i32, i32, [7 x i32] }
%struct.mtk_base_afe_memif = type { i32, i32, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.mtk_base_afe_irq = type { ptr, i32 }
%struct.mtk_base_afe_dai = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head }
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

@mt8183_general_rate_transform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 92, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(), rate %u invalid, use %d!!!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mt8183_general_rate_transform\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt8183/mt8183-afe-pcm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8183_general_rate_transform._entry_ptr = internal global ptr @mt8183_general_rate_transform._entry, section ".printk_index", align 4
@__initcall__kmod_snd_soc_mt8183_afe__239_1288_mt8183_afe_pcm_driver_init6 = internal global ptr @mt8183_afe_pcm_driver_init, section ".initcall6.init", align 4
@mt8183_afe_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8183_afe_pcm_dev_probe, ptr @mt8183_afe_pcm_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8183_afe_pcm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8183_afe_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8183_afe_pcm_driver_exit = internal global ptr @mt8183_afe_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [78 x i8] c"snd_soc_mt8183_afe.description=Mediatek ALSA SoC AFE platform driver for 8183\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [73 x i8] c"snd_soc_mt8183_afe.author=KaiChieh Chuang <kaichieh.chuang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [69 x i8] c"snd_soc_mt8183_afe.file=sound/soc/mediatek/mt8183/snd-soc-mt8183-afe\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [34 x i8] c"snd_soc_mt8183_afe.license=GPL v2\00", section ".modinfo", align 1
@dai_memif_rate_transform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dai_memif_rate_transform\00", [39 x i8] zeroinitializer }, align 32
@dai_memif_rate_transform._entry_ptr = internal global ptr @dai_memif_rate_transform._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt8183-audio\00", [19 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt8183_afe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8183_afe_runtime_suspend, ptr @mt8183_afe_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1112, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init clock error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt8183_afe_pcm_dev_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr = internal global ptr @mt8183_afe_pcm_dev_probe._entry, section ".printk_index", align 4
@mt8183_afe_pcm_dev_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 1121, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not get regmap from parent\0A\00", [62 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.12 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.10, section ".printk_index", align 4
@mt8183_afe_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @mt8183_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3892, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 3892, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.2, i32 1127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"regmap_attach_dev fail, ret %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.15 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audiosys\00", [23 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.2, i32 1134, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get audiosys reset:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.19 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.17, section ".printk_index", align 4
@mt8183_afe_pcm_dev_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.2, i32 1140, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to trigger audio reset:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.22 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.20, section ".printk_index", align 4
@mt8183_afe_pcm_dev_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.2, i32 1150, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regmap_reinit_cache fail, ret %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.25 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.23, section ".printk_index", align 4
@memif_data = internal constant { [9 x %struct.mtk_base_memif_data], [352 x i8] } { [9 x %struct.mtk_base_memif_data] [%struct.mtk_base_memif_data { i32 0, ptr @.str.43, i32 64, i32 68, i32 0, i32 0, i32 0, i32 0, i32 20, i32 0, i32 15, i32 20, i32 21, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 1016, i32 0, i32 1020, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 1, ptr @.str.44, i32 80, i32 84, i32 0, i32 0, i32 0, i32 0, i32 20, i32 4, i32 15, i32 20, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 1016, i32 4, i32 1020, i32 2, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 2, ptr @.str.45, i32 864, i32 868, i32 0, i32 0, i32 0, i32 0, i32 736, i32 8, i32 15, i32 20, i32 23, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 5, i32 1016, i32 6, i32 1020, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 3, ptr @.str.46, i32 848, i32 860, i32 0, i32 0, i32 0, i32 0, i32 16, i32 20, i32 15, i32 16, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 9, i32 1016, i32 12, i32 1020, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 4, ptr @.str.47, i32 752, i32 764, i32 0, i32 0, i32 0, i32 0, i32 736, i32 4, i32 15, i32 736, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 27, i32 1016, i32 14, i32 1020, i32 7, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 5, ptr @.str.48, i32 112, i32 124, i32 0, i32 0, i32 0, i32 0, i32 20, i32 12, i32 15, i32 20, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 6, i32 1016, i32 8, i32 1020, i32 4, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 6, ptr @.str.49, i32 3024, i32 3036, i32 0, i32 0, i32 0, i32 0, i32 736, i32 16, i32 15, i32 736, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 29, i32 1016, i32 28, i32 1020, i32 14, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 7, ptr @.str.50, i32 816, i32 828, i32 0, i32 0, i32 0, i32 0, i32 20, i32 30, i32 3, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 7, i32 1016, i32 18, i32 1020, i32 9, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 8, ptr @.str.51, i32 884, i32 888, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 1016, i32 20, i32 1020, i32 10, i32 -1, i32 -1, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [352 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&afe->irq_alloc_lock\00", [43 x i8] zeroinitializer }, align 32
@irq_data = internal constant { [11 x %struct.mtk_base_irq_data], [144 x i8] } { [11 x %struct.mtk_base_irq_data] [%struct.mtk_base_irq_data { i32 0, i32 768, i32 0, i32 262143, i32 740, i32 0, i32 15, i32 928, i32 0, i32 936, i32 0, i32 0 }, %struct.mtk_base_irq_data { i32 1, i32 940, i32 0, i32 262143, i32 740, i32 4, i32 15, i32 928, i32 1, i32 936, i32 1, i32 0 }, %struct.mtk_base_irq_data { i32 2, i32 944, i32 0, i32 262143, i32 740, i32 8, i32 15, i32 928, i32 2, i32 936, i32 2, i32 0 }, %struct.mtk_base_irq_data { i32 3, i32 996, i32 0, i32 262143, i32 740, i32 12, i32 15, i32 928, i32 3, i32 936, i32 3, i32 0 }, %struct.mtk_base_irq_data { i32 4, i32 1000, i32 0, i32 262143, i32 740, i32 16, i32 15, i32 928, i32 4, i32 936, i32 4, i32 0 }, %struct.mtk_base_irq_data { i32 5, i32 956, i32 0, i32 262143, i32 740, i32 20, i32 15, i32 928, i32 5, i32 936, i32 5, i32 0 }, %struct.mtk_base_irq_data { i32 6, i32 772, i32 0, i32 262143, i32 740, i32 24, i32 15, i32 928, i32 6, i32 936, i32 6, i32 0 }, %struct.mtk_base_irq_data { i32 7, i32 988, i32 0, i32 262143, i32 740, i32 28, i32 15, i32 928, i32 7, i32 936, i32 7, i32 0 }, %struct.mtk_base_irq_data { i32 8, i32 776, i32 0, i32 262143, i32 -1, i32 -1, i32 -1, i32 928, i32 8, i32 936, i32 8, i32 0 }, %struct.mtk_base_irq_data { i32 9, i32 1004, i32 0, i32 262143, i32 744, i32 0, i32 15, i32 928, i32 11, i32 936, i32 11, i32 0 }, %struct.mtk_base_irq_data { i32 10, i32 1036, i32 0, i32 262143, i32 744, i32 4, i32 15, i32 928, i32 12, i32 936, i32 12, i32 0 }], [144 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asys-isr\00", [23 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.8, ptr @.str.2, i32 1202, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not request_irq for asys-isr\0A\00", [60 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.30 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.28, section ".printk_index", align 4
@mt8183_afe_pcm_dev_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.8, ptr @.str.2, i32 1213, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dai register i %d fail, ret %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.33 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.31, section ".printk_index", align 4
@mt8183_afe_pcm_dev_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.8, ptr @.str.2, i32 1222, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mtk_afe_combine_sub_dai fail, ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.36 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.34, section ".printk_index", align 4
@mt8183_afe_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 1092, i32 0, i32 0, i32 0, i32 0, i32 0, i32 393216, i32 256, i32 196608, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@mt8183_afe_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.105, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @mt8183_afe_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.8, ptr @.str.2, i32 1238, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"err_platform\0A\00", [18 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.39 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.37, section ".printk_index", align 4
@mt8183_afe_pcm_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.108, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.8, ptr @.str.2, i32 1247, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"err_dai_component\0A\00", [45 x i8] zeroinitializer }, align 32
@mt8183_afe_pcm_dev_probe._entry_ptr.42 = internal global ptr @mt8183_afe_pcm_dev_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VUL12\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VUL2\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AWB\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AWB2\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOD_DAI\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HDMI\00", [27 x i8] zeroinitializer }, align 32
@mt8183_afe_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 947, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(), irq status err, ret %d, status 0x%x, mcu_en 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt8183_afe_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@mt8183_afe_irq_handler._entry_ptr = internal global ptr @mt8183_afe_irq_handler._entry, section ".printk_index", align 4
@mt8183_memif_dai_driver = internal global { [9 x %struct.snd_soc_dai_driver], [376 x i8] } { [9 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.43, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.43, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.44, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.44, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.45, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.45, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.54, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.54, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.55, i32 5, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.55, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.56, i32 4, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.56, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.57, i32 6, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.57, i64 1092, i32 7934, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.58, i32 7, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.58, i64 1092, i32 170, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.51, i32 8, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_fe_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.51, i64 1092, i32 7934, i32 0, i32 0, i32 2, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [376 x i8] zeroinitializer }, align 32
@mt8183_memif_routes = internal constant { [25 x %struct.snd_soc_dapm_route], [332 x i8] } { [25 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.69, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.72, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.70, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.74, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.69, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr @.str.72, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.83, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr @.str.92, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr @.str.69, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.72, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr @.str.83, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.92, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.69, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.72, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.69, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.72, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }], [332 x i8] zeroinitializer }, align 32
@mtk_afe_fe_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL4\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UL_MONO_1\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL1_CH1\00", [24 x i8] zeroinitializer }, align 32
@memif_ul1_ch1_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL1_CH2\00", [24 x i8] zeroinitializer }, align 32
@memif_ul1_ch2_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL2_CH1\00", [24 x i8] zeroinitializer }, align 32
@memif_ul2_ch1_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL2_CH2\00", [24 x i8] zeroinitializer }, align 32
@memif_ul2_ch2_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL3_CH1\00", [24 x i8] zeroinitializer }, align 32
@memif_ul3_ch1_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL3_CH2\00", [24 x i8] zeroinitializer }, align 32
@memif_ul3_ch2_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL4_CH1\00", [24 x i8] zeroinitializer }, align 32
@memif_ul4_ch1_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UL4_CH2\00", [24 x i8] zeroinitializer }, align 32
@memif_ul4_ch2_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UL_MONO_1_CH1\00", [18 x i8] zeroinitializer }, align 32
@memif_ul_mono_1_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt8183_memif_widgets = internal constant { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [396 x i8] } { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @memif_ul1_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @memif_ul1_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @memif_ul2_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @memif_ul2_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @memif_ul3_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @memif_ul3_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @memif_ul4_ch1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @memif_ul4_ch2_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @memif_ul_mono_1_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [396 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDA_UL_CH1\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1136, i32 1136, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S0_CH1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1136, i32 1136, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADDA_UL_CH2\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1140, i32 1140, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S0_CH2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1136, i32 1136, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL1_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL2_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL3_CH1\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S2_CH1\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL1_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL2_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DL3_CH2\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"I2S2_CH2\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 188, i32 188, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1228, i32 1228, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1228, i32 1228, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1032, i32 1032, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1032, i32 1032, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2476, i32 2476, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2496, i32 2496, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1100, i32 1100, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1100, i32 1100, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADDA Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S0\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@mt8183_afe_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 997, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(), ret %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt8183_afe_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@mt8183_afe_runtime_suspend._entry_ptr = internal global ptr @mt8183_afe_runtime_suspend._entry, section ".printk_index", align 4
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt8183-afe-pcm-dai\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 130000, i64 176400, i64 192000, i64 260000]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 32000, i64 48000]
@__sancov_gen_cov_switch_values.110 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 32000, i64 48000]
@__sancov_gen_cov_switch_values.111 = internal global [140 x i64] [i64 138, i64 32, i64 0, i64 4, i64 12, i64 68, i64 72, i64 84, i64 88, i64 120, i64 124, i64 136, i64 140, i64 208, i64 212, i64 216, i64 220, i64 224, i64 228, i64 232, i64 236, i64 240, i64 244, i64 304, i64 308, i64 328, i64 332, i64 468, i64 480, i64 484, i64 580, i64 624, i64 628, i64 632, i64 636, i64 748, i64 760, i64 764, i64 784, i64 788, i64 824, i64 828, i64 856, i64 860, i64 868, i64 872, i64 880, i64 888, i64 892, i64 920, i64 924, i64 932, i64 936, i64 952, i64 960, i64 964, i64 968, i64 972, i64 992, i64 1060, i64 1084, i64 1264, i64 1272, i64 1276, i64 1320, i64 1324, i64 1336, i64 1456, i64 1460, i64 1472, i64 1476, i64 1484, i64 1488, i64 1508, i64 1512, i64 1516, i64 2116, i64 2120, i64 2124, i64 2704, i64 2788, i64 2792, i64 2820, i64 2836, i64 2860, i64 2876, i64 2908, i64 2924, i64 2956, i64 2964, i64 2984, i64 3032, i64 3036, i64 3052, i64 3168, i64 3172, i64 3176, i64 3180, i64 3196, i64 3200, i64 3208, i64 3212, i64 3216, i64 3220, i64 3228, i64 3232, i64 3440, i64 3444, i64 3448, i64 3452, i64 3456, i64 3460, i64 3464, i64 3468, i64 3472, i64 3476, i64 3480, i64 3484, i64 3488, i64 3636, i64 3640, i64 3648, i64 3712, i64 3720, i64 3724, i64 3728, i64 3732, i64 3740, i64 3744, i64 3760, i64 3764, i64 3840, i64 3848, i64 3852, i64 3856, i64 3860, i64 3868, i64 3872, i64 3888, i64 3892]
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 91, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"mt8183_afe_pcm_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1278, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 110, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1280, i32 14 }
@___asan_gen_.142 = private unnamed_addr constant [24 x i8] c"mt8183_afe_pcm_dt_match\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1267, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"mt8183_afe_pm_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1273, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1112, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1121, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"mt8183_afe_regmap_config\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 914, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1127, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1131, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1134, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1140, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1150, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"memif_data\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 427, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1177, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [9 x i8] c"irq_data\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 619, i32 39 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1200, i32 30 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1202, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1212, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1221, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"mt8183_afe_hardware\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 127, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant [21 x i8] c"mt8183_afe_component\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1050, i32 46 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1238, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [29 x i8] c"mt8183_afe_pcm_dai_component\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 423, i32 46 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 1247, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 429, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 450, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 471, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 555, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 492, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 513, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 534, i32 11 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 576, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 597, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 946, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [24 x i8] c"mt8183_memif_dai_driver\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 179, i32 34 }
@___asan_gen_.289 = private unnamed_addr constant [20 x i8] c"mt8183_memif_routes\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 390, i32 40 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 218, i32 11 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 230, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 242, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 254, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 266, i32 11 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 365, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [18 x i8] c"memif_ul1_ch1_mix\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 292, i32 38 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 367, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [18 x i8] c"memif_ul1_ch2_mix\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 299, i32 38 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 370, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [18 x i8] c"memif_ul2_ch1_mix\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 306, i32 38 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 372, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [18 x i8] c"memif_ul2_ch2_mix\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 319, i32 38 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 375, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [18 x i8] c"memif_ul3_ch1_mix\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 332, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 377, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [18 x i8] c"memif_ul3_ch2_mix\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 339, i32 38 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 380, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [18 x i8] c"memif_ul4_ch1_mix\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 346, i32 38 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 382, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant [18 x i8] c"memif_ul4_ch2_mix\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 351, i32 38 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 385, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c"memif_ul_mono_1_mix\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 356, i32 38 }
@___asan_gen_.361 = private unnamed_addr constant [21 x i8] c"mt8183_memif_widgets\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 363, i32 41 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 293, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 295, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 300, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 302, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 309, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 311, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 313, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 315, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 322, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 324, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 326, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 328, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 394, i32 29 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 396, i32 26 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 403, i32 26 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 147, i32 30 }
@___asan_gen_.434 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 997, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.444 = private constant [46 x i8] c"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.444, i32 424, i32 10 }
@llvm.compiler.used = appending global [148 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_mt8183_afe_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_mt8183_afe__239_1288_mt8183_afe_pcm_driver_init6, ptr @dai_memif_rate_transform._entry, ptr @dai_memif_rate_transform._entry_ptr, ptr @mt8183_afe_irq_handler._entry, ptr @mt8183_afe_irq_handler._entry_ptr, ptr @mt8183_afe_pcm_dev_probe._entry, ptr @mt8183_afe_pcm_dev_probe._entry.10, ptr @mt8183_afe_pcm_dev_probe._entry.13, ptr @mt8183_afe_pcm_dev_probe._entry.17, ptr @mt8183_afe_pcm_dev_probe._entry.20, ptr @mt8183_afe_pcm_dev_probe._entry.23, ptr @mt8183_afe_pcm_dev_probe._entry.28, ptr @mt8183_afe_pcm_dev_probe._entry.31, ptr @mt8183_afe_pcm_dev_probe._entry.34, ptr @mt8183_afe_pcm_dev_probe._entry.37, ptr @mt8183_afe_pcm_dev_probe._entry.40, ptr @mt8183_afe_pcm_dev_probe._entry_ptr, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.12, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.15, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.19, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.22, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.25, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.30, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.33, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.36, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.39, ptr @mt8183_afe_pcm_dev_probe._entry_ptr.42, ptr @mt8183_afe_pcm_driver_exit, ptr @mt8183_afe_runtime_suspend._entry, ptr @mt8183_afe_runtime_suspend._entry_ptr, ptr @mt8183_general_rate_transform._entry, ptr @mt8183_general_rate_transform._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mt8183_afe_pcm_driver, ptr @.str.5, ptr @.str.6, ptr @mt8183_afe_pcm_dt_match, ptr @mt8183_afe_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @mt8183_afe_regmap_config, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @memif_data, ptr @mt8183_afe_pcm_dev_probe.__key, ptr @.str.26, ptr @irq_data, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @mt8183_afe_hardware, ptr @mt8183_afe_component, ptr @.str.38, ptr @mt8183_afe_pcm_dai_component, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @mt8183_memif_dai_driver, ptr @mt8183_memif_routes, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @memif_ul1_ch1_mix, ptr @.str.60, ptr @memif_ul1_ch2_mix, ptr @.str.61, ptr @memif_ul2_ch1_mix, ptr @.str.62, ptr @memif_ul2_ch2_mix, ptr @.str.63, ptr @memif_ul3_ch1_mix, ptr @.str.64, ptr @memif_ul3_ch2_mix, ptr @.str.65, ptr @memif_ul4_ch1_mix, ptr @.str.66, ptr @memif_ul4_ch2_mix, ptr @.str.67, ptr @memif_ul_mono_1_mix, ptr @mt8183_memif_widgets, ptr @.str.69, ptr @.compoundliteral, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.compoundliteral.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_general_rate_transform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_memif_rate_transform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_data to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_data to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_pcm_dev_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_memif_dai_driver to i32), i32 1512, i32 1888, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_memif_routes to i32), i32 1300, i32 1632, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul1_ch1_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul1_ch2_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul2_ch1_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul2_ch2_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul3_ch1_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul3_ch2_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul4_ch1_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul4_ch2_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_ul_mono_1_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_memif_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_general_rate_transform(ptr noundef %dev, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %rate, i32 noundef 10) #9
  br label %return

return:                                           ; preds = %do.end, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 10, %do.end ], [ 15, %sw.bb14 ], [ 14, %sw.bb13 ], [ 13, %sw.bb12 ], [ 7, %sw.bb11 ], [ 12, %sw.bb10 ], [ 11, %sw.bb9 ], [ 10, %sw.bb8 ], [ 9, %sw.bb7 ], [ 8, %sw.bb6 ], [ 6, %sw.bb5 ], [ 5, %sw.bb4 ], [ 4, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_rate_transform(ptr noundef %dev, i32 noundef %rate, i32 noundef %aud_blk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %aud_blk)
  %cond = icmp eq i32 %aud_blk, 7
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %rate, label %do.end.i [
    i32 8000, label %sw.bb.return_crit_edge
    i32 16000, label %sw.bb1.i
    i32 32000, label %sw.bb2.i
    i32 48000, label %sw.bb3.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %rate, i32 noundef 1) #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @mt8183_general_rate_transform(ptr noundef %dev, i32 noundef %rate)
  br label %return

return:                                           ; preds = %sw.default, %do.end.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.default ], [ 1, %do.end.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_afe_pcm_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8183_afe_pcm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8183_afe_pcm_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8183_afe_pcm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_afe_pcm_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i257 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 164, i32 noundef 3520) #6
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 25
  %1 = ptrtoint ptr %platform_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i257, ptr %platform_priv, align 4
  %tobool5.not = icmp eq ptr %call.i257, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev10, align 4
  %call12 = tail call i32 @mt8183_init_clock(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call16 = tail call ptr @syscon_node_to_regmap(ptr noundef %6) #6
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %err_pm_disable

if.end25:                                         ; preds = %if.end15
  %call27 = tail call i32 @regmap_attach_dev(ptr noundef %dev1, ptr noundef %call16, ptr noundef nonnull @mt8183_afe_regmap_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call27) #9
  br label %err_pm_disable

if.end33:                                         ; preds = %if.end25
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %cmp.i258 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %if.then36, label %if.end41

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call.i.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %11) #9
  br label %err_pm_disable

if.end41:                                         ; preds = %if.end33
  %call42 = tail call i32 @reset_control_reset(ptr noundef %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call42) #9
  br label %err_pm_disable

if.end48:                                         ; preds = %if.end41
  %pm_runtime_bypass_reg_ctl = getelementptr inbounds %struct.mt8183_afe_private, ptr %call.i257, i32 0, i32 1
  %12 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %pm_runtime_bypass_reg_ctl, align 4
  %call.i259 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call52 = tail call i32 @regmap_reinit_cache(ptr noundef %14, ptr noundef nonnull @mt8183_afe_regmap_config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end58, label %do.end57

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call52) #9
  br label %err_pm_disable

if.end58:                                         ; preds = %if.end48
  %call.i260 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  %15 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pm_runtime_bypass_reg_ctl, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %17, i1 noundef zeroext true) #6
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %19) #6
  %memif_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 11
  %20 = ptrtoint ptr %memif_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 9, ptr %memif_size, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 324, i32 noundef 3520) #6
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 10
  %21 = ptrtoint ptr %memif to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i.i, ptr %memif, align 4
  %tobool67.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool67.not, label %if.end58.err_pm_disable_crit_edge, label %for.cond.preheader

if.end58.err_pm_disable_crit_edge:                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_disable

for.cond.preheader:                               ; preds = %if.end58
  %22 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %memif_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp264 = icmp sgt i32 %23, 0
  br i1 %cmp264, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0265 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x %struct.mtk_base_memif_data], ptr @memif_data, i32 0, i32 %i.0265
  %24 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memif, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %25, i32 %i.0265, i32 3
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx, ptr %data, align 4
  %27 = load ptr, ptr %memif, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %27, i32 %i.0265, i32 4
  %28 = ptrtoint ptr %irq_usage to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %irq_usage, align 4
  %inc = add nuw nsw i32 %i.0265, 1
  %29 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %memif_size, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %31 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %memif, align 4
  %irq_usage77 = getelementptr %struct.mtk_base_afe_memif, ptr %32, i32 8, i32 4
  %33 = ptrtoint ptr %irq_usage77 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 8, ptr %irq_usage77, align 4
  %34 = load ptr, ptr %memif, align 4
  %const_irq = getelementptr %struct.mtk_base_afe_memif, ptr %34, i32 8, i32 5
  %35 = ptrtoint ptr %const_irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %const_irq, align 4
  %irq_alloc_lock = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %irq_alloc_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @mt8183_afe_pcm_dev_probe.__key) #6
  %irqs_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 13
  %36 = ptrtoint ptr %irqs_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 11, ptr %irqs_size, align 4
  %call5.i.i261 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 88, i32 noundef 3520) #6
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 12
  %37 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call5.i.i261, ptr %irqs, align 4
  %tobool86.not = icmp eq ptr %call5.i.i261, null
  br i1 %tobool86.not, label %for.end.err_pm_disable_crit_edge, label %for.cond89.preheader

for.end.err_pm_disable_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_disable

for.cond89.preheader:                             ; preds = %for.end
  %38 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irqs_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp91266 = icmp sgt i32 %39, 0
  br i1 %cmp91266, label %for.cond89.preheader.for.body92_crit_edge, label %for.cond89.preheader.for.end98_crit_edge

for.cond89.preheader.for.end98_crit_edge:         ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end98

for.cond89.preheader.for.body92_crit_edge:        ; preds = %for.cond89.preheader
  br label %for.body92

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.cond89.preheader.for.body92_crit_edge
  %i.1267 = phi i32 [ %inc97, %for.body92.for.body92_crit_edge ], [ 0, %for.cond89.preheader.for.body92_crit_edge ]
  %arrayidx93 = getelementptr [11 x %struct.mtk_base_irq_data], ptr @irq_data, i32 0, i32 %i.1267
  %40 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irqs, align 4
  %arrayidx95 = getelementptr %struct.mtk_base_afe_irq, ptr %41, i32 %i.1267
  %42 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx93, ptr %arrayidx95, align 4
  %inc97 = add nuw nsw i32 %i.1267, 1
  %43 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irqs_size, align 4
  %cmp91 = icmp slt i32 %inc97, %44
  br i1 %cmp91, label %for.body92.for.body92_crit_edge, label %for.body92.for.end98_crit_edge

for.body92.for.end98_crit_edge:                   ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end98

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92

for.end98:                                        ; preds = %for.body92.for.end98_crit_edge, %for.cond89.preheader.for.end98_crit_edge
  %call99 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %for.end98.err_pm_disable_crit_edge, label %if.end102

for.end98.err_pm_disable_crit_edge:               ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm_disable

if.end102:                                        ; preds = %for.end98
  %call.i262 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call99, ptr noundef nonnull @mt8183_afe_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool104.not = icmp eq i32 %call.i262, 0
  br i1 %tobool104.not, label %if.end109, label %do.end108

do.end108:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #9
  br label %err_pm_disable

if.end109:                                        ; preds = %if.end102
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 15
  %45 = ptrtoint ptr %sub_dais to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %sub_dais, ptr %sub_dais, align 4
  %prev.i = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 15, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %sub_dais, ptr %prev.i, align 4
  %call114 = tail call i32 @mt8183_dai_adda_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %for.inc122, label %if.end109.do.end119_crit_edge

if.end109.do.end119_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

do.end119:                                        ; preds = %for.inc122.4.do.end119_crit_edge, %for.inc122.3.do.end119_crit_edge, %for.inc122.2.do.end119_crit_edge, %for.inc122.1.do.end119_crit_edge, %for.inc122.do.end119_crit_edge, %if.end109.do.end119_crit_edge
  %i.2268.lcssa = phi i32 [ 0, %if.end109.do.end119_crit_edge ], [ 1, %for.inc122.do.end119_crit_edge ], [ 2, %for.inc122.1.do.end119_crit_edge ], [ 3, %for.inc122.2.do.end119_crit_edge ], [ 4, %for.inc122.3.do.end119_crit_edge ], [ 5, %for.inc122.4.do.end119_crit_edge ]
  %call114.lcssa = phi i32 [ %call114, %if.end109.do.end119_crit_edge ], [ %call114.1, %for.inc122.do.end119_crit_edge ], [ %call114.2, %for.inc122.1.do.end119_crit_edge ], [ %call114.3, %for.inc122.2.do.end119_crit_edge ], [ %call114.4, %for.inc122.3.do.end119_crit_edge ], [ -12, %for.inc122.4.do.end119_crit_edge ]
  %47 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.32, i32 noundef %i.2268.lcssa, i32 noundef %call114.lcssa) #9
  br label %err_pm_disable

for.inc122:                                       ; preds = %if.end109
  %call114.1 = tail call i32 @mt8183_dai_i2s_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.1)
  %tobool115.not.1 = icmp eq i32 %call114.1, 0
  br i1 %tobool115.not.1, label %for.inc122.1, label %for.inc122.do.end119_crit_edge

for.inc122.do.end119_crit_edge:                   ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.inc122.1:                                     ; preds = %for.inc122
  %call114.2 = tail call i32 @mt8183_dai_pcm_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.2)
  %tobool115.not.2 = icmp eq i32 %call114.2, 0
  br i1 %tobool115.not.2, label %for.inc122.2, label %for.inc122.1.do.end119_crit_edge

for.inc122.1.do.end119_crit_edge:                 ; preds = %for.inc122.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.inc122.2:                                     ; preds = %for.inc122.1
  %call114.3 = tail call i32 @mt8183_dai_tdm_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.3)
  %tobool115.not.3 = icmp eq i32 %call114.3, 0
  br i1 %tobool115.not.3, label %for.inc122.3, label %for.inc122.2.do.end119_crit_edge

for.inc122.2.do.end119_crit_edge:                 ; preds = %for.inc122.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.inc122.3:                                     ; preds = %for.inc122.2
  %call114.4 = tail call i32 @mt8183_dai_hostless_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.4)
  %tobool115.not.4 = icmp eq i32 %call114.4, 0
  br i1 %tobool115.not.4, label %for.inc122.4, label %for.inc122.3.do.end119_crit_edge

for.inc122.3.do.end119_crit_edge:                 ; preds = %for.inc122.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

for.inc122.4:                                     ; preds = %for.inc122.3
  %49 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev10, align 4
  %call.i.i271 = tail call noalias ptr @devm_kmalloc(ptr noundef %50, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i271, null
  br i1 %tobool.not.i, label %for.inc122.4.do.end119_crit_edge, label %if.end.i

for.inc122.4.do.end119_crit_edge:                 ; preds = %for.inc122.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

if.end.i:                                         ; preds = %for.inc122.4
  %list.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i.i271, i32 0, i32 8
  %51 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sub_dais, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %sub_dais, ptr noundef %52) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.for.inc122.5_crit_edge

if.end.i.for.inc122.5_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc122.5

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %list.i, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i.i271, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %sub_dais, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %sub_dais to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %list.i, ptr %sub_dais, align 4
  br label %for.inc122.5

for.inc122.5:                                     ; preds = %if.end.i.i.i, %if.end.i.for.inc122.5_crit_edge
  %57 = ptrtoint ptr %call.i.i271 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @mt8183_memif_dai_driver, ptr %call.i.i271, align 4
  %num_dai_drivers.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i.i271, i32 0, i32 1
  %58 = ptrtoint ptr %num_dai_drivers.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 9, ptr %num_dai_drivers.i, align 4
  %dapm_widgets.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i.i271, i32 0, i32 4
  %59 = ptrtoint ptr %dapm_widgets.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mt8183_memif_widgets, ptr %dapm_widgets.i, align 4
  %num_dapm_widgets.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i.i271, i32 0, i32 5
  %60 = ptrtoint ptr %num_dapm_widgets.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 9, ptr %num_dapm_widgets.i, align 4
  %dapm_routes.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i.i271, i32 0, i32 6
  %61 = ptrtoint ptr %dapm_routes.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @mt8183_memif_routes, ptr %dapm_routes.i, align 4
  %num_dapm_routes.i = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i.i271, i32 0, i32 7
  %62 = ptrtoint ptr %num_dapm_routes.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 25, ptr %num_dapm_routes.i, align 4
  %call125 = tail call i32 @mtk_afe_combine_sub_dai(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end132, label %do.end130

do.end130:                                        ; preds = %for.inc122.5
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.35, i32 noundef %call125) #9
  br label %err_pm_disable

if.end132:                                        ; preds = %for.inc122.5
  %mtk_afe_hardware = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 18
  %65 = ptrtoint ptr %mtk_afe_hardware to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mt8183_afe_hardware, ptr %mtk_afe_hardware, align 4
  %memif_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 19
  %66 = ptrtoint ptr %memif_fs to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @mt8183_memif_fs, ptr %memif_fs, align 4
  %irq_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 20
  %67 = ptrtoint ptr %irq_fs to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @mt8183_irq_fs, ptr %irq_fs, align 4
  %runtime_resume = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 8
  %68 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @mt8183_afe_runtime_resume, ptr %runtime_resume, align 4
  %runtime_suspend = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 7
  %69 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @mt8183_afe_runtime_suspend, ptr %runtime_suspend, align 4
  %call134 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mt8183_afe_component, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end140, label %do.end139

do.end139:                                        ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.38) #9
  br label %err_pm_disable

if.end140:                                        ; preds = %if.end132
  %70 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev10, align 4
  %dai_drivers = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 16
  %72 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dai_drivers, align 4
  %num_dai_drivers = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 17
  %74 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_dai_drivers, align 4
  %call142 = tail call i32 @devm_snd_soc_register_component(ptr noundef %71, ptr noundef nonnull @mt8183_afe_pcm_dai_component, ptr noundef %73, i32 noundef %75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end140.cleanup_crit_edge, label %do.end147

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end147:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.41) #9
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %do.end147, %do.end139, %do.end130, %do.end119, %do.end108, %for.end98.err_pm_disable_crit_edge, %for.end.err_pm_disable_crit_edge, %if.end58.err_pm_disable_crit_edge, %do.end57, %do.end47, %if.then36, %do.end32, %do.end22
  %ret.0 = phi i32 [ %10, %do.end22 ], [ %call27, %do.end32 ], [ %11, %if.then36 ], [ %call42, %do.end47 ], [ %call52, %do.end57 ], [ %call.i262, %do.end108 ], [ %call114.lcssa, %do.end119 ], [ %call125, %do.end130 ], [ %call134, %do.end139 ], [ %call142, %do.end147 ], [ -12, %if.end58.err_pm_disable_crit_edge ], [ -12, %for.end.err_pm_disable_crit_edge ], [ %call99, %for.end98.err_pm_disable_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end140.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end ], [ %ret.0, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end140.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_afe_pcm_dev_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @mt8183_afe_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8183_init_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_attach_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_reinit_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_afe_irq_handler(i32 noundef %irq_id, ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %status = alloca i32, align 4
  %mcu_en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !220
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcu_en) #6
  %1 = ptrtoint ptr %mcu_en to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mcu_en, align 4, !annotation !220
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 948, ptr noundef nonnull %mcu_en) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 932, ptr noundef nonnull %status) #6
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = ptrtoint ptr %mcu_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcu_en, align 4
  %and = and i32 %7, 8191
  %and3 = and i32 %and, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp ne i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %memif6 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 10
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 12
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev4 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %call2, i32 noundef %7, i32 noundef %9) #9
  br label %err_irq

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %i.044 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %memif6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memif6, align 4
  %substream = getelementptr %struct.mtk_base_afe_memif, ptr %13, i32 %i.044, i32 2
  %14 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %for.body
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %13, i32 %i.044, i32 4
  %16 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %18 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irqs, align 4
  %arrayidx14 = getelementptr %struct.mtk_base_afe_irq, ptr %19, i32 %17
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx14, align 4
  %irq_en_shift = getelementptr inbounds %struct.mtk_base_irq_data, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %irq_en_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_en_shift, align 4
  %shl = shl nuw i32 1, %23
  %and15 = and i32 %shl, %and3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end12.cleanup_crit_edge, label %if.then17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %cleanup.err_irq_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.err_irq_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

err_irq:                                          ; preds = %cleanup.err_irq_crit_edge, %do.end
  %irq_ret.0 = phi i32 [ 0, %do.end ], [ 1, %cleanup.err_irq_crit_edge ]
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call21 = call i32 @regmap_write(ptr noundef %25, i32 noundef 936, i32 noundef %and3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcu_en) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %irq_ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_combine_sub_dai(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_memif_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.105) #6
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cond.i = icmp eq i32 %11, 7
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %entry
  %14 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %rate, label %do.end.i.i [
    i32 8000, label %sw.bb.i.mt8183_rate_transform.exit_crit_edge
    i32 16000, label %sw.bb1.i.i
    i32 32000, label %sw.bb2.i.i
    i32 48000, label %sw.bb3.i.i
  ]

sw.bb.i.mt8183_rate_transform.exit_crit_edge:     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt8183_rate_transform.exit

sw.bb1.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt8183_rate_transform.exit

sw.bb2.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt8183_rate_transform.exit

sw.bb3.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt8183_rate_transform.exit

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %rate, i32 noundef 1) #9
  br label %mt8183_rate_transform.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 @mt8183_general_rate_transform(ptr noundef %13, i32 noundef %rate) #6
  br label %mt8183_rate_transform.exit

mt8183_rate_transform.exit:                       ; preds = %sw.default.i, %do.end.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.mt8183_rate_transform.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %sw.default.i ], [ 1, %do.end.i.i ], [ 3, %sw.bb3.i.i ], [ 2, %sw.bb2.i.i ], [ 1, %sw.bb1.i.i ], [ 0, %sw.bb.i.mt8183_rate_transform.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_irq_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.105) #6
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
  %call2 = tail call i32 @mt8183_general_rate_transform(ptr noundef %7, i32 noundef %rate)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_afe_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_priv, align 4
  %call1 = tail call i32 @mt8183_afe_enable_clock(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %pm_runtime_bypass_reg_ctl = getelementptr inbounds %struct.mt8183_afe_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pm_runtime_bypass_reg_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @regcache_cache_only(ptr noundef nonnull %5, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regcache_sync(ptr noundef %9) #6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 204, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 108, i32 noundef -1) #6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 2452, i32 noundef -1) #6
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_afe_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %value, align 4, !annotation !220
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.skip_regmap_crit_edge, label %lor.lhs.false

entry.skip_regmap_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_regmap

lor.lhs.false:                                    ; preds = %entry
  %pm_runtime_bypass_reg_ctl = getelementptr inbounds %struct.mt8183_afe_private, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pm_runtime_bypass_reg_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.skip_regmap_crit_edge

lor.lhs.false.skip_regmap_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip_regmap

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %6, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call4 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call4, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 995) #6
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1582 = call i32 @regmap_read(ptr noundef %10, i32 noundef 748, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1582)
  %tobool16.not83 = icmp eq i32 %call1582, 0
  br i1 %tobool16.not83, label %if.end.lor.lhs.false17_crit_edge, label %if.end.do.end42_crit_edge

if.end.do.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.end.lor.lhs.false17_crit_edge:                 ; preds = %if.end
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.then30.lor.lhs.false17_crit_edge, %if.end.lor.lhs.false17_crit_edge
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %lor.lhs.false17.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false17.lor.rhs_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false17
  %call22 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call22, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call22, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call15 = call i32 @regmap_read(ptr noundef %14, i32 noundef 748, ptr noundef nonnull %value) #6
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then30.lor.lhs.false17_crit_edge, label %if.then30.do.end42_crit_edge

if.then30.do.end42_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

if.then30.lor.lhs.false17_crit_edge:              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false17

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_read(ptr noundef %16, i32 noundef 748, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool32.not = icmp eq i32 %call27, 0
  br i1 %tobool32.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end42_crit_edge

for.end.do.end42_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false17.lor.rhs_crit_edge
  %17 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value, align 4
  %and33 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %cmp34 = icmp eq i32 %and33, 0
  br i1 %cmp34, label %lor.rhs.if.end44_crit_edge, label %lor.rhs.do.end42_crit_edge

lor.rhs.do.end42_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end42

lor.rhs.if.end44_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end42:                                         ; preds = %lor.rhs.do.end42_crit_edge, %for.end.do.end42_crit_edge, %if.then30.do.end42_crit_edge, %if.end.do.end42_crit_edge
  %tobool32.not75.ph = phi i32 [ %call1582, %if.end.do.end42_crit_edge ], [ -110, %lor.rhs.do.end42_crit_edge ], [ %call27, %for.end.do.end42_crit_edge ], [ %call15, %if.then30.do.end42_crit_edge ]
  %dev43 = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev43, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef %tobool32.not75.ph) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end42, %lor.rhs.if.end44_crit_edge
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i69 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 936, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i70 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 936, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_only(ptr noundef %26, i1 noundef zeroext true) #6
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  call void @regcache_mark_dirty(ptr noundef %28) #6
  br label %skip_regmap

skip_regmap:                                      ; preds = %if.end44, %lor.lhs.false.skip_regmap_crit_edge, %entry.skip_regmap_crit_edge
  %call51 = call i32 @mt8183_afe_disable_clock(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %call51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mt8183_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 12, label %entry.return_crit_edge2
    i32 68, label %entry.return_crit_edge3
    i32 72, label %entry.return_crit_edge4
    i32 84, label %entry.return_crit_edge5
    i32 88, label %entry.return_crit_edge6
    i32 120, label %entry.return_crit_edge7
    i32 124, label %entry.return_crit_edge8
    i32 136, label %entry.return_crit_edge9
    i32 140, label %entry.return_crit_edge10
    i32 208, label %entry.return_crit_edge11
    i32 212, label %entry.return_crit_edge12
    i32 216, label %entry.return_crit_edge13
    i32 220, label %entry.return_crit_edge14
    i32 224, label %entry.return_crit_edge15
    i32 228, label %entry.return_crit_edge16
    i32 232, label %entry.return_crit_edge17
    i32 236, label %entry.return_crit_edge18
    i32 240, label %entry.return_crit_edge19
    i32 244, label %entry.return_crit_edge20
    i32 304, label %entry.return_crit_edge21
    i32 308, label %entry.return_crit_edge22
    i32 328, label %entry.return_crit_edge23
    i32 332, label %entry.return_crit_edge24
    i32 468, label %entry.return_crit_edge25
    i32 480, label %entry.return_crit_edge26
    i32 484, label %entry.return_crit_edge27
    i32 580, label %entry.return_crit_edge28
    i32 624, label %entry.return_crit_edge29
    i32 628, label %entry.return_crit_edge30
    i32 632, label %entry.return_crit_edge31
    i32 636, label %entry.return_crit_edge32
    i32 748, label %entry.return_crit_edge33
    i32 760, label %entry.return_crit_edge34
    i32 764, label %entry.return_crit_edge35
    i32 784, label %entry.return_crit_edge36
    i32 788, label %entry.return_crit_edge37
    i32 824, label %entry.return_crit_edge38
    i32 828, label %entry.return_crit_edge39
    i32 856, label %entry.return_crit_edge40
    i32 860, label %entry.return_crit_edge41
    i32 868, label %entry.return_crit_edge42
    i32 872, label %entry.return_crit_edge43
    i32 880, label %entry.return_crit_edge44
    i32 888, label %entry.return_crit_edge45
    i32 892, label %entry.return_crit_edge46
    i32 920, label %entry.return_crit_edge47
    i32 924, label %entry.return_crit_edge48
    i32 932, label %entry.return_crit_edge49
    i32 936, label %entry.return_crit_edge50
    i32 952, label %entry.return_crit_edge51
    i32 960, label %entry.return_crit_edge52
    i32 964, label %entry.return_crit_edge53
    i32 968, label %entry.return_crit_edge54
    i32 972, label %entry.return_crit_edge55
    i32 992, label %entry.return_crit_edge56
    i32 1060, label %entry.return_crit_edge57
    i32 1084, label %entry.return_crit_edge58
    i32 1264, label %entry.return_crit_edge59
    i32 1272, label %entry.return_crit_edge60
    i32 1276, label %entry.return_crit_edge61
    i32 1320, label %entry.return_crit_edge62
    i32 1324, label %entry.return_crit_edge63
    i32 1336, label %entry.return_crit_edge64
    i32 1456, label %entry.return_crit_edge65
    i32 1460, label %entry.return_crit_edge66
    i32 1472, label %entry.return_crit_edge67
    i32 1476, label %entry.return_crit_edge68
    i32 1484, label %entry.return_crit_edge69
    i32 1488, label %entry.return_crit_edge70
    i32 1508, label %entry.return_crit_edge71
    i32 1512, label %entry.return_crit_edge72
    i32 1516, label %entry.return_crit_edge73
    i32 2116, label %entry.return_crit_edge74
    i32 2120, label %entry.return_crit_edge75
    i32 2124, label %entry.return_crit_edge76
    i32 2704, label %entry.return_crit_edge77
    i32 2788, label %entry.return_crit_edge78
    i32 2792, label %entry.return_crit_edge79
    i32 2820, label %entry.return_crit_edge80
    i32 2836, label %entry.return_crit_edge81
    i32 2860, label %entry.return_crit_edge82
    i32 2876, label %entry.return_crit_edge83
    i32 2908, label %entry.return_crit_edge84
    i32 2924, label %entry.return_crit_edge85
    i32 2956, label %entry.return_crit_edge86
    i32 2964, label %entry.return_crit_edge87
    i32 2984, label %entry.return_crit_edge88
    i32 3032, label %entry.return_crit_edge89
    i32 3036, label %entry.return_crit_edge90
    i32 3052, label %entry.return_crit_edge91
    i32 3168, label %entry.return_crit_edge92
    i32 3172, label %entry.return_crit_edge93
    i32 3176, label %entry.return_crit_edge94
    i32 3180, label %entry.return_crit_edge95
    i32 3196, label %entry.return_crit_edge96
    i32 3200, label %entry.return_crit_edge97
    i32 3208, label %entry.return_crit_edge98
    i32 3212, label %entry.return_crit_edge99
    i32 3216, label %entry.return_crit_edge100
    i32 3220, label %entry.return_crit_edge101
    i32 3228, label %entry.return_crit_edge102
    i32 3232, label %entry.return_crit_edge103
    i32 3440, label %entry.return_crit_edge104
    i32 3444, label %entry.return_crit_edge105
    i32 3448, label %entry.return_crit_edge106
    i32 3452, label %entry.return_crit_edge107
    i32 3456, label %entry.return_crit_edge108
    i32 3460, label %entry.return_crit_edge109
    i32 3464, label %entry.return_crit_edge110
    i32 3468, label %entry.return_crit_edge111
    i32 3472, label %entry.return_crit_edge112
    i32 3476, label %entry.return_crit_edge113
    i32 3480, label %entry.return_crit_edge114
    i32 3484, label %entry.return_crit_edge115
    i32 3488, label %entry.return_crit_edge116
    i32 3636, label %entry.return_crit_edge117
    i32 3640, label %entry.return_crit_edge118
    i32 3648, label %entry.return_crit_edge119
    i32 3712, label %entry.return_crit_edge120
    i32 3720, label %entry.return_crit_edge121
    i32 3724, label %entry.return_crit_edge122
    i32 3728, label %entry.return_crit_edge123
    i32 3732, label %entry.return_crit_edge124
    i32 3740, label %entry.return_crit_edge125
    i32 3744, label %entry.return_crit_edge126
    i32 3760, label %entry.return_crit_edge127
    i32 3764, label %entry.return_crit_edge128
    i32 3840, label %entry.return_crit_edge129
    i32 3848, label %entry.return_crit_edge130
    i32 3852, label %entry.return_crit_edge131
    i32 3856, label %entry.return_crit_edge132
    i32 3860, label %entry.return_crit_edge133
    i32 3868, label %entry.return_crit_edge134
    i32 3872, label %entry.return_crit_edge135
    i32 3888, label %entry.return_crit_edge136
    i32 3892, label %entry.return_crit_edge137
  ]

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8183_dai_adda_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8183_dai_i2s_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8183_dai_pcm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8183_dai_tdm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8183_dai_hostless_register(ptr noundef) local_unnamed_addr #3

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
declare dso_local i32 @mt8183_afe_enable_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8183_afe_disable_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8183_afe_component_probe(ptr noundef %component) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_afe_add_sub_dai_control(ptr noundef %component) #6
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !199, !200, !201, !203, !205, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 91, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt8183_general_rate_transform._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt8183_general_rate_transform._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_snd_soc_mt8183_afe__239_1288_mt8183_afe_pcm_driver_init6, !9, !"__initcall__kmod_snd_soc_mt8183_afe__239_1288_mt8183_afe_pcm_driver_init6", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1288, i32 1}
!10 = !{ptr @__exitcall_mt8183_afe_pcm_driver_exit, !9, !"__exitcall_mt8183_afe_pcm_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description240, !12, !"__UNIQUE_ID_description240", i1 false, i1 false}
!12 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1290, i32 1}
!13 = !{ptr @__UNIQUE_ID_author241, !14, !"__UNIQUE_ID_author241", i1 false, i1 false}
!14 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1291, i32 1}
!15 = !{ptr @__UNIQUE_ID_file242, !16, !"__UNIQUE_ID_file242", i1 false, i1 false}
!16 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1292, i32 1}
!17 = !{ptr @__UNIQUE_ID_license243, !16, !"__UNIQUE_ID_license243", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 110, i32 3}
!20 = !{ptr @dai_memif_rate_transform._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dai_memif_rate_transform._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1280, i32 14}
!24 = !{ptr @mt8183_afe_pcm_driver, !25, !"mt8183_afe_pcm_driver", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1278, i32 31}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1112, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mt8183_afe_pcm_dev_probe._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1121, i32 3}
!34 = !{ptr @mt8183_afe_pcm_dev_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1127, i32 3}
!38 = !{ptr @mt8183_afe_pcm_dev_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1131, i32 37}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1134, i32 3}
!44 = !{ptr @mt8183_afe_pcm_dev_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1140, i32 3}
!48 = !{ptr @mt8183_afe_pcm_dev_probe._entry.20, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.22, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1150, i32 3}
!52 = !{ptr @mt8183_afe_pcm_dev_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @mt8183_afe_pcm_dev_probe.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1177, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1200, i32 30}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1202, i32 3}
!61 = !{ptr @mt8183_afe_pcm_dev_probe._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1212, i32 4}
!65 = !{ptr @mt8183_afe_pcm_dev_probe._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1221, i32 3}
!69 = !{ptr @mt8183_afe_pcm_dev_probe._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1238, i32 3}
!73 = !{ptr @mt8183_afe_pcm_dev_probe._entry.37, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.41, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1247, i32 3}
!77 = !{ptr @mt8183_afe_pcm_dev_probe._entry.40, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @mt8183_afe_pcm_dev_probe._entry_ptr.42, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @mt8183_afe_regmap_config, !80, !"mt8183_afe_regmap_config", i1 false, i1 false}
!80 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 914, i32 35}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 429, i32 11}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 450, i32 11}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 471, i32 11}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 555, i32 11}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 492, i32 11}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 513, i32 11}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 534, i32 11}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 576, i32 11}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 597, i32 11}
!99 = !{ptr @memif_data, !100, !"memif_data", i1 false, i1 false}
!100 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 427, i32 41}
!101 = !{ptr @irq_data, !102, !"irq_data", i1 false, i1 false}
!102 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 619, i32 39}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 946, i32 3}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @mt8183_afe_irq_handler._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @mt8183_afe_irq_handler._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = distinct !{null, !109, !"dai_register_cbs", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1078, i32 30}
!110 = !{ptr @.str.54, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 218, i32 11}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 230, i32 11}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 242, i32 11}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 254, i32 11}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 266, i32 11}
!120 = !{ptr @mt8183_memif_dai_driver, !121, !"mt8183_memif_dai_driver", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 179, i32 34}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 365, i32 2}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 367, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 370, i32 2}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 372, i32 2}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 375, i32 2}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 377, i32 2}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 380, i32 2}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 382, i32 2}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 385, i32 2}
!140 = !{ptr @mt8183_memif_widgets, !141, !"mt8183_memif_widgets", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 363, i32 41}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 293, i32 2}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 295, i32 2}
!146 = !{ptr @memif_ul1_ch1_mix, !147, !"memif_ul1_ch1_mix", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 292, i32 38}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 300, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 302, i32 2}
!152 = !{ptr @memif_ul1_ch2_mix, !153, !"memif_ul1_ch2_mix", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 299, i32 38}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 309, i32 2}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 311, i32 2}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 313, i32 2}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 315, i32 2}
!162 = !{ptr @memif_ul2_ch1_mix, !163, !"memif_ul2_ch1_mix", i1 false, i1 false}
!163 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 306, i32 38}
!164 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 322, i32 2}
!166 = !{ptr @.str.88, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 324, i32 2}
!168 = !{ptr @.str.90, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 326, i32 2}
!170 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 328, i32 2}
!172 = !{ptr @memif_ul2_ch2_mix, !173, !"memif_ul2_ch2_mix", i1 false, i1 false}
!173 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 319, i32 38}
!174 = !{ptr @memif_ul3_ch1_mix, !175, !"memif_ul3_ch1_mix", i1 false, i1 false}
!175 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 332, i32 38}
!176 = !{ptr @memif_ul3_ch2_mix, !177, !"memif_ul3_ch2_mix", i1 false, i1 false}
!177 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 339, i32 38}
!178 = !{ptr @memif_ul4_ch1_mix, !179, !"memif_ul4_ch1_mix", i1 false, i1 false}
!179 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 346, i32 38}
!180 = !{ptr @memif_ul4_ch2_mix, !181, !"memif_ul4_ch2_mix", i1 false, i1 false}
!181 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 351, i32 38}
!182 = !{ptr @memif_ul_mono_1_mix, !183, !"memif_ul_mono_1_mix", i1 false, i1 false}
!183 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 356, i32 38}
!184 = !{ptr @.str.102, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 394, i32 29}
!186 = !{ptr @.str.103, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 396, i32 26}
!188 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 403, i32 26}
!190 = !{ptr @mt8183_memif_routes, !191, !"mt8183_memif_routes", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 390, i32 40}
!192 = !{ptr @mt8183_afe_hardware, !193, !"mt8183_afe_hardware", i1 false, i1 false}
!193 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 127, i32 38}
!194 = !{ptr @.str.105, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 147, i32 30}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 997, i32 3}
!198 = !{ptr @.str.107, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @mt8183_afe_runtime_suspend._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @mt8183_afe_runtime_suspend._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @mt8183_afe_component, !202, !"mt8183_afe_component", i1 false, i1 false}
!202 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1050, i32 46}
!203 = !{ptr @.str.108, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 424, i32 10}
!205 = !{ptr @mt8183_afe_pcm_dai_component, !206, !"mt8183_afe_pcm_dai_component", i1 false, i1 false}
!206 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 423, i32 46}
!207 = !{ptr @mt8183_afe_pcm_dt_match, !208, !"mt8183_afe_pcm_dt_match", i1 false, i1 false}
!208 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1267, i32 34}
!209 = !{ptr @mt8183_afe_pm_ops, !210, !"mt8183_afe_pm_ops", i1 false, i1 false}
!210 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-pcm.c", i32 1273, i32 32}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{!"auto-init"}
