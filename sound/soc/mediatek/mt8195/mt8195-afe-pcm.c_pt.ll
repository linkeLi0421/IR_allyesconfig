; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8195/mt8195-afe-pcm.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mt8195_afe_rate = type { i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mtk_base_irq_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_base_memif_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.mt8195_afe_channel_merge = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mt8195_afe_private = type { ptr, ptr, ptr, i32, ptr, i32, [3 x i32], %struct.spinlock, [22 x %struct.mtk_dai_memif_irq_priv], %struct.mtkaif_param, [26 x ptr] }
%struct.mtk_dai_memif_irq_priv = type { i32 }
%struct.mtkaif_param = type { i8, [3 x i32], [3 x i32], i32, i32 }
%struct.mtk_base_afe_irq = type { ptr, i32 }
%struct.mtk_base_afe_memif = type { i32, i32, ptr, ptr, i32, i32, ptr, i32, i32 }
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
%struct.mtk_base_afe_dai = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }

@mt8195_afe_rates = internal constant { [18 x %struct.mt8195_afe_rate], [48 x i8] } { [18 x %struct.mt8195_afe_rate] [%struct.mt8195_afe_rate { i32 8000, i32 0 }, %struct.mt8195_afe_rate { i32 12000, i32 1 }, %struct.mt8195_afe_rate { i32 16000, i32 2 }, %struct.mt8195_afe_rate { i32 24000, i32 3 }, %struct.mt8195_afe_rate { i32 32000, i32 4 }, %struct.mt8195_afe_rate { i32 48000, i32 5 }, %struct.mt8195_afe_rate { i32 96000, i32 6 }, %struct.mt8195_afe_rate { i32 192000, i32 7 }, %struct.mt8195_afe_rate { i32 384000, i32 8 }, %struct.mt8195_afe_rate { i32 7350, i32 16 }, %struct.mt8195_afe_rate { i32 11025, i32 17 }, %struct.mt8195_afe_rate { i32 14700, i32 18 }, %struct.mt8195_afe_rate { i32 22050, i32 19 }, %struct.mt8195_afe_rate { i32 29400, i32 20 }, %struct.mt8195_afe_rate { i32 44100, i32 21 }, %struct.mt8195_afe_rate { i32 88200, i32 22 }, %struct.mt8195_afe_rate { i32 176400, i32 23 }, %struct.mt8195_afe_rate { i32 352800, i32 24 }], [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_soc_mt8195_afe__243_3280_mt8195_afe_pcm_driver_init6 = internal global ptr @mt8195_afe_pcm_driver_init, section ".initcall6.init", align 4
@mt8195_afe_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt8195_afe_pcm_dev_probe, ptr @mt8195_afe_pcm_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt8195_afe_pcm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt8195_afe_pcm_driver_exit = internal global ptr @mt8195_afe_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [78 x i8] c"snd_soc_mt8195_afe.description=Mediatek ALSA SoC AFE platform driver for 8195\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [67 x i8] c"snd_soc_mt8195_afe.author=Bicycle Tsai <bicycle.tsai@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [69 x i8] c"snd_soc_mt8195_afe.file=sound/soc/mediatek/mt8195/snd-soc-mt8195-afe\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [34 x i8] c"snd_soc_mt8195_afe.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt8195-audio\00", [19 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt8195_afe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_runtime_suspend, ptr @mt8195_afe_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 3067, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to assign memory region: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt8195_afe_pcm_dev_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt8195/mt8195-afe-pcm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr = internal global ptr @mt8195_afe_pcm_dev_probe._entry, section ".printk_index", align 4
@mt8195_afe_pcm_dev_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 3094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init clock error\0A\00", [46 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.8 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.6, section ".printk_index", align 4
@mt8195_afe_pcm_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&afe_priv->afe_ctrl_lock\00", [39 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&afe->irq_alloc_lock\00", [43 x i8] zeroinitializer }, align 32
@irq_data_array = internal constant { [22 x %struct.mtk_base_irq_data], [256 x i8] } { [22 x %struct.mtk_base_irq_data] [%struct.mtk_base_irq_data { i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 356, i32 31, i32 368, i32 0, i32 16 }, %struct.mtk_base_irq_data { i32 1, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 360, i32 31, i32 368, i32 1, i32 17 }, %struct.mtk_base_irq_data { i32 2, i32 364, i32 0, i32 16777215, i32 -1, i32 0, i32 0, i32 364, i32 31, i32 368, i32 2, i32 18 }, %struct.mtk_base_irq_data { i32 3, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 440, i32 31, i32 368, i32 7, i32 23 }, %struct.mtk_base_irq_data { i32 4, i32 444, i32 0, i32 16777215, i32 -1, i32 0, i32 0, i32 444, i32 31, i32 368, i32 8, i32 24 }, %struct.mtk_base_irq_data { i32 5, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 448, i32 31, i32 368, i32 9, i32 25 }, %struct.mtk_base_irq_data { i32 6, i32 276, i32 0, i32 16777215, i32 276, i32 24, i32 131071, i32 276, i32 31, i32 340, i32 0, i32 0 }, %struct.mtk_base_irq_data { i32 7, i32 280, i32 0, i32 16777215, i32 280, i32 24, i32 131071, i32 280, i32 31, i32 340, i32 1, i32 1 }, %struct.mtk_base_irq_data { i32 8, i32 284, i32 0, i32 16777215, i32 284, i32 24, i32 131071, i32 284, i32 31, i32 340, i32 2, i32 2 }, %struct.mtk_base_irq_data { i32 9, i32 288, i32 0, i32 16777215, i32 288, i32 24, i32 131071, i32 288, i32 31, i32 340, i32 3, i32 3 }, %struct.mtk_base_irq_data { i32 10, i32 292, i32 0, i32 16777215, i32 292, i32 24, i32 131071, i32 292, i32 31, i32 340, i32 4, i32 4 }, %struct.mtk_base_irq_data { i32 11, i32 296, i32 0, i32 16777215, i32 296, i32 24, i32 131071, i32 296, i32 31, i32 340, i32 5, i32 5 }, %struct.mtk_base_irq_data { i32 12, i32 300, i32 0, i32 16777215, i32 300, i32 24, i32 131071, i32 300, i32 31, i32 340, i32 6, i32 6 }, %struct.mtk_base_irq_data { i32 13, i32 304, i32 0, i32 16777215, i32 304, i32 24, i32 131071, i32 304, i32 31, i32 340, i32 7, i32 7 }, %struct.mtk_base_irq_data { i32 14, i32 308, i32 0, i32 16777215, i32 308, i32 24, i32 131071, i32 308, i32 31, i32 340, i32 8, i32 8 }, %struct.mtk_base_irq_data { i32 15, i32 312, i32 0, i32 16777215, i32 312, i32 24, i32 131071, i32 312, i32 31, i32 340, i32 9, i32 9 }, %struct.mtk_base_irq_data { i32 16, i32 316, i32 0, i32 16777215, i32 316, i32 24, i32 131071, i32 316, i32 31, i32 340, i32 10, i32 10 }, %struct.mtk_base_irq_data { i32 17, i32 320, i32 0, i32 16777215, i32 320, i32 24, i32 131071, i32 320, i32 31, i32 340, i32 11, i32 11 }, %struct.mtk_base_irq_data { i32 18, i32 324, i32 0, i32 16777215, i32 324, i32 24, i32 131071, i32 324, i32 31, i32 340, i32 12, i32 12 }, %struct.mtk_base_irq_data { i32 19, i32 328, i32 0, i32 16777215, i32 328, i32 24, i32 131071, i32 328, i32 31, i32 340, i32 13, i32 13 }, %struct.mtk_base_irq_data { i32 20, i32 332, i32 0, i32 16777215, i32 332, i32 24, i32 131071, i32 332, i32 31, i32 340, i32 14, i32 14 }, %struct.mtk_base_irq_data { i32 21, i32 336, i32 0, i32 16777215, i32 336, i32 24, i32 131071, i32 336, i32 31, i32 340, i32 15, i32 15 }], [256 x i8] zeroinitializer }, align 32
@memif_data = internal constant { [16 x %struct.mtk_base_memif_data], [640 x i8] } { [16 x %struct.mtk_base_memif_data] [%struct.mtk_base_memif_data { i32 0, ptr @.str.37, i32 4688, i32 4692, i32 4696, i32 0, i32 0, i32 0, i32 5536, i32 10, i32 31, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 4608, i32 18, i32 4700, i32 5, i32 0, i32 0, i32 6444, i32 18, i32 6448, i32 18, i32 20, i32 18, i32 4700, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 1, ptr @.str.38, i32 4704, i32 4708, i32 4712, i32 0, i32 0, i32 0, i32 5536, i32 15, i32 31, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 4608, i32 19, i32 4716, i32 5, i32 0, i32 0, i32 6444, i32 19, i32 6448, i32 19, i32 20, i32 19, i32 4716, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 2, ptr @.str.39, i32 4752, i32 4756, i32 4760, i32 0, i32 0, i32 0, i32 5540, i32 0, i32 31, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 4608, i32 22, i32 4764, i32 5, i32 0, i32 0, i32 6444, i32 22, i32 6448, i32 22, i32 20, i32 22, i32 4764, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 3, ptr @.str.40, i32 4768, i32 4772, i32 4776, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 4608, i32 23, i32 4780, i32 5, i32 0, i32 0, i32 6444, i32 23, i32 6448, i32 23, i32 20, i32 23, i32 4780, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 4, ptr @.str.41, i32 4784, i32 4788, i32 4792, i32 0, i32 0, i32 0, i32 5540, i32 10, i32 31, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 4608, i32 24, i32 4796, i32 6, i32 0, i32 0, i32 6444, i32 24, i32 6448, i32 24, i32 -1, i32 0, i32 4796, i32 0, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 5, ptr @.str.42, i32 4816, i32 4820, i32 4824, i32 0, i32 0, i32 0, i32 5540, i32 20, i32 31, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 4608, i32 26, i32 4828, i32 5, i32 0, i32 0, i32 6444, i32 26, i32 6448, i32 26, i32 -1, i32 0, i32 4828, i32 0, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 6, ptr @.str.43, i32 4832, i32 4836, i32 4840, i32 0, i32 0, i32 0, i32 5540, i32 25, i32 31, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 4608, i32 27, i32 4844, i32 7, i32 0, i32 0, i32 6444, i32 27, i32 6448, i32 27, i32 20, i32 27, i32 4844, i32 0, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 7, ptr @.str.44, i32 4864, i32 4868, i32 4872, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 4876, i32 1, i32 0, i32 0, i32 0, i32 0, i32 4876, i32 0, i32 4608, i32 1, i32 4876, i32 5, i32 0, i32 0, i32 6444, i32 0, i32 6448, i32 0, i32 20, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 8, ptr @.str.45, i32 4880, i32 4884, i32 4888, i32 0, i32 0, i32 0, i32 5544, i32 5, i32 31, i32 4892, i32 1, i32 0, i32 0, i32 0, i32 0, i32 4892, i32 0, i32 4608, i32 2, i32 4892, i32 5, i32 0, i32 0, i32 6444, i32 1, i32 6448, i32 1, i32 20, i32 1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 9, ptr @.str.46, i32 4896, i32 4900, i32 4904, i32 0, i32 0, i32 0, i32 5544, i32 10, i32 31, i32 4908, i32 1, i32 0, i32 0, i32 0, i32 0, i32 4908, i32 0, i32 4608, i32 3, i32 4908, i32 5, i32 0, i32 0, i32 6444, i32 2, i32 6448, i32 2, i32 20, i32 2, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 10, ptr @.str.47, i32 4912, i32 4916, i32 4920, i32 0, i32 0, i32 0, i32 5544, i32 15, i32 31, i32 4924, i32 1, i32 0, i32 0, i32 0, i32 0, i32 4924, i32 0, i32 4608, i32 4, i32 4924, i32 5, i32 0, i32 0, i32 6444, i32 3, i32 6448, i32 3, i32 20, i32 3, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 11, ptr @.str.48, i32 4928, i32 4932, i32 4936, i32 0, i32 0, i32 0, i32 5544, i32 20, i32 31, i32 4940, i32 1, i32 0, i32 0, i32 0, i32 0, i32 4940, i32 0, i32 4608, i32 5, i32 4940, i32 5, i32 0, i32 0, i32 6444, i32 4, i32 6448, i32 4, i32 20, i32 4, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 12, ptr @.str.49, i32 4944, i32 4948, i32 4952, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 4956, i32 1, i32 0, i32 0, i32 0, i32 0, i32 4956, i32 0, i32 4608, i32 6, i32 4956, i32 5, i32 0, i32 0, i32 6444, i32 5, i32 6448, i32 5, i32 20, i32 5, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 13, ptr @.str.50, i32 4976, i32 4980, i32 4984, i32 0, i32 0, i32 0, i32 5548, i32 5, i32 31, i32 4988, i32 1, i32 0, i32 0, i32 0, i32 0, i32 4988, i32 0, i32 4608, i32 8, i32 4988, i32 5, i32 0, i32 0, i32 6444, i32 7, i32 6448, i32 7, i32 20, i32 7, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 14, ptr @.str.51, i32 4992, i32 4996, i32 5000, i32 0, i32 0, i32 0, i32 5548, i32 10, i32 31, i32 5004, i32 1, i32 0, i32 0, i32 0, i32 0, i32 5004, i32 0, i32 4608, i32 9, i32 5004, i32 5, i32 0, i32 0, i32 6444, i32 8, i32 6448, i32 8, i32 20, i32 8, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 15, ptr @.str.52, i32 5072, i32 5076, i32 5080, i32 0, i32 0, i32 0, i32 5548, i32 15, i32 31, i32 5084, i32 1, i32 0, i32 0, i32 0, i32 0, i32 5084, i32 0, i32 4608, i32 10, i32 5084, i32 5, i32 0, i32 0, i32 6444, i32 9, i32 6448, i32 9, i32 20, i32 9, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [640 x i8] zeroinitializer }, align 32
@mt8195_afe_memif_const_irqs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 6, i32 7, i32 8, i32 0, i32 9, i32 10, i32 11, i32 2, i32 12, i32 13, i32 14, i32 15, i32 4, i32 16, i32 17, i32 18], [32 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 3129, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s no irq found\0A\00", [47 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.14 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asys-isr\00", [23 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 3136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not request_irq for asys-isr\0A\00", [60 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.18 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.16, section ".printk_index", align 4
@mt8195_afe_pcm_dev_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 3147, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dai register i %d fail, ret %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.22 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.19, section ".printk_index", align 4
@mt8195_afe_pcm_dev_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 3156, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"mtk_afe_combine_sub_dai fail, ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.25 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.23, section ".printk_index", align 4
@mt8195_afe_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 1092, i32 0, i32 0, i32 0, i32 0, i32 0, i32 524288, i32 64, i32 262144, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt8195_afe_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @mt8195_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20792, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 5199, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mt8195_afe_pcm:3183:(&mt8195_afe_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@mt8195_cg_patch = internal constant { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 0, i32 -5, i32 0 }, %struct.reg_sequence { i32 4, i32 -8, i32 0 }], [40 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 3192, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to apply cg patch\0A\00", [38 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.29 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.27, section ".printk_index", align 4
@mt8195_afe_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.479, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @mt8195_afe_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_afe_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 3200, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"err_platform\0A\00", [18 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.32 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.30, section ".printk_index", align 4
@mt8195_afe_pcm_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.483, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pcm\00", [28 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 3224, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"err_dai_component\0A\00", [45 x i8] zeroinitializer }, align 32
@mt8195_afe_pcm_dev_probe._entry_ptr.36 = internal global ptr @mt8195_afe_pcm_dev_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL6\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL7\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL8\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL10\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DL11\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL4\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL5\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL6\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL8\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL9\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UL10\00", [27 x i8] zeroinitializer }, align 32
@mt8195_afe_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 2866, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s irq status err\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt8195_afe_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mt8195_afe_irq_handler._entry_ptr = internal global ptr @mt8195_afe_irq_handler._entry, section ".printk_index", align 4
@mt8195_afe_irq_handler._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.3, i32 2874, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s read irq mask err\0A\00", [42 x i8] zeroinitializer }, align 32
@mt8195_afe_irq_handler._entry_ptr.58 = internal global ptr @mt8195_afe_irq_handler._entry.56, section ".printk_index", align 4
@mt8195_memif_dai_driver = internal global { [16 x %struct.snd_soc_dai_driver], [672 x i8] } { [16 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.37, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.37, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.38, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.38, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.39, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.39, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.40, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.40, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.41, i32 4, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.41, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 24, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.42, i32 5, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.42, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.43, i32 6, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.43, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 48, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.44, i32 7, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.44, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.45, i32 8, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.45, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.46, i32 9, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.46, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 16, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.47, i32 10, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.47, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.48, i32 11, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.48, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.49, i32 12, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.49, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.50, i32 13, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.50, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 24, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.51, i32 14, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.51, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 32, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.52, i32 15, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.52, i64 1092, i32 32510, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [672 x i8] zeroinitializer }, align 32
@mt8195_memif_routes = internal constant { [260 x %struct.snd_soc_dapm_route], [3376 x i8] } { [260 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.169, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr @.str.170, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.171, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.184, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.171, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.184, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.176, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.190, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.201, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.210, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.219, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.226, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.232, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.238, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.245, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.251, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.257, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.263, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.269, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.275, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.281, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.287, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.176, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.190, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.201, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.210, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.219, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.226, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.232, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.238, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.243, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.249, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.255, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.261, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.267, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.273, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.279, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.285, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.290, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.294, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.298, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.302, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.306, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.310, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.314, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.318, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.245, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.251, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.257, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.263, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.269, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.275, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.281, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.287, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.171, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.184, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.174, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.188, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.178, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.192, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.171, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.184, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.347, ptr @.str.406, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.356, ptr @.str.407, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.172, ptr @.str.408, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.186, ptr @.str.409, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.174, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.188, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.178, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.192, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.180, ptr @.str.410, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.194, ptr @.str.411, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.171, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.184, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.172, ptr @.str.408, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.186, ptr @.str.409, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.174, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.188, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.178, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.192, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.182, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.196, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.176, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.190, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.201, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.210, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.176, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.190, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.201, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.210, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.219, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.226, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.232, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.238, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.347, ptr @.str.406, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.356, ptr @.str.407, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.172, ptr @.str.408, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.186, ptr @.str.409, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.199, ptr @.str.414, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.208, ptr @.str.415, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.217, ptr @.str.416, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.224, ptr @.str.417, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.230, ptr @.str.418, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.236, ptr @.str.419, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.172, ptr @.str.408, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.186, ptr @.str.409, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.199, ptr @.str.414, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.208, ptr @.str.415, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.217, ptr @.str.416, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.224, ptr @.str.417, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.230, ptr @.str.418, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.236, ptr @.str.419, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.180, ptr @.str.410, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.194, ptr @.str.411, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.203, ptr @.str.420, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.212, ptr @.str.421, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.221, ptr @.str.422, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.228, ptr @.str.423, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.234, ptr @.str.424, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.240, ptr @.str.425, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.180, ptr @.str.410, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.194, ptr @.str.411, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.203, ptr @.str.420, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.212, ptr @.str.421, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.221, ptr @.str.422, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.228, ptr @.str.423, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr @.str.234, ptr @.str.424, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.240, ptr @.str.425, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.292, ptr @.str.426, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.296, ptr @.str.427, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.300, ptr @.str.428, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.304, ptr @.str.429, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.308, ptr @.str.430, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.312, ptr @.str.431, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.316, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.320, ptr @.str.433, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.323, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.326, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.329, ptr @.str.436, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.332, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.335, ptr @.str.438, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.338, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr @.str.341, ptr @.str.440, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.344, ptr @.str.441, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.182, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.196, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.205, ptr @.str.442, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.214, ptr @.str.443, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.182, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.182, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.196, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.205, ptr @.str.442, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.205, ptr @.str.442, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.214, ptr @.str.443, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr @.str.182, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr @.str.196, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.205, ptr @.str.442, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.214, ptr @.str.443, ptr null, %struct.snd_soc_dobj zeroinitializer }], [3376 x i8] zeroinitializer }, align 32
@mt8195_memif_controls = internal constant { [32 x %struct.snd_kcontrol_new], [384 x i8] } { [32 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.444, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl2_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 1, i32 0, ptr @.str.445, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl3_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 2, i32 0, ptr @.str.446, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl6_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 3, i32 0, ptr @.str.447, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl7_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 4, i32 0, ptr @.str.448, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl8_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 5, i32 0, ptr @.str.449, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl10_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 6, i32 0, ptr @.str.450, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl11_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 7, i32 0, ptr @.str.451, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul1_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 8, i32 0, ptr @.str.452, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul2_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 9, i32 0, ptr @.str.453, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul3_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 10, i32 0, ptr @.str.454, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul4_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 11, i32 0, ptr @.str.455, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul5_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 12, i32 0, ptr @.str.456, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul6_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 13, i32 0, ptr @.str.457, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul8_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 14, i32 0, ptr @.str.458, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul9_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 15, i32 0, ptr @.str.459, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_memif_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @ul10_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 6, i32 0, ptr @.str.460, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq1_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 7, i32 0, ptr @.str.461, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq2_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 8, i32 0, ptr @.str.462, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq3_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 9, i32 0, ptr @.str.463, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq4_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 10, i32 0, ptr @.str.464, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq5_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 11, i32 0, ptr @.str.465, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq6_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 12, i32 0, ptr @.str.466, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq7_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 13, i32 0, ptr @.str.467, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq8_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 14, i32 0, ptr @.str.468, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq9_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 15, i32 0, ptr @.str.469, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq10_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 16, i32 0, ptr @.str.470, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq11_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 17, i32 0, ptr @.str.471, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq12_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 18, i32 0, ptr @.str.472, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq13_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 19, i32 0, ptr @.str.473, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq14_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 20, i32 0, ptr @.str.474, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq15_1x_en_sel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 21, i32 0, ptr @.str.475, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @mt8195_asys_irq_1x_en_sel_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @asys_irq16_1x_en_sel_enum to i32) }], [384 x i8] zeroinitializer }, align 32
@mt8195_afe_fe_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt8195_afe_fe_startup, ptr @mt8195_afe_fe_shutdown, ptr @mt8195_afe_fe_hw_params, ptr @mt8195_afe_fe_hw_free, ptr @mt8195_afe_fe_prepare, ptr @mt8195_afe_fe_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mt8195_afe_fe_startup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_soc_mt8195_afe\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt8195_afe_fe_startup\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hw_constraint_minmax failed\0A\00", [35 x i8] zeroinitializer }, align 32
@mt8195_afe_found_cm.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.59, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt8195_afe_found_cm\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s, memif %d cannot find CM!\0A\00", [34 x i8] zeroinitializer }, align 32
@mt8195_afe_cm = internal constant { [3 x %struct.mt8195_afe_channel_merge], [48 x i8] } { [3 x %struct.mt8195_afe_channel_merge] [%struct.mt8195_afe_channel_merge { i32 0, i32 1632, i32 30, i32 1, i32 1, i32 2, i32 63, i32 0, i32 1, i32 16, i32 8191, i32 3 }, %struct.mt8195_afe_channel_merge { i32 1, i32 1636, i32 30, i32 1, i32 1, i32 2, i32 31, i32 0, i32 1, i32 16, i32 8191, i32 3 }, %struct.mt8195_afe_channel_merge { i32 2, i32 1640, i32 30, i32 1, i32 1, i32 2, i32 31, i32 0, i32 1, i32 16, i32 8191, i32 3 }], [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I000\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I001\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I020\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I021\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I022\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I023\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I024\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I025\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I026\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I027\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I028\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I029\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I030\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I031\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I032\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I033\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I034\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I035\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I036\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I037\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I038\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I039\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I040\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I041\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I042\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I043\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I044\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I045\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I046\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I047\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I048\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I049\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I050\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I051\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I052\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I053\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I054\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I055\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I056\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I057\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I058\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I059\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I060\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I061\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I062\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I063\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I064\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I065\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I066\00", [27 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I067\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I068\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I069\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I070\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I071\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DL8_DL11 Mux\00", [19 x i8] zeroinitializer }, align 32
@dl8_dl11_data_sel_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @dl8_dl11_data_sel_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O002\00", [27 x i8] zeroinitializer }, align 32
@o002_mix = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O003\00", [27 x i8] zeroinitializer }, align 32
@o003_mix = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O004\00", [27 x i8] zeroinitializer }, align 32
@o004_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.203, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.204 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.206 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O005\00", [27 x i8] zeroinitializer }, align 32
@o005_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O006\00", [27 x i8] zeroinitializer }, align 32
@o006_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.216 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.220 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O007\00", [27 x i8] zeroinitializer }, align 32
@o007_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O008\00", [27 x i8] zeroinitializer }, align 32
@o008_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O009\00", [27 x i8] zeroinitializer }, align 32
@o009_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O010\00", [27 x i8] zeroinitializer }, align 32
@o010_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O011\00", [27 x i8] zeroinitializer }, align 32
@o011_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O012\00", [27 x i8] zeroinitializer }, align 32
@o012_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.257, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.203, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O013\00", [27 x i8] zeroinitializer }, align 32
@o013_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.261, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.263, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O014\00", [27 x i8] zeroinitializer }, align 32
@o014_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.267, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.268 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.270 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O015\00", [27 x i8] zeroinitializer }, align 32
@o015_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.273, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O016\00", [27 x i8] zeroinitializer }, align 32
@o016_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.279, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O017\00", [27 x i8] zeroinitializer }, align 32
@o017_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.285, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O018\00", [27 x i8] zeroinitializer }, align 32
@o018_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O019\00", [27 x i8] zeroinitializer }, align 32
@o019_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.294, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O020\00", [27 x i8] zeroinitializer }, align 32
@o020_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O021\00", [27 x i8] zeroinitializer }, align 32
@o021_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.302, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.303 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.304, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.305 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O022\00", [27 x i8] zeroinitializer }, align 32
@o022_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.306, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.307 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.308, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.309 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O023\00", [27 x i8] zeroinitializer }, align 32
@o023_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.310, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.311 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.312, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.313 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O024\00", [27 x i8] zeroinitializer }, align 32
@o024_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.314, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.315 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.316, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.317 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O025\00", [27 x i8] zeroinitializer }, align 32
@o025_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.318, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.319 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.320, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O026\00", [27 x i8] zeroinitializer }, align 32
@o026_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O027\00", [27 x i8] zeroinitializer }, align 32
@o027_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.326, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.327 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O028\00", [27 x i8] zeroinitializer }, align 32
@o028_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.257, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.329, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O029\00", [27 x i8] zeroinitializer }, align 32
@o029_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.263, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.333 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O030\00", [27 x i8] zeroinitializer }, align 32
@o030_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.269, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.334 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.335, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.336 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O031\00", [27 x i8] zeroinitializer }, align 32
@o031_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.275, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.339 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O032\00", [27 x i8] zeroinitializer }, align 32
@o032_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.281, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.340 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O033\00", [27 x i8] zeroinitializer }, align 32
@o033_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.287, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.343 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.344, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.345 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O034\00", [27 x i8] zeroinitializer }, align 32
@o034_mix = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.348 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.349 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.351 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.352 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.353 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.354 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O035\00", [27 x i8] zeroinitializer }, align 32
@o035_mix = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.355 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.356, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.357 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.358 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.359 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.360 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.361 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.362, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.363 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.364, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.365 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.367 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.368 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.369 to i32) }], [128 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O036\00", [27 x i8] zeroinitializer }, align 32
@o036_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.370 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.372 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.373 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.374 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O037\00", [27 x i8] zeroinitializer }, align 32
@o037_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.375 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.376 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.377 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.378 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.379 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O038\00", [27 x i8] zeroinitializer }, align 32
@o038_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.380 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O039\00", [27 x i8] zeroinitializer }, align 32
@o039_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.381 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O182\00", [27 x i8] zeroinitializer }, align 32
@o182_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.382 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O183\00", [27 x i8] zeroinitializer }, align 32
@o183_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.383 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O040\00", [27 x i8] zeroinitializer }, align 32
@o040_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.347, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.384 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.385 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.386 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.387 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O041\00", [27 x i8] zeroinitializer }, align 32
@o041_mix = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.356, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.388 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.389 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.390 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.391 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O042\00", [27 x i8] zeroinitializer }, align 32
@o042_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.392 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.393 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.205, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.394 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O043\00", [27 x i8] zeroinitializer }, align 32
@o043_mix = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.395 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.396 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.397 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O044\00", [27 x i8] zeroinitializer }, align 32
@o044_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.398 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.399 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O045\00", [27 x i8] zeroinitializer }, align 32
@o045_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.400 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.401 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O046\00", [27 x i8] zeroinitializer }, align 32
@o046_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.402 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.403 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"O047\00", [27 x i8] zeroinitializer }, align 32
@o047_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.404 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.405 to i32) }], [32 x i8] zeroinitializer }, align 32
@mt8195_memif_widgets = internal constant { [103 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [4628 x i8] } { [103 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dl8_dl11_data_sel_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @o002_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @o003_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @o004_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @o005_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o006_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o007_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @o008_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @o009_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o010_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o011_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o012_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o013_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o014_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o015_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o016_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o017_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o018_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o019_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o020_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o021_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o022_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o023_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o024_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o025_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o026_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o027_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o028_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o029_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o030_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o031_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o032_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o033_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @o034_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 12, ptr @o035_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @o036_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @o037_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @o038_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @o039_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @o182_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @o183_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o040_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @o041_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @o042_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @o043_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o044_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o045_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o046_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @o047_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [4628 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DL8_DL11 Sink\00", [18 x i8] zeroinitializer }, align 32
@dl8_dl11_data_sel_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4616, i8 0, i8 0, i32 2, i32 1, ptr @dl8_dl11_data_sel_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dl8_dl11_data_sel_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.169, ptr @.str.170], [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dl8\00", [28 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dl11\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I000 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12328, i32 12328, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I012 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12328, i32 12328, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I020 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12328, i32 12328, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I022 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12328, i32 12328, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I070 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12336, i32 12336, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I072 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12336, i32 12336, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I168 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2104, i32 2104, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I001 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12348, i32 12348, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I013 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12348, i32 12348, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I021 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12348, i32 12348, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I023 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12348, i32 12348, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I071 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12356, i32 12356, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I073 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12356, i32 12356, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I169 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2108, i32 2108, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12368, i32 12368, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I014 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12368, i32 12368, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I024 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12368, i32 12368, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I074 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.204 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12376, i32 12376, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I170 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.206 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2112, i32 2112, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12388, i32 12388, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I015 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12388, i32 12388, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I025 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12388, i32 12388, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I075 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12396, i32 12396, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I171 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2116, i32 2116, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12408, i32 12408, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I016 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12408, i32 12408, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I026 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.220 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12408, i32 12408, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I076 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12416, i32 12416, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12428, i32 12428, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I017 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12428, i32 12428, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I027 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12428, i32 12428, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I077 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12436, i32 12436, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I018 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12448, i32 12448, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I028 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12448, i32 12448, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I078 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12456, i32 12456, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I019 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12468, i32 12468, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I029 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12468, i32 12468, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I079 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12476, i32 12476, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12488, i32 12488, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I030 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12488, i32 12488, i32 30, i32 30, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I046 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12492, i32 12492, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12496, i32 12496, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12508, i32 12508, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I031 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12508, i32 12508, i32 31, i32 31, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I047 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12512, i32 12512, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12516, i32 12516, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12528, i32 12528, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I032 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12532, i32 12532, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I048 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12532, i32 12532, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12536, i32 12536, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12548, i32 12548, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I033 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12552, i32 12552, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I049 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12552, i32 12552, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12556, i32 12556, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12568, i32 12568, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I034 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.268 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12572, i32 12572, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I050 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.270 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12572, i32 12572, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12576, i32 12576, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12588, i32 12588, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I035 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12592, i32 12592, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I051 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12592, i32 12592, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12596, i32 12596, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12608, i32 12608, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I036 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12612, i32 12612, i32 4, i32 4, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I052 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12612, i32 12612, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12616, i32 12616, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12628, i32 12628, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I037 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12632, i32 12632, i32 5, i32 5, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I053 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12632, i32 12632, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12636, i32 12636, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I038 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12652, i32 12652, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I080 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12656, i32 12656, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I039 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12672, i32 12672, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I081 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12676, i32 12676, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I040 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12692, i32 12692, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I082 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12696, i32 12696, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I041 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12712, i32 12712, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I083 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.305 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12716, i32 12716, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I042 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.307 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12732, i32 12732, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I084 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.309 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12736, i32 12736, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I043 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.311 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12752, i32 12752, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I085 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12756, i32 12756, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I044 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.315 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12772, i32 12772, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I086 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.317 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12776, i32 12776, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I045 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.319 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12792, i32 12792, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I087 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12796, i32 12796, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.322 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12812, i32 12812, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I088 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12816, i32 12816, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12832, i32 12832, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I089 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12836, i32 12836, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12852, i32 12852, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I090 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12856, i32 12856, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12872, i32 12872, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I091 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12876, i32 12876, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.334 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12892, i32 12892, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I092 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.336 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12896, i32 12896, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12912, i32 12912, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I093 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.339 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12916, i32 12916, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.340 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12932, i32 12932, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I094 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.342 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12936, i32 12936, i32 30, i32 30, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.343 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12952, i32 12952, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I095 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12956, i32 12956, i32 31, i32 31, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12968, i32 12968, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I002 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.348 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12968, i32 12968, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12968, i32 12968, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.350 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12968, i32 12968, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12976, i32 12976, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.352 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12976, i32 12976, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.353 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2232, i32 2232, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.354 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2232, i32 2232, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.355 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12988, i32 12988, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I003 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12988, i32 12988, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.358 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12988, i32 12988, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.359 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12988, i32 12988, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.360 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12996, i32 12996, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.361 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12996, i32 12996, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I137 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13004, i32 13004, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I139 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.365 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13004, i32 13004, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.366 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2236, i32 2236, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2236, i32 2236, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.368 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2236, i32 2236, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2236, i32 2236, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.370 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13008, i32 13008, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13008, i32 13008, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.372 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13008, i32 13008, i32 20, i32 20, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13016, i32 13016, i32 6, i32 6, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.374 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2240, i32 2240, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13028, i32 13028, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.376 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13028, i32 13028, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13028, i32 13028, i32 21, i32 21, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.378 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13036, i32 13036, i32 7, i32 7, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.379 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2244, i32 2244, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.380 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13048, i32 13048, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13068, i32 13068, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.382 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16176, i32 16176, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16200, i32 16200, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.384 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13088, i32 13088, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13088, i32 13088, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.386 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13088, i32 13088, i32 22, i32 22, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2256, i32 2256, i32 8, i32 8, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.388 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13108, i32 13108, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13108, i32 13108, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13108, i32 13108, i32 23, i32 23, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2260, i32 2260, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.392 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13128, i32 13128, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13128, i32 13128, i32 24, i32 24, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.394 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2264, i32 2264, i32 10, i32 10, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.395 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13148, i32 13148, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.396 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13148, i32 13148, i32 25, i32 25, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.397 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2268, i32 2268, i32 11, i32 11, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.398 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13168, i32 13168, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.399 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13168, i32 13168, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.400 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13188, i32 13188, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.401 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13188, i32 13188, i32 27, i32 27, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.402 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13208, i32 13208, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.403 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13208, i32 13208, i32 28, i32 28, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.404 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13228, i32 13228, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.405 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13228, i32 13228, i32 29, i32 29, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I002\00", [27 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I003\00", [27 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I012\00", [27 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I013\00", [27 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I072\00", [27 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I073\00", [27 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I168\00", [27 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I169\00", [27 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I014\00", [27 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I015\00", [27 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I016\00", [27 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I017\00", [27 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I018\00", [27 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I019\00", [27 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I074\00", [27 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I075\00", [27 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I076\00", [27 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I077\00", [27 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I078\00", [27 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I079\00", [27 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I080\00", [27 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I081\00", [27 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I082\00", [27 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I083\00", [27 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I084\00", [27 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I085\00", [27 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I086\00", [27 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I087\00", [27 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I088\00", [27 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I089\00", [27 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I090\00", [27 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I091\00", [27 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I092\00", [27 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I093\00", [27 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I094\00", [27 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I095\00", [27 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I170\00", [27 x i8] zeroinitializer }, align 32
@.str.443 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I171\00", [27 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dl2_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@dl2_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 18, i8 18, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dl3_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@dl3_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 20, i8 20, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dl6_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@dl6_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 22, i8 22, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dl7_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@dl7_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 24, i8 24, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dl8_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@dl8_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 26, i8 26, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dl10_1x_en_sel\00", [17 x i8] zeroinitializer }, align 32
@dl10_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 28, i8 28, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dl11_1x_en_sel\00", [17 x i8] zeroinitializer }, align 32
@dl11_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 30, i8 30, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul1_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul1_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 0, i8 0, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul2_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul2_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 2, i8 2, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.453 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul3_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul3_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 4, i8 4, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul4_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul4_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 6, i8 6, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul5_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul5_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 8, i8 8, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.456 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul6_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul6_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 10, i8 10, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.457 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul8_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul8_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 12, i8 12, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.458 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ul9_1x_en_sel\00", [18 x i8] zeroinitializer }, align 32
@ul9_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 14, i8 14, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.459 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ul10_1x_en_sel\00", [17 x i8] zeroinitializer }, align 32
@ul10_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9284, i8 16, i8 16, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq1_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq1_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 0, i8 0, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.461 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq2_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq2_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 2, i8 2, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq3_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq3_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 4, i8 4, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq4_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq4_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 6, i8 6, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq5_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq5_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 8, i8 8, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq6_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq6_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 10, i8 10, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq7_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq7_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 12, i8 12, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq8_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq8_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 14, i8 14, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"asys_irq9_1x_en_sel\00", [44 x i8] zeroinitializer }, align 32
@asys_irq9_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 16, i8 16, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asys_irq10_1x_en_sel\00", [43 x i8] zeroinitializer }, align 32
@asys_irq10_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 18, i8 18, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asys_irq11_1x_en_sel\00", [43 x i8] zeroinitializer }, align 32
@asys_irq11_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 20, i8 20, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.471 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asys_irq12_1x_en_sel\00", [43 x i8] zeroinitializer }, align 32
@asys_irq12_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 22, i8 22, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asys_irq13_1x_en_sel\00", [43 x i8] zeroinitializer }, align 32
@asys_irq13_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 24, i8 24, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asys_irq14_1x_en_sel\00", [43 x i8] zeroinitializer }, align 32
@asys_irq14_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 26, i8 26, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asys_irq15_1x_en_sel\00", [43 x i8] zeroinitializer }, align 32
@asys_irq15_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 28, i8 28, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"asys_irq16_1x_en_sel\00", [43 x i8] zeroinitializer }, align 32
@asys_irq16_1x_en_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9304, i8 30, i8 30, i32 3, i32 3, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mt8195_afe_1x_en_sel_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.476, ptr @.str.477, ptr @.str.478], [20 x i8] zeroinitializer }, align 32
@mt8195_afe_1x_en_sel_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a1sys_a2sys\00", [20 x i8] zeroinitializer }, align 32
@.str.477 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a3sys\00", [26 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"a4sys\00", [26 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-afe-pcm\00", [20 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,topckgen\00", [46 x i8] zeroinitializer }, align 32
@mt8195_afe_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.481, ptr @.str.482, ptr @.str.3, i32 3052, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s() Cannot find topckgen controller: %ld\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt8195_afe_parse_of\00", [44 x i8] zeroinitializer }, align 32
@mt8195_afe_parse_of._entry_ptr = internal global ptr @mt8195_afe_parse_of._entry, section ".printk_index", align 4
@.str.483 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt8195-afe-pcm-dai\00", [45 x i8] zeroinitializer }, align 32
@mt8195_afe_reg_defaults = internal constant { [5 x %struct.reg_sequence], [36 x i8] } { [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 376, i32 59244543, i32 0 }, %struct.reg_sequence { i32 364, i32 1073741824, i32 0 }, %struct.reg_sequence { i32 444, i32 1073741824, i32 0 }, %struct.reg_sequence { i32 8976, i32 301990144, i32 0 }, %struct.reg_sequence { i32 9008, i32 301990144, i32 0 }], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 7350, i64 8000, i64 11025, i64 12000, i64 14700, i64 16000, i64 22050, i64 24000, i64 29400, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.484 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 9, i64 13]
@__sancov_gen_cov_switch_values.485 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 9, i64 13]
@__sancov_gen_cov_switch_values.486 = internal global [4 x i64] [i64 2, i64 32, i64 25, i64 26]
@__sancov_gen_cov_switch_values.487 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 14, i64 15]
@__sancov_gen_cov_switch_values.488 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 14, i64 15]
@__sancov_gen_cov_switch_values.489 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.490 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.491 = internal global [264 x i64] [i64 262, i64 32, i64 0, i64 4, i64 12, i64 16, i64 20, i64 24, i64 340, i64 344, i64 348, i64 352, i64 368, i64 372, i64 432, i64 436, i64 460, i64 1016, i64 1020, i64 1024, i64 1028, i64 1060, i64 1084, i64 1160, i64 1184, i64 1188, i64 1192, i64 1196, i64 1288, i64 1292, i64 1296, i64 1300, i64 1304, i64 1308, i64 1312, i64 1316, i64 1320, i64 1324, i64 1328, i64 1332, i64 1344, i64 1348, i64 1352, i64 1356, i64 1372, i64 1376, i64 1380, i64 1384, i64 1388, i64 1392, i64 1396, i64 1400, i64 1404, i64 1408, i64 1412, i64 1416, i64 1420, i64 1428, i64 1556, i64 1564, i64 1648, i64 1652, i64 1656, i64 1732, i64 1736, i64 1744, i64 1780, i64 1784, i64 1788, i64 1992, i64 1996, i64 2004, i64 2008, i64 2012, i64 2052, i64 2072, i64 2076, i64 3488, i64 3492, i64 3552, i64 3556, i64 4120, i64 4632, i64 4692, i64 4708, i64 4756, i64 4772, i64 4788, i64 4820, i64 4836, i64 4868, i64 4884, i64 4900, i64 4916, i64 4932, i64 4948, i64 4980, i64 4996, i64 5076, i64 5120, i64 5124, i64 5128, i64 5132, i64 5136, i64 5140, i64 5144, i64 5148, i64 5152, i64 5156, i64 5160, i64 5164, i64 5168, i64 5172, i64 5176, i64 5180, i64 5184, i64 5188, i64 5200, i64 5204, i64 5208, i64 5212, i64 5216, i64 5220, i64 5224, i64 5228, i64 5232, i64 5236, i64 5240, i64 5244, i64 5256, i64 5260, i64 5280, i64 5284, i64 5296, i64 5300, i64 5344, i64 5348, i64 5360, i64 5364, i64 5416, i64 5420, i64 5440, i64 5480, i64 5484, i64 5488, i64 5492, i64 5496, i64 5500, i64 5512, i64 5516, i64 5520, i64 5648, i64 5660, i64 5668, i64 5672, i64 5676, i64 5680, i64 5684, i64 5688, i64 5692, i64 5696, i64 5752, i64 5756, i64 5768, i64 5772, i64 5776, i64 5784, i64 5788, i64 5792, i64 5796, i64 5800, i64 5804, i64 5808, i64 5812, i64 5820, i64 5824, i64 5828, i64 6668, i64 6672, i64 6676, i64 6772, i64 6776, i64 6780, i64 6876, i64 6880, i64 6884, i64 6980, i64 6984, i64 6988, i64 7184, i64 7216, i64 7248, i64 7280, i64 8896, i64 8900, i64 8912, i64 8916, i64 8920, i64 11544, i64 11552, i64 11588, i64 11600, i64 11604, i64 11608, i64 19552, i64 19556, i64 19568, i64 19616, i64 19620, i64 19632, i64 19680, i64 19684, i64 19696, i64 19744, i64 19748, i64 19760, i64 19808, i64 19812, i64 19824, i64 19872, i64 19876, i64 19888, i64 19936, i64 19940, i64 19952, i64 20000, i64 20004, i64 20016, i64 20064, i64 20068, i64 20080, i64 20128, i64 20132, i64 20144, i64 20192, i64 20196, i64 20208, i64 20256, i64 20260, i64 20272, i64 20320, i64 20324, i64 20336, i64 20384, i64 20388, i64 20400, i64 20448, i64 20452, i64 20464, i64 20512, i64 20516, i64 20528, i64 20576, i64 20580, i64 20592, i64 20640, i64 20644, i64 20656, i64 20704, i64 20708, i64 20720, i64 20768, i64 20772, i64 20784]
@___asan_gen_.492 = private unnamed_addr constant [17 x i8] c"mt8195_afe_rates\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 51, i32 37 }
@___asan_gen_.495 = private unnamed_addr constant [22 x i8] c"mt8195_afe_pcm_driver\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3270, i32 31 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3272, i32 14 }
@___asan_gen_.501 = private unnamed_addr constant [24 x i8] c"mt8195_afe_pcm_dt_match\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3259, i32 34 }
@___asan_gen_.504 = private unnamed_addr constant [18 x i8] c"mt8195_afe_pm_ops\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3265, i32 32 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3067, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3094, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3098, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3100, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [15 x i8] c"irq_data_array\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2236, i32 39 }
@___asan_gen_.546 = private unnamed_addr constant [11 x i8] c"memif_data\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1801, i32 41 }
@___asan_gen_.549 = private unnamed_addr constant [28 x i8] c"mt8195_afe_memif_const_irqs\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2547, i32 18 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3129, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3134, i32 30 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3136, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3146, i32 4 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3155, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant [20 x i8] c"mt8195_afe_hardware\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 32, i32 38 }
@___asan_gen_.585 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [25 x i8] c"mt8195_afe_regmap_config\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2839, i32 35 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3182, i32 16 }
@___asan_gen_.594 = private unnamed_addr constant [16 x i8] c"mt8195_cg_patch\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3030, i32 34 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3192, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant [21 x i8] c"mt8195_afe_component\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2965, i32 46 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3200, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant [29 x i8] c"mt8195_afe_pcm_dai_component\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1797, i32 46 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3217, i32 30 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3224, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1803, i32 11 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1830, i32 11 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1857, i32 11 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1884, i32 11 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1911, i32 11 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1938, i32 11 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1965, i32 11 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1992, i32 11 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2019, i32 11 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2046, i32 11 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2073, i32 11 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2100, i32 11 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2127, i32 11 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2154, i32 11 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2181, i32 11 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2208, i32 11 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2866, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 2874, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant [24 x i8] c"mt8195_memif_dai_driver\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 478, i32 34 }
@___asan_gen_.693 = private unnamed_addr constant [20 x i8] c"mt8195_memif_routes\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1161, i32 40 }
@___asan_gen_.696 = private unnamed_addr constant [22 x i8] c"mt8195_memif_controls\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1634, i32 38 }
@___asan_gen_.699 = private unnamed_addr constant [22 x i8] c"mt8195_afe_fe_dai_ops\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 456, i32 37 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 366, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 230, i32 3 }
@___asan_gen_.717 = private unnamed_addr constant [14 x i8] c"mt8195_afe_cm\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 153, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 988, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 989, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 992, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 993, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 996, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 997, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 998, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 999, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1000, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1001, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1002, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1003, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1004, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1005, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1006, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1007, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1008, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1009, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1010, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1011, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1012, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1013, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1014, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1015, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1016, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1017, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1018, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1019, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1022, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1023, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1024, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1025, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1026, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1027, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1028, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1029, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1030, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1031, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1032, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1033, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1034, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1035, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1036, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1037, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1038, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1039, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1040, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1041, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1042, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1043, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1044, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1045, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1048, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1049, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1051, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant [22 x i8] c"dl8_dl11_data_sel_mux\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 983, i32 38 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1055, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant [9 x i8] c"o002_mix\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 674, i32 38 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1057, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant [9 x i8] c"o003_mix\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 684, i32 38 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1059, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant [9 x i8] c"o004_mix\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 694, i32 38 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1061, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant [9 x i8] c"o005_mix\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 702, i32 38 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1063, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant [9 x i8] c"o006_mix\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 710, i32 38 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1065, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant [9 x i8] c"o007_mix\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 717, i32 38 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1067, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant [9 x i8] c"o008_mix\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 724, i32 38 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1069, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant [9 x i8] c"o009_mix\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 730, i32 38 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1071, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant [9 x i8] c"o010_mix\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 736, i32 38 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1073, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant [9 x i8] c"o011_mix\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 743, i32 38 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1075, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant [9 x i8] c"o012_mix\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 750, i32 38 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1077, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant [9 x i8] c"o013_mix\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 757, i32 38 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1079, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [9 x i8] c"o014_mix\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 764, i32 38 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1081, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant [9 x i8] c"o015_mix\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 771, i32 38 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1083, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant [9 x i8] c"o016_mix\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 778, i32 38 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1085, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant [9 x i8] c"o017_mix\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 785, i32 38 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1087, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant [9 x i8] c"o018_mix\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 792, i32 38 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1089, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant [9 x i8] c"o019_mix\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 797, i32 38 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1091, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant [9 x i8] c"o020_mix\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 802, i32 38 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1093, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant [9 x i8] c"o021_mix\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 807, i32 38 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1095, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant [9 x i8] c"o022_mix\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 812, i32 38 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1097, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant [9 x i8] c"o023_mix\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 817, i32 38 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1099, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant [9 x i8] c"o024_mix\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 822, i32 38 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1101, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant [9 x i8] c"o025_mix\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 827, i32 38 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1103, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant [9 x i8] c"o026_mix\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 832, i32 38 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1105, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant [9 x i8] c"o027_mix\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 837, i32 38 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1107, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant [9 x i8] c"o028_mix\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 842, i32 38 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1109, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant [9 x i8] c"o029_mix\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 847, i32 38 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1111, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant [9 x i8] c"o030_mix\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 852, i32 38 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1113, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant [9 x i8] c"o031_mix\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 857, i32 38 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1115, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant [9 x i8] c"o032_mix\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 862, i32 38 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1117, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant [9 x i8] c"o033_mix\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 867, i32 38 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1121, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant [9 x i8] c"o034_mix\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 872, i32 38 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1123, i32 2 }
@___asan_gen_.1089 = private unnamed_addr constant [9 x i8] c"o035_mix\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 883, i32 38 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1127, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant [9 x i8] c"o036_mix\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 898, i32 38 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1129, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant [9 x i8] c"o037_mix\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 906, i32 38 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1133, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant [9 x i8] c"o038_mix\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 914, i32 38 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1135, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant [9 x i8] c"o039_mix\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 918, i32 38 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1137, i32 2 }
@___asan_gen_.1119 = private unnamed_addr constant [9 x i8] c"o182_mix\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 968, i32 38 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1139, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant [9 x i8] c"o183_mix\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 972, i32 38 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1143, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant [9 x i8] c"o040_mix\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 922, i32 38 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1145, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant [9 x i8] c"o041_mix\00", align 1
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 929, i32 38 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1147, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant [9 x i8] c"o042_mix\00", align 1
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 936, i32 38 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1149, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant [9 x i8] c"o043_mix\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 942, i32 38 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1151, i32 2 }
@___asan_gen_.1155 = private unnamed_addr constant [9 x i8] c"o044_mix\00", align 1
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 948, i32 38 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1153, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant [9 x i8] c"o045_mix\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 953, i32 38 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1155, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant [9 x i8] c"o046_mix\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 958, i32 38 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1157, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant [9 x i8] c"o047_mix\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 963, i32 38 }
@___asan_gen_.1176 = private unnamed_addr constant [21 x i8] c"mt8195_memif_widgets\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 986, i32 41 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 984, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant [27 x i8] c"dl8_dl11_data_sel_mux_enum\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 980, i32 8 }
@___asan_gen_.1185 = private unnamed_addr constant [27 x i8] c"dl8_dl11_data_sel_mux_text\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 976, i32 27 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 977, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 977, i32 9 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 675, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 676, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 677, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 678, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 679, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 680, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 681, i32 2 }
@___asan_gen_.1221 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 685, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 686, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 687, i32 2 }
@___asan_gen_.1233 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 688, i32 2 }
@___asan_gen_.1237 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 689, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 690, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 691, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1250 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 696, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 697, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 698, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant [21 x i8] c".compoundliteral.204\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 699, i32 2 }
@___asan_gen_.1266 = private unnamed_addr constant [21 x i8] c".compoundliteral.206\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 704, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 705, i32 2 }
@___asan_gen_.1275 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 706, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 707, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 712, i32 2 }
@___asan_gen_.1288 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 713, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant [21 x i8] c".compoundliteral.220\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 714, i32 2 }
@___asan_gen_.1296 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 719, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 720, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 721, i32 2 }
@___asan_gen_.1309 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 725, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 726, i32 2 }
@___asan_gen_.1317 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 727, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 731, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 732, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 733, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 738, i32 2 }
@___asan_gen_.1338 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 739, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1343 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1344 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 745, i32 2 }
@___asan_gen_.1348 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 746, i32 2 }
@___asan_gen_.1352 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 752, i32 2 }
@___asan_gen_.1358 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 753, i32 2 }
@___asan_gen_.1362 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1364 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 759, i32 2 }
@___asan_gen_.1368 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 760, i32 2 }
@___asan_gen_.1372 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1373 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 766, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant [21 x i8] c".compoundliteral.268\00", align 1
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 767, i32 2 }
@___asan_gen_.1382 = private unnamed_addr constant [21 x i8] c".compoundliteral.270\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 773, i32 2 }
@___asan_gen_.1388 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 774, i32 2 }
@___asan_gen_.1392 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 780, i32 2 }
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 781, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.1403 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 787, i32 2 }
@___asan_gen_.1408 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 788, i32 2 }
@___asan_gen_.1412 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 793, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 794, i32 2 }
@___asan_gen_.1421 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 798, i32 2 }
@___asan_gen_.1425 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 799, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 803, i32 2 }
@___asan_gen_.1433 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 804, i32 2 }
@___asan_gen_.1437 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 808, i32 2 }
@___asan_gen_.1441 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 809, i32 2 }
@___asan_gen_.1445 = private unnamed_addr constant [21 x i8] c".compoundliteral.305\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 813, i32 2 }
@___asan_gen_.1449 = private unnamed_addr constant [21 x i8] c".compoundliteral.307\00", align 1
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 814, i32 2 }
@___asan_gen_.1453 = private unnamed_addr constant [21 x i8] c".compoundliteral.309\00", align 1
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 818, i32 2 }
@___asan_gen_.1457 = private unnamed_addr constant [21 x i8] c".compoundliteral.311\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 819, i32 2 }
@___asan_gen_.1461 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 823, i32 2 }
@___asan_gen_.1465 = private unnamed_addr constant [21 x i8] c".compoundliteral.315\00", align 1
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 824, i32 2 }
@___asan_gen_.1469 = private unnamed_addr constant [21 x i8] c".compoundliteral.317\00", align 1
@___asan_gen_.1472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 828, i32 2 }
@___asan_gen_.1473 = private unnamed_addr constant [21 x i8] c".compoundliteral.319\00", align 1
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 829, i32 2 }
@___asan_gen_.1477 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant [21 x i8] c".compoundliteral.322\00", align 1
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 834, i32 2 }
@___asan_gen_.1482 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1483 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 839, i32 2 }
@___asan_gen_.1487 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1488 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 844, i32 2 }
@___asan_gen_.1492 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1493 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 849, i32 2 }
@___asan_gen_.1497 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1498 = private unnamed_addr constant [21 x i8] c".compoundliteral.334\00", align 1
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 854, i32 2 }
@___asan_gen_.1502 = private unnamed_addr constant [21 x i8] c".compoundliteral.336\00", align 1
@___asan_gen_.1503 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 859, i32 2 }
@___asan_gen_.1507 = private unnamed_addr constant [21 x i8] c".compoundliteral.339\00", align 1
@___asan_gen_.1508 = private unnamed_addr constant [21 x i8] c".compoundliteral.340\00", align 1
@___asan_gen_.1511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 864, i32 2 }
@___asan_gen_.1512 = private unnamed_addr constant [21 x i8] c".compoundliteral.342\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant [21 x i8] c".compoundliteral.343\00", align 1
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 869, i32 2 }
@___asan_gen_.1517 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1518 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 874, i32 2 }
@___asan_gen_.1522 = private unnamed_addr constant [21 x i8] c".compoundliteral.348\00", align 1
@___asan_gen_.1523 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1524 = private unnamed_addr constant [21 x i8] c".compoundliteral.350\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1526 = private unnamed_addr constant [21 x i8] c".compoundliteral.352\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant [21 x i8] c".compoundliteral.353\00", align 1
@___asan_gen_.1528 = private unnamed_addr constant [21 x i8] c".compoundliteral.354\00", align 1
@___asan_gen_.1529 = private unnamed_addr constant [21 x i8] c".compoundliteral.355\00", align 1
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 885, i32 2 }
@___asan_gen_.1533 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1534 = private unnamed_addr constant [21 x i8] c".compoundliteral.358\00", align 1
@___asan_gen_.1535 = private unnamed_addr constant [21 x i8] c".compoundliteral.359\00", align 1
@___asan_gen_.1536 = private unnamed_addr constant [21 x i8] c".compoundliteral.360\00", align 1
@___asan_gen_.1537 = private unnamed_addr constant [21 x i8] c".compoundliteral.361\00", align 1
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 890, i32 2 }
@___asan_gen_.1541 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 891, i32 2 }
@___asan_gen_.1545 = private unnamed_addr constant [21 x i8] c".compoundliteral.365\00", align 1
@___asan_gen_.1546 = private unnamed_addr constant [21 x i8] c".compoundliteral.366\00", align 1
@___asan_gen_.1547 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant [21 x i8] c".compoundliteral.368\00", align 1
@___asan_gen_.1549 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1550 = private unnamed_addr constant [21 x i8] c".compoundliteral.370\00", align 1
@___asan_gen_.1551 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1552 = private unnamed_addr constant [21 x i8] c".compoundliteral.372\00", align 1
@___asan_gen_.1553 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant [21 x i8] c".compoundliteral.374\00", align 1
@___asan_gen_.1555 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1556 = private unnamed_addr constant [21 x i8] c".compoundliteral.376\00", align 1
@___asan_gen_.1557 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1558 = private unnamed_addr constant [21 x i8] c".compoundliteral.378\00", align 1
@___asan_gen_.1559 = private unnamed_addr constant [21 x i8] c".compoundliteral.379\00", align 1
@___asan_gen_.1560 = private unnamed_addr constant [21 x i8] c".compoundliteral.380\00", align 1
@___asan_gen_.1561 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1562 = private unnamed_addr constant [21 x i8] c".compoundliteral.382\00", align 1
@___asan_gen_.1563 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1564 = private unnamed_addr constant [21 x i8] c".compoundliteral.384\00", align 1
@___asan_gen_.1565 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1566 = private unnamed_addr constant [21 x i8] c".compoundliteral.386\00", align 1
@___asan_gen_.1567 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1568 = private unnamed_addr constant [21 x i8] c".compoundliteral.388\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1570 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1571 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1572 = private unnamed_addr constant [21 x i8] c".compoundliteral.392\00", align 1
@___asan_gen_.1573 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1574 = private unnamed_addr constant [21 x i8] c".compoundliteral.394\00", align 1
@___asan_gen_.1575 = private unnamed_addr constant [21 x i8] c".compoundliteral.395\00", align 1
@___asan_gen_.1576 = private unnamed_addr constant [21 x i8] c".compoundliteral.396\00", align 1
@___asan_gen_.1577 = private unnamed_addr constant [21 x i8] c".compoundliteral.397\00", align 1
@___asan_gen_.1578 = private unnamed_addr constant [21 x i8] c".compoundliteral.398\00", align 1
@___asan_gen_.1579 = private unnamed_addr constant [21 x i8] c".compoundliteral.399\00", align 1
@___asan_gen_.1580 = private unnamed_addr constant [21 x i8] c".compoundliteral.400\00", align 1
@___asan_gen_.1581 = private unnamed_addr constant [21 x i8] c".compoundliteral.401\00", align 1
@___asan_gen_.1582 = private unnamed_addr constant [21 x i8] c".compoundliteral.402\00", align 1
@___asan_gen_.1583 = private unnamed_addr constant [21 x i8] c".compoundliteral.403\00", align 1
@___asan_gen_.1584 = private unnamed_addr constant [21 x i8] c".compoundliteral.404\00", align 1
@___asan_gen_.1585 = private unnamed_addr constant [21 x i8] c".compoundliteral.405\00", align 1
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1342, i32 26 }
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1343, i32 26 }
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1344, i32 26 }
@___asan_gen_.1597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1345, i32 26 }
@___asan_gen_.1600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1350, i32 26 }
@___asan_gen_.1603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1351, i32 26 }
@___asan_gen_.1606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1361, i32 26 }
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1362, i32 26 }
@___asan_gen_.1612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1382, i32 26 }
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1383, i32 26 }
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1384, i32 26 }
@___asan_gen_.1621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1385, i32 26 }
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1386, i32 26 }
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1387, i32 26 }
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1400, i32 26 }
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1401, i32 26 }
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1402, i32 26 }
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1403, i32 26 }
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1404, i32 26 }
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1405, i32 26 }
@___asan_gen_.1648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1415, i32 26 }
@___asan_gen_.1651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1416, i32 26 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1417, i32 26 }
@___asan_gen_.1657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1418, i32 26 }
@___asan_gen_.1660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1419, i32 26 }
@___asan_gen_.1663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1420, i32 26 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1421, i32 26 }
@___asan_gen_.1669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1422, i32 26 }
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1423, i32 26 }
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1424, i32 26 }
@___asan_gen_.1678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1425, i32 26 }
@___asan_gen_.1681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1426, i32 26 }
@___asan_gen_.1684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1427, i32 26 }
@___asan_gen_.1687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1428, i32 26 }
@___asan_gen_.1690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1429, i32 26 }
@___asan_gen_.1693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1430, i32 26 }
@___asan_gen_.1696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1434, i32 26 }
@___asan_gen_.1699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1435, i32 26 }
@___asan_gen_.1702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1635, i32 2 }
@___asan_gen_.1703 = private unnamed_addr constant [19 x i8] c"dl2_1x_en_sel_enum\00", align 1
@___asan_gen_.1705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1504, i32 8 }
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1640, i32 2 }
@___asan_gen_.1709 = private unnamed_addr constant [19 x i8] c"dl3_1x_en_sel_enum\00", align 1
@___asan_gen_.1711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1508, i32 8 }
@___asan_gen_.1714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1645, i32 2 }
@___asan_gen_.1715 = private unnamed_addr constant [19 x i8] c"dl6_1x_en_sel_enum\00", align 1
@___asan_gen_.1717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1512, i32 8 }
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1650, i32 2 }
@___asan_gen_.1721 = private unnamed_addr constant [19 x i8] c"dl7_1x_en_sel_enum\00", align 1
@___asan_gen_.1723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1516, i32 8 }
@___asan_gen_.1726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1655, i32 2 }
@___asan_gen_.1727 = private unnamed_addr constant [19 x i8] c"dl8_1x_en_sel_enum\00", align 1
@___asan_gen_.1729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1520, i32 8 }
@___asan_gen_.1732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1660, i32 2 }
@___asan_gen_.1733 = private unnamed_addr constant [20 x i8] c"dl10_1x_en_sel_enum\00", align 1
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1524, i32 8 }
@___asan_gen_.1738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1665, i32 2 }
@___asan_gen_.1739 = private unnamed_addr constant [20 x i8] c"dl11_1x_en_sel_enum\00", align 1
@___asan_gen_.1741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1528, i32 8 }
@___asan_gen_.1744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1670, i32 2 }
@___asan_gen_.1745 = private unnamed_addr constant [19 x i8] c"ul1_1x_en_sel_enum\00", align 1
@___asan_gen_.1747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1532, i32 8 }
@___asan_gen_.1750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1675, i32 2 }
@___asan_gen_.1751 = private unnamed_addr constant [19 x i8] c"ul2_1x_en_sel_enum\00", align 1
@___asan_gen_.1753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1536, i32 8 }
@___asan_gen_.1756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1680, i32 2 }
@___asan_gen_.1757 = private unnamed_addr constant [19 x i8] c"ul3_1x_en_sel_enum\00", align 1
@___asan_gen_.1759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1540, i32 8 }
@___asan_gen_.1762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1685, i32 2 }
@___asan_gen_.1763 = private unnamed_addr constant [19 x i8] c"ul4_1x_en_sel_enum\00", align 1
@___asan_gen_.1765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1544, i32 8 }
@___asan_gen_.1768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1690, i32 2 }
@___asan_gen_.1769 = private unnamed_addr constant [19 x i8] c"ul5_1x_en_sel_enum\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1548, i32 8 }
@___asan_gen_.1774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1695, i32 2 }
@___asan_gen_.1775 = private unnamed_addr constant [19 x i8] c"ul6_1x_en_sel_enum\00", align 1
@___asan_gen_.1777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1552, i32 8 }
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1700, i32 2 }
@___asan_gen_.1781 = private unnamed_addr constant [19 x i8] c"ul8_1x_en_sel_enum\00", align 1
@___asan_gen_.1783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1556, i32 8 }
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1705, i32 2 }
@___asan_gen_.1787 = private unnamed_addr constant [19 x i8] c"ul9_1x_en_sel_enum\00", align 1
@___asan_gen_.1789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1560, i32 8 }
@___asan_gen_.1792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1710, i32 2 }
@___asan_gen_.1793 = private unnamed_addr constant [20 x i8] c"ul10_1x_en_sel_enum\00", align 1
@___asan_gen_.1795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1564, i32 8 }
@___asan_gen_.1798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1715, i32 2 }
@___asan_gen_.1799 = private unnamed_addr constant [25 x i8] c"asys_irq1_1x_en_sel_enum\00", align 1
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1569, i32 8 }
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1720, i32 2 }
@___asan_gen_.1805 = private unnamed_addr constant [25 x i8] c"asys_irq2_1x_en_sel_enum\00", align 1
@___asan_gen_.1807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1573, i32 8 }
@___asan_gen_.1810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1725, i32 2 }
@___asan_gen_.1811 = private unnamed_addr constant [25 x i8] c"asys_irq3_1x_en_sel_enum\00", align 1
@___asan_gen_.1813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1577, i32 8 }
@___asan_gen_.1816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1730, i32 2 }
@___asan_gen_.1817 = private unnamed_addr constant [25 x i8] c"asys_irq4_1x_en_sel_enum\00", align 1
@___asan_gen_.1819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1581, i32 8 }
@___asan_gen_.1822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1735, i32 2 }
@___asan_gen_.1823 = private unnamed_addr constant [25 x i8] c"asys_irq5_1x_en_sel_enum\00", align 1
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1585, i32 8 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1740, i32 2 }
@___asan_gen_.1829 = private unnamed_addr constant [25 x i8] c"asys_irq6_1x_en_sel_enum\00", align 1
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1589, i32 8 }
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1745, i32 2 }
@___asan_gen_.1835 = private unnamed_addr constant [25 x i8] c"asys_irq7_1x_en_sel_enum\00", align 1
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1593, i32 8 }
@___asan_gen_.1840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1750, i32 2 }
@___asan_gen_.1841 = private unnamed_addr constant [25 x i8] c"asys_irq8_1x_en_sel_enum\00", align 1
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1597, i32 8 }
@___asan_gen_.1846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1755, i32 2 }
@___asan_gen_.1847 = private unnamed_addr constant [25 x i8] c"asys_irq9_1x_en_sel_enum\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1601, i32 8 }
@___asan_gen_.1852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1760, i32 2 }
@___asan_gen_.1853 = private unnamed_addr constant [26 x i8] c"asys_irq10_1x_en_sel_enum\00", align 1
@___asan_gen_.1855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1605, i32 8 }
@___asan_gen_.1858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1765, i32 2 }
@___asan_gen_.1859 = private unnamed_addr constant [26 x i8] c"asys_irq11_1x_en_sel_enum\00", align 1
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1609, i32 8 }
@___asan_gen_.1864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1770, i32 2 }
@___asan_gen_.1865 = private unnamed_addr constant [26 x i8] c"asys_irq12_1x_en_sel_enum\00", align 1
@___asan_gen_.1867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1613, i32 8 }
@___asan_gen_.1870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1775, i32 2 }
@___asan_gen_.1871 = private unnamed_addr constant [26 x i8] c"asys_irq13_1x_en_sel_enum\00", align 1
@___asan_gen_.1873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1617, i32 8 }
@___asan_gen_.1876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1780, i32 2 }
@___asan_gen_.1877 = private unnamed_addr constant [26 x i8] c"asys_irq14_1x_en_sel_enum\00", align 1
@___asan_gen_.1879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1621, i32 8 }
@___asan_gen_.1882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1785, i32 2 }
@___asan_gen_.1883 = private unnamed_addr constant [26 x i8] c"asys_irq15_1x_en_sel_enum\00", align 1
@___asan_gen_.1885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1625, i32 8 }
@___asan_gen_.1888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1790, i32 2 }
@___asan_gen_.1889 = private unnamed_addr constant [26 x i8] c"asys_irq16_1x_en_sel_enum\00", align 1
@___asan_gen_.1891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1629, i32 8 }
@___asan_gen_.1892 = private unnamed_addr constant [26 x i8] c"mt8195_afe_1x_en_sel_text\00", align 1
@___asan_gen_.1894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1451, i32 27 }
@___asan_gen_.1895 = private unnamed_addr constant [28 x i8] c"mt8195_afe_1x_en_sel_values\00", align 1
@___asan_gen_.1897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1455, i32 27 }
@___asan_gen_.1900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1452, i32 2 }
@___asan_gen_.1903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1452, i32 17 }
@___asan_gen_.1906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1452, i32 26 }
@___asan_gen_.1909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 88, i32 31 }
@___asan_gen_.1912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3049, i32 13 }
@___asan_gen_.1913 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3051, i32 3 }
@___asan_gen_.1922 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 1798, i32 10 }
@___asan_gen_.1925 = private unnamed_addr constant [24 x i8] c"mt8195_afe_reg_defaults\00", align 1
@___asan_gen_.1926 = private constant [46 x i8] c"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c\00", align 1
@___asan_gen_.1927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1926, i32 3022, i32 34 }
@llvm.compiler.used = appending global [603 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__exitcall_mt8195_afe_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_mt8195_afe__243_3280_mt8195_afe_pcm_driver_init6, ptr @mt8195_afe_irq_handler._entry, ptr @mt8195_afe_irq_handler._entry.56, ptr @mt8195_afe_irq_handler._entry_ptr, ptr @mt8195_afe_irq_handler._entry_ptr.58, ptr @mt8195_afe_parse_of._entry, ptr @mt8195_afe_parse_of._entry_ptr, ptr @mt8195_afe_pcm_dev_probe._entry, ptr @mt8195_afe_pcm_dev_probe._entry.12, ptr @mt8195_afe_pcm_dev_probe._entry.16, ptr @mt8195_afe_pcm_dev_probe._entry.19, ptr @mt8195_afe_pcm_dev_probe._entry.23, ptr @mt8195_afe_pcm_dev_probe._entry.27, ptr @mt8195_afe_pcm_dev_probe._entry.30, ptr @mt8195_afe_pcm_dev_probe._entry.34, ptr @mt8195_afe_pcm_dev_probe._entry.6, ptr @mt8195_afe_pcm_dev_probe._entry_ptr, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.14, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.18, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.22, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.25, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.29, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.32, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.36, ptr @mt8195_afe_pcm_dev_probe._entry_ptr.8, ptr @mt8195_afe_pcm_driver_exit, ptr @mt8195_afe_rates, ptr @mt8195_afe_pcm_driver, ptr @.str, ptr @mt8195_afe_pcm_dt_match, ptr @mt8195_afe_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @mt8195_afe_pcm_dev_probe.__key, ptr @.str.9, ptr @mt8195_afe_pcm_dev_probe.__key.10, ptr @.str.11, ptr @irq_data_array, ptr @memif_data, ptr @mt8195_afe_memif_const_irqs, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.24, ptr @mt8195_afe_hardware, ptr @mt8195_afe_pcm_dev_probe._key, ptr @mt8195_afe_regmap_config, ptr @.str.26, ptr @mt8195_cg_patch, ptr @.str.28, ptr @mt8195_afe_component, ptr @.str.31, ptr @mt8195_afe_pcm_dai_component, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @mt8195_memif_dai_driver, ptr @mt8195_memif_routes, ptr @mt8195_memif_controls, ptr @mt8195_afe_fe_dai_ops, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @mt8195_afe_cm, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @dl8_dl11_data_sel_mux, ptr @.str.119, ptr @o002_mix, ptr @.str.120, ptr @o003_mix, ptr @.str.121, ptr @o004_mix, ptr @.str.122, ptr @o005_mix, ptr @.str.123, ptr @o006_mix, ptr @.str.124, ptr @o007_mix, ptr @.str.125, ptr @o008_mix, ptr @.str.126, ptr @o009_mix, ptr @.str.127, ptr @o010_mix, ptr @.str.128, ptr @o011_mix, ptr @.str.129, ptr @o012_mix, ptr @.str.130, ptr @o013_mix, ptr @.str.131, ptr @o014_mix, ptr @.str.132, ptr @o015_mix, ptr @.str.133, ptr @o016_mix, ptr @.str.134, ptr @o017_mix, ptr @.str.135, ptr @o018_mix, ptr @.str.136, ptr @o019_mix, ptr @.str.137, ptr @o020_mix, ptr @.str.138, ptr @o021_mix, ptr @.str.139, ptr @o022_mix, ptr @.str.140, ptr @o023_mix, ptr @.str.141, ptr @o024_mix, ptr @.str.142, ptr @o025_mix, ptr @.str.143, ptr @o026_mix, ptr @.str.144, ptr @o027_mix, ptr @.str.145, ptr @o028_mix, ptr @.str.146, ptr @o029_mix, ptr @.str.147, ptr @o030_mix, ptr @.str.148, ptr @o031_mix, ptr @.str.149, ptr @o032_mix, ptr @.str.150, ptr @o033_mix, ptr @.str.151, ptr @o034_mix, ptr @.str.152, ptr @o035_mix, ptr @.str.153, ptr @o036_mix, ptr @.str.154, ptr @o037_mix, ptr @.str.155, ptr @o038_mix, ptr @.str.156, ptr @o039_mix, ptr @.str.157, ptr @o182_mix, ptr @.str.158, ptr @o183_mix, ptr @.str.159, ptr @o040_mix, ptr @.str.160, ptr @o041_mix, ptr @.str.161, ptr @o042_mix, ptr @.str.162, ptr @o043_mix, ptr @.str.163, ptr @o044_mix, ptr @.str.164, ptr @o045_mix, ptr @.str.165, ptr @o046_mix, ptr @.str.166, ptr @o047_mix, ptr @mt8195_memif_widgets, ptr @.str.168, ptr @dl8_dl11_data_sel_mux_enum, ptr @dl8_dl11_data_sel_mux_text, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.compoundliteral, ptr @.str.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.str.203, ptr @.compoundliteral.204, ptr @.str.205, ptr @.compoundliteral.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @.str.219, ptr @.compoundliteral.220, ptr @.str.221, ptr @.compoundliteral.222, ptr @.compoundliteral.223, ptr @.str.224, ptr @.compoundliteral.225, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.compoundliteral.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.str.240, ptr @.compoundliteral.241, ptr @.compoundliteral.242, ptr @.str.243, ptr @.compoundliteral.244, ptr @.str.245, ptr @.compoundliteral.246, ptr @.compoundliteral.247, ptr @.compoundliteral.248, ptr @.str.249, ptr @.compoundliteral.250, ptr @.str.251, ptr @.compoundliteral.252, ptr @.compoundliteral.253, ptr @.compoundliteral.254, ptr @.str.255, ptr @.compoundliteral.256, ptr @.str.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.260, ptr @.str.261, ptr @.compoundliteral.262, ptr @.str.263, ptr @.compoundliteral.264, ptr @.compoundliteral.265, ptr @.compoundliteral.266, ptr @.str.267, ptr @.compoundliteral.268, ptr @.str.269, ptr @.compoundliteral.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.str.273, ptr @.compoundliteral.274, ptr @.str.275, ptr @.compoundliteral.276, ptr @.compoundliteral.277, ptr @.compoundliteral.278, ptr @.str.279, ptr @.compoundliteral.280, ptr @.str.281, ptr @.compoundliteral.282, ptr @.compoundliteral.283, ptr @.compoundliteral.284, ptr @.str.285, ptr @.compoundliteral.286, ptr @.str.287, ptr @.compoundliteral.288, ptr @.compoundliteral.289, ptr @.str.290, ptr @.compoundliteral.291, ptr @.str.292, ptr @.compoundliteral.293, ptr @.str.294, ptr @.compoundliteral.295, ptr @.str.296, ptr @.compoundliteral.297, ptr @.str.298, ptr @.compoundliteral.299, ptr @.str.300, ptr @.compoundliteral.301, ptr @.str.302, ptr @.compoundliteral.303, ptr @.str.304, ptr @.compoundliteral.305, ptr @.str.306, ptr @.compoundliteral.307, ptr @.str.308, ptr @.compoundliteral.309, ptr @.str.310, ptr @.compoundliteral.311, ptr @.str.312, ptr @.compoundliteral.313, ptr @.str.314, ptr @.compoundliteral.315, ptr @.str.316, ptr @.compoundliteral.317, ptr @.str.318, ptr @.compoundliteral.319, ptr @.str.320, ptr @.compoundliteral.321, ptr @.compoundliteral.322, ptr @.str.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @.str.326, ptr @.compoundliteral.327, ptr @.compoundliteral.328, ptr @.str.329, ptr @.compoundliteral.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @.compoundliteral.333, ptr @.compoundliteral.334, ptr @.str.335, ptr @.compoundliteral.336, ptr @.compoundliteral.337, ptr @.str.338, ptr @.compoundliteral.339, ptr @.compoundliteral.340, ptr @.str.341, ptr @.compoundliteral.342, ptr @.compoundliteral.343, ptr @.str.344, ptr @.compoundliteral.345, ptr @.compoundliteral.346, ptr @.str.347, ptr @.compoundliteral.348, ptr @.compoundliteral.349, ptr @.compoundliteral.350, ptr @.compoundliteral.351, ptr @.compoundliteral.352, ptr @.compoundliteral.353, ptr @.compoundliteral.354, ptr @.compoundliteral.355, ptr @.str.356, ptr @.compoundliteral.357, ptr @.compoundliteral.358, ptr @.compoundliteral.359, ptr @.compoundliteral.360, ptr @.compoundliteral.361, ptr @.str.362, ptr @.compoundliteral.363, ptr @.str.364, ptr @.compoundliteral.365, ptr @.compoundliteral.366, ptr @.compoundliteral.367, ptr @.compoundliteral.368, ptr @.compoundliteral.369, ptr @.compoundliteral.370, ptr @.compoundliteral.371, ptr @.compoundliteral.372, ptr @.compoundliteral.373, ptr @.compoundliteral.374, ptr @.compoundliteral.375, ptr @.compoundliteral.376, ptr @.compoundliteral.377, ptr @.compoundliteral.378, ptr @.compoundliteral.379, ptr @.compoundliteral.380, ptr @.compoundliteral.381, ptr @.compoundliteral.382, ptr @.compoundliteral.383, ptr @.compoundliteral.384, ptr @.compoundliteral.385, ptr @.compoundliteral.386, ptr @.compoundliteral.387, ptr @.compoundliteral.388, ptr @.compoundliteral.389, ptr @.compoundliteral.390, ptr @.compoundliteral.391, ptr @.compoundliteral.392, ptr @.compoundliteral.393, ptr @.compoundliteral.394, ptr @.compoundliteral.395, ptr @.compoundliteral.396, ptr @.compoundliteral.397, ptr @.compoundliteral.398, ptr @.compoundliteral.399, ptr @.compoundliteral.400, ptr @.compoundliteral.401, ptr @.compoundliteral.402, ptr @.compoundliteral.403, ptr @.compoundliteral.404, ptr @.compoundliteral.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @dl2_1x_en_sel_enum, ptr @.str.445, ptr @dl3_1x_en_sel_enum, ptr @.str.446, ptr @dl6_1x_en_sel_enum, ptr @.str.447, ptr @dl7_1x_en_sel_enum, ptr @.str.448, ptr @dl8_1x_en_sel_enum, ptr @.str.449, ptr @dl10_1x_en_sel_enum, ptr @.str.450, ptr @dl11_1x_en_sel_enum, ptr @.str.451, ptr @ul1_1x_en_sel_enum, ptr @.str.452, ptr @ul2_1x_en_sel_enum, ptr @.str.453, ptr @ul3_1x_en_sel_enum, ptr @.str.454, ptr @ul4_1x_en_sel_enum, ptr @.str.455, ptr @ul5_1x_en_sel_enum, ptr @.str.456, ptr @ul6_1x_en_sel_enum, ptr @.str.457, ptr @ul8_1x_en_sel_enum, ptr @.str.458, ptr @ul9_1x_en_sel_enum, ptr @.str.459, ptr @ul10_1x_en_sel_enum, ptr @.str.460, ptr @asys_irq1_1x_en_sel_enum, ptr @.str.461, ptr @asys_irq2_1x_en_sel_enum, ptr @.str.462, ptr @asys_irq3_1x_en_sel_enum, ptr @.str.463, ptr @asys_irq4_1x_en_sel_enum, ptr @.str.464, ptr @asys_irq5_1x_en_sel_enum, ptr @.str.465, ptr @asys_irq6_1x_en_sel_enum, ptr @.str.466, ptr @asys_irq7_1x_en_sel_enum, ptr @.str.467, ptr @asys_irq8_1x_en_sel_enum, ptr @.str.468, ptr @asys_irq9_1x_en_sel_enum, ptr @.str.469, ptr @asys_irq10_1x_en_sel_enum, ptr @.str.470, ptr @asys_irq11_1x_en_sel_enum, ptr @.str.471, ptr @asys_irq12_1x_en_sel_enum, ptr @.str.472, ptr @asys_irq13_1x_en_sel_enum, ptr @.str.473, ptr @asys_irq14_1x_en_sel_enum, ptr @.str.474, ptr @asys_irq15_1x_en_sel_enum, ptr @.str.475, ptr @asys_irq16_1x_en_sel_enum, ptr @mt8195_afe_1x_en_sel_text, ptr @mt8195_afe_1x_en_sel_values, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @mt8195_afe_reg_defaults], section "llvm.metadata"
@0 = internal global [584 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_data_array to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_data to i32), i32 2560, i32 3200, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_memif_const_irqs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_cg_patch to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_pcm_dev_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_irq_handler._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_memif_dai_driver to i32), i32 2688, i32 3360, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_memif_routes to i32), i32 13520, i32 16896, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_memif_controls to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_fe_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_cm to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl8_dl11_data_sel_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o002_mix to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o003_mix to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o004_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o005_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o006_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o007_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o008_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o009_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o010_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o011_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o012_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o013_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o014_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o015_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o016_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o017_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o018_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o019_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o020_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o021_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o022_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o023_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o024_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o025_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o026_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o027_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o028_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o029_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o030_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o031_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o032_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o033_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o034_mix to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o035_mix to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o036_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o037_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o038_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o039_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o182_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o183_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o040_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o041_mix to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o042_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o043_mix to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o044_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o045_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o046_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @o047_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_memif_widgets to i32), i32 18540, i32 23168, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl8_dl11_data_sel_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl8_dl11_data_sel_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.204 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.206 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.220 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.268 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.270 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.305 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.307 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.309 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.311 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.315 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.317 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.319 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.322 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.334 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.336 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.339 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.340 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.342 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.343 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.348 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1523 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.350 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.352 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.353 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.354 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.355 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.358 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.359 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.360 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.361 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.365 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.366 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.368 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.370 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.372 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.374 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.376 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.378 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.379 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.380 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.382 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.384 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.386 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.388 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.392 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.394 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.395 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.396 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.397 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.398 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.399 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.400 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.401 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.402 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.403 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.404 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.405 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.443 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl2_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl3_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1709 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl6_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl7_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl8_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl10_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dl11_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul1_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul2_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.453 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul3_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1757 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul4_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul5_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.456 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul6_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.457 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul8_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.458 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul9_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.459 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ul10_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1793 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq1_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq2_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq3_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1811 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq4_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq5_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq6_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq7_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq8_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq9_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1847 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq10_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1853 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq11_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.471 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq12_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1865 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq13_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1871 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq14_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1877 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq15_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1883 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asys_irq16_1x_en_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1889 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_1x_en_sel_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1892 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_1x_en_sel_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1895 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1913 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1922 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_afe_reg_defaults to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1925 to i32), i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1927 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8195_afe_fs_timing(i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.cleanup_crit_edge [
    i32 8000, label %entry.if.then_crit_edge
    i32 12000, label %if.then.fold.split
    i32 16000, label %if.then.fold.split10
    i32 24000, label %if.then.fold.split11
    i32 32000, label %if.then.fold.split12
    i32 48000, label %if.then.fold.split13
    i32 96000, label %if.then.fold.split14
    i32 192000, label %if.then.fold.split15
    i32 384000, label %if.then.fold.split16
    i32 7350, label %if.then.fold.split17
    i32 11025, label %if.then.fold.split18
    i32 14700, label %if.then.fold.split19
    i32 22050, label %if.then.fold.split20
    i32 29400, label %if.then.fold.split21
    i32 44100, label %if.then.fold.split22
    i32 88200, label %if.then.fold.split23
    i32 176400, label %if.then.fold.split24
    i32 352800, label %if.then.fold.split25
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split25, %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split, %entry.if.then_crit_edge
  %i.08.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split10 ], [ 3, %if.then.fold.split11 ], [ 4, %if.then.fold.split12 ], [ 5, %if.then.fold.split13 ], [ 6, %if.then.fold.split14 ], [ 7, %if.then.fold.split15 ], [ 8, %if.then.fold.split16 ], [ 9, %if.then.fold.split17 ], [ 10, %if.then.fold.split18 ], [ 11, %if.then.fold.split19 ], [ 12, %if.then.fold.split20 ], [ 13, %if.then.fold.split21 ], [ 14, %if.then.fold.split22 ], [ 15, %if.then.fold.split23 ], [ 16, %if.then.fold.split24 ], [ 17, %if.then.fold.split25 ]
  %reg_value = getelementptr [18 x %struct.mt8195_afe_rate], ptr @mt8195_afe_rates, i32 0, i32 %i.08.lcssa, i32 1
  %1 = ptrtoint ptr %reg_value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg_value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_pcm_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt8195_afe_pcm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8195_afe_pcm_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt8195_afe_pcm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_pcm_dev_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev1, ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i290 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 8589934591) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %cmp.i = icmp eq i32 %call.i290, 0
  br i1 %cmp.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 8589934591) #7
  %call.i291 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #7
  %tobool7.not = icmp eq ptr %call.i291, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call.i292 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 308, i32 noundef 3520) #7
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 25
  %2 = ptrtoint ptr %platform_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i292, ptr %platform_priv, align 4
  %tobool12.not = icmp eq ptr %call.i292, null
  br i1 %tobool12.not, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %dev17 = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 1
  %3 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev17, align 4
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %4 = ptrtoint ptr %call.i291 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %call.i291, align 4
  %cmp.i293 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i293, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call25 = tail call i32 @mt8195_afe_init_clock(ptr noundef nonnull %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %do.body32, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #10
  br label %cleanup

do.body32:                                        ; preds = %if.end24
  %afe_ctrl_lock = getelementptr inbounds %struct.mt8195_afe_private, ptr %call.i292, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %afe_ctrl_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @mt8195_afe_pcm_dev_probe.__key, i16 noundef signext 3) #7
  %irq_alloc_lock = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %irq_alloc_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @mt8195_afe_pcm_dev_probe.__key.10) #7
  %irqs_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 13
  %6 = ptrtoint ptr %irqs_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 22, ptr %irqs_size, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 176, i32 noundef 3520) #7
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 12
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %irqs, align 4
  %tobool42.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool42.not, label %do.body32.cleanup_crit_edge, label %for.cond.preheader

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body32
  %8 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqs_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp303 = icmp sgt i32 %9, 0
  br i1 %cmp303, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0304 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [22 x %struct.mtk_base_irq_data], ptr @irq_data_array, i32 0, i32 %i.0304
  %10 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irqs, align 4
  %arrayidx47 = getelementptr %struct.mtk_base_afe_irq, ptr %11, i32 %i.0304
  %12 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %arrayidx47, align 4
  %inc = add nuw nsw i32 %i.0304, 1
  %13 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irqs_size, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %memif_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 11
  %15 = ptrtoint ptr %memif_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %memif_size, align 4
  %call5.i.i294 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 576, i32 noundef 3520) #7
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 10
  %16 = ptrtoint ptr %memif to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i294, ptr %memif, align 4
  %tobool51.not = icmp eq ptr %call5.i.i294, null
  br i1 %tobool51.not, label %for.end.cleanup_crit_edge, label %for.cond54.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond54.preheader:                             ; preds = %for.end
  %17 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memif_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp56305 = icmp sgt i32 %18, 0
  br i1 %cmp56305, label %for.cond54.preheader.for.body57_crit_edge, label %for.cond54.preheader.for.end73_crit_edge

for.cond54.preheader.for.end73_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.cond54.preheader.for.body57_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.cond54.preheader.for.body57_crit_edge
  %i.1306 = phi i32 [ %inc72, %for.body57.for.body57_crit_edge ], [ 0, %for.cond54.preheader.for.body57_crit_edge ]
  %arrayidx58 = getelementptr [16 x %struct.mtk_base_memif_data], ptr @memif_data, i32 0, i32 %i.1306
  %19 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %memif, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %20, i32 %i.1306, i32 3
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx58, ptr %data, align 4
  %arrayidx61 = getelementptr [16 x i32], ptr @mt8195_afe_memif_const_irqs, i32 0, i32 %i.1306
  %22 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx61, align 4
  %24 = load ptr, ptr %memif, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %24, i32 %i.1306, i32 4
  %25 = ptrtoint ptr %irq_usage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %irq_usage, align 4
  %26 = load ptr, ptr %memif, align 4
  %const_irq = getelementptr %struct.mtk_base_afe_memif, ptr %26, i32 %i.1306, i32 5
  %27 = ptrtoint ptr %const_irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %const_irq, align 4
  %28 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irqs, align 4
  %30 = load ptr, ptr %memif, align 4
  %irq_usage69 = getelementptr %struct.mtk_base_afe_memif, ptr %30, i32 %i.1306, i32 4
  %31 = ptrtoint ptr %irq_usage69 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_usage69, align 4
  %irq_occupyed = getelementptr %struct.mtk_base_afe_irq, ptr %29, i32 %32, i32 1
  %33 = ptrtoint ptr %irq_occupyed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %irq_occupyed, align 4
  %inc72 = add nuw nsw i32 %i.1306, 1
  %34 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %memif_size, align 4
  %cmp56 = icmp slt i32 %inc72, %35
  br i1 %cmp56, label %for.body57.for.body57_crit_edge, label %for.body57.for.end73_crit_edge

for.body57.for.end73_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end73

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body57

for.end73:                                        ; preds = %for.body57.for.end73_crit_edge, %for.cond54.preheader.for.end73_crit_edge
  %call74 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end79, label %if.end80

do.end79:                                         ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %39) #10
  br label %cleanup

if.end80:                                         ; preds = %for.end73
  %call.i295 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call74, ptr noundef nonnull @mt8195_afe_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295)
  %tobool82.not = icmp eq i32 %call.i295, 0
  br i1 %tobool82.not, label %if.end87, label %do.end86

do.end86:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 15
  %40 = ptrtoint ptr %sub_dais to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %sub_dais, ptr %sub_dais, align 4
  %prev.i = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 15, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sub_dais, ptr %prev.i, align 4
  %call92 = tail call i32 @mt8195_dai_adda_register(ptr noundef nonnull %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %for.inc99, label %if.end87.do.end97_crit_edge

if.end87.do.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

do.end97:                                         ; preds = %for.inc99.2.do.end97_crit_edge, %for.inc99.1.do.end97_crit_edge, %for.inc99.do.end97_crit_edge, %if.end87.do.end97_crit_edge
  %i.2307.lcssa = phi i32 [ 0, %if.end87.do.end97_crit_edge ], [ 1, %for.inc99.do.end97_crit_edge ], [ 2, %for.inc99.1.do.end97_crit_edge ], [ 3, %for.inc99.2.do.end97_crit_edge ]
  %call92.lcssa = phi i32 [ %call92, %if.end87.do.end97_crit_edge ], [ %call92.1, %for.inc99.do.end97_crit_edge ], [ %call92.2, %for.inc99.1.do.end97_crit_edge ], [ %call92.3, %for.inc99.2.do.end97_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %i.2307.lcssa, i32 noundef %call92.lcssa) #10
  br label %cleanup

for.inc99:                                        ; preds = %if.end87
  %call92.1 = tail call i32 @mt8195_dai_etdm_register(ptr noundef nonnull %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.1)
  %tobool93.not.1 = icmp eq i32 %call92.1, 0
  br i1 %tobool93.not.1, label %for.inc99.1, label %for.inc99.do.end97_crit_edge

for.inc99.do.end97_crit_edge:                     ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

for.inc99.1:                                      ; preds = %for.inc99
  %call92.2 = tail call i32 @mt8195_dai_pcm_register(ptr noundef nonnull %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.2)
  %tobool93.not.2 = icmp eq i32 %call92.2, 0
  br i1 %tobool93.not.2, label %for.inc99.2, label %for.inc99.1.do.end97_crit_edge

for.inc99.1.do.end97_crit_edge:                   ; preds = %for.inc99.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

for.inc99.2:                                      ; preds = %for.inc99.1
  %call92.3 = tail call fastcc i32 @mt8195_dai_memif_register(ptr noundef nonnull %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.3)
  %tobool93.not.3 = icmp eq i32 %call92.3, 0
  br i1 %tobool93.not.3, label %for.inc99.3, label %for.inc99.2.do.end97_crit_edge

for.inc99.2.do.end97_crit_edge:                   ; preds = %for.inc99.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

for.inc99.3:                                      ; preds = %for.inc99.2
  %call102 = tail call i32 @mtk_afe_combine_sub_dai(ptr noundef nonnull %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end108, label %do.end107

do.end107:                                        ; preds = %for.inc99.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %call102) #10
  br label %cleanup

if.end108:                                        ; preds = %for.inc99.3
  %mtk_afe_hardware = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 18
  %42 = ptrtoint ptr %mtk_afe_hardware to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @mt8195_afe_hardware, ptr %mtk_afe_hardware, align 4
  %memif_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 19
  %43 = ptrtoint ptr %memif_fs to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @mt8195_memif_fs, ptr %memif_fs, align 4
  %irq_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 20
  %44 = ptrtoint ptr %irq_fs to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @mt8195_irq_fs, ptr %irq_fs, align 4
  %runtime_resume = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 8
  %45 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mt8195_afe_runtime_resume, ptr %runtime_resume, align 4
  %runtime_suspend = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 7
  %46 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mt8195_afe_runtime_suspend, ptr %runtime_suspend, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i291, ptr %driver_data.i.i, align 4
  tail call fastcc void @mt8195_afe_parse_of(ptr noundef nonnull %call.i291)
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %48 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end108.if.end117_crit_edge, label %if.then112

if.end108.if.end117_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then112:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %call113 = tail call i32 @mt8195_afe_runtime_resume(ptr noundef %dev1)
  br label %if.end117

if.end117:                                        ; preds = %if.then112, %if.end108.if.end117_crit_edge
  %pm_runtime_bypass_reg_ctl = getelementptr inbounds %struct.mt8195_afe_private, ptr %call.i292, i32 0, i32 3
  %49 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %pm_runtime_bypass_reg_ctl, align 4
  %call.i296 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  %50 = ptrtoint ptr %call.i291 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i291, align 4
  %call121 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %51, ptr noundef nonnull @mt8195_afe_regmap_config, ptr noundef nonnull @mt8195_afe_pcm_dev_probe._key, ptr noundef nonnull @.str.26) #7
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 2
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call121, ptr %regmap, align 4
  %cmp.i297 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i297, label %if.then124, label %if.end127

if.then124:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %call121 to i32
  br label %err_pm_put

if.end127:                                        ; preds = %if.end117
  %call129 = tail call i32 @regmap_register_patch(ptr noundef %call121, ptr noundef nonnull @mt8195_cg_patch, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %do.end134, label %if.end135

do.end134:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %err_pm_put

if.end135:                                        ; preds = %if.end127
  %call136 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mt8195_afe_component, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end142, label %do.end141

do.end141:                                        ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  br label %err_pm_put

if.end142:                                        ; preds = %if.end135
  %call.i298 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 256, i32 noundef 3520) #7
  %tobool144.not = icmp eq ptr %call.i298, null
  br i1 %tobool144.not, label %if.end142.err_pm_put_crit_edge, label %if.end146

if.end142.err_pm_put_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_put

if.end146:                                        ; preds = %if.end142
  %call147 = tail call i32 @snd_soc_component_initialize(ptr noundef nonnull %call.i298, ptr noundef nonnull @mt8195_afe_pcm_dai_component, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end146.err_pm_put_crit_edge

if.end146.err_pm_put_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm_put

if.end150:                                        ; preds = %if.end146
  %debugfs_prefix = getelementptr inbounds %struct.snd_soc_component, ptr %call.i298, i32 0, i32 26
  %54 = ptrtoint ptr %debugfs_prefix to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @.str.33, ptr %debugfs_prefix, align 4
  %dai_drivers = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 16
  %55 = ptrtoint ptr %dai_drivers to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dai_drivers, align 4
  %num_dai_drivers = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i291, i32 0, i32 17
  %57 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_dai_drivers, align 4
  %call151 = tail call i32 @snd_soc_add_component(ptr noundef nonnull %call.i298, ptr noundef %56, i32 noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end157, label %do.end156

do.end156:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.35) #10
  br label %err_pm_put

if.end157:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call.i299 = tail call i32 @regmap_multi_reg_write(ptr noundef %60, ptr noundef nonnull @mt8195_afe_reg_defaults, i32 noundef 5) #7
  %call.i300 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  %61 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %pm_runtime_bypass_reg_ctl, align 4
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %63, i1 noundef zeroext true) #7
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %65) #7
  br label %cleanup

err_pm_put:                                       ; preds = %do.end156, %if.end146.err_pm_put_crit_edge, %if.end142.err_pm_put_crit_edge, %do.end141, %do.end134, %if.then124
  %ret.0 = phi i32 [ %53, %if.then124 ], [ %call129, %do.end134 ], [ %call136, %do.end141 ], [ %call147, %if.end146.err_pm_put_crit_edge ], [ %call151, %do.end156 ], [ -12, %if.end142.err_pm_put_crit_edge ]
  %call.i301 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err_pm_put, %if.end157, %do.end107, %do.end97, %do.end86, %do.end79, %for.end.cleanup_crit_edge, %do.body32.cleanup_crit_edge, %do.end30, %if.then21, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %5, %if.then21 ], [ %call25, %do.end30 ], [ -6, %do.end79 ], [ %call.i295, %do.end86 ], [ %call92.lcssa, %do.end97 ], [ %call102, %do.end107 ], [ %ret.0, %err_pm_put ], [ 0, %if.end157 ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ -12, %do.body32.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ %call.i290, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_pcm_dev_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.mt8195_afe_runtime_suspend.exit_crit_edge, label %lor.lhs.false.i

if.then.mt8195_afe_runtime_suspend.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8195_afe_runtime_suspend.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 25
  %8 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_priv.i, align 4
  %pm_runtime_bypass_reg_ctl.i = getelementptr inbounds %struct.mt8195_afe_private, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %pm_runtime_bypass_reg_ctl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pm_runtime_bypass_reg_ctl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.i = icmp eq i32 %11, 0
  br i1 %tobool1.not.i, label %if.end.i, label %lor.lhs.false.i.mt8195_afe_runtime_suspend.exit_crit_edge

lor.lhs.false.i.mt8195_afe_runtime_suspend.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8195_afe_runtime_suspend.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @mt8195_afe_disable_main_clock(ptr noundef %5) #7
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #7
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_mark_dirty(ptr noundef %15) #7
  br label %mt8195_afe_runtime_suspend.exit

mt8195_afe_runtime_suspend.exit:                  ; preds = %if.end.i, %lor.lhs.false.i.mt8195_afe_runtime_suspend.exit_crit_edge, %if.then.mt8195_afe_runtime_suspend.exit_crit_edge
  %call5.i = tail call i32 @mt8195_afe_disable_reg_rw_clk(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %mt8195_afe_runtime_suspend.exit, %entry.if.end_crit_edge
  tail call void @mt8195_afe_deinit_clock(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_init_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_irq_handler(i32 noundef %irq_id, ptr nocapture noundef readonly %dev_id) #4 align 64 {
entry:
  %val = alloca i32, align 4
  %mcu_irq_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcu_irq_mask) #7
  %1 = ptrtoint ptr %mcu_irq_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mcu_irq_mask, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 372, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then28.sink.split_crit_edge

entry.if.then28.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.sink.split

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 376, ptr noundef nonnull %mcu_irq_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %if.end.if.then28.sink.split_crit_edge

if.end.if.then28.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.sink.split

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %mcu_irq_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mcu_irq_mask, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and = and i32 %9, %7
  store i32 %and, ptr %val, align 4
  %memif10 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 10
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end9
  %i.073 = phi i32 [ 0, %if.end9 ], [ %inc, %cleanup.for.body_crit_edge ]
  %afe_irq_clr_bits.072 = phi i32 [ 0, %if.end9 ], [ %afe_irq_clr_bits.2, %cleanup.for.body_crit_edge ]
  %asys_irq_clr_bits.071 = phi i32 [ 0, %if.end9 ], [ %asys_irq_clr_bits.2, %cleanup.for.body_crit_edge ]
  %10 = ptrtoint ptr %memif10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memif10, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %11, i32 %i.073, i32 4
  %12 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %14 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqs, align 4
  %arrayidx15 = getelementptr %struct.mtk_base_afe_irq, ptr %15, i32 %13
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15, align 4
  %irq_status_shift = getelementptr inbounds %struct.mtk_base_irq_data, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %irq_status_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_status_shift, align 4
  %shl = shl nuw i32 1, %19
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %and18 = and i32 %21, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end13.cleanup_crit_edge, label %if.end21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %irq_clr_shift = getelementptr inbounds %struct.mtk_base_irq_data, ptr %17, i32 0, i32 10
  %22 = ptrtoint ptr %irq_clr_shift to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_clr_shift, align 4
  %shl17 = shl nuw i32 1, %23
  %irq_clr_reg = getelementptr inbounds %struct.mtk_base_irq_data, ptr %17, i32 0, i32 9
  %24 = ptrtoint ptr %irq_clr_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_clr_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 340, i32 %25)
  %cmp22 = icmp eq i32 %25, 340
  %or = select i1 %cmp22, i32 %shl17, i32 0
  %asys_irq_clr_bits.1 = or i32 %or, %asys_irq_clr_bits.071
  %or24 = select i1 %cmp22, i32 0, i32 %shl17
  %afe_irq_clr_bits.1 = or i32 %or24, %afe_irq_clr_bits.072
  %substream = getelementptr %struct.mtk_base_afe_memif, ptr %11, i32 %i.073, i32 2
  %26 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %substream, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end13.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %asys_irq_clr_bits.2 = phi i32 [ %asys_irq_clr_bits.1, %if.end21 ], [ %asys_irq_clr_bits.071, %for.body.cleanup_crit_edge ], [ %asys_irq_clr_bits.071, %if.end13.cleanup_crit_edge ]
  %afe_irq_clr_bits.2 = phi i32 [ %afe_irq_clr_bits.1, %if.end21 ], [ %afe_irq_clr_bits.072, %for.body.cleanup_crit_edge ], [ %afe_irq_clr_bits.072, %if.end13.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %err_irq, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

err_irq:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asys_irq_clr_bits.2)
  %tobool27.not = icmp eq i32 %asys_irq_clr_bits.2, 0
  br i1 %tobool27.not, label %err_irq.if.end31_crit_edge, label %err_irq.if.then28_crit_edge

err_irq.if.then28_crit_edge:                      ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28

err_irq.if.end31_crit_edge:                       ; preds = %err_irq
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then28.sink.split:                             ; preds = %if.end.if.then28.sink.split_crit_edge, %entry.if.then28.sink.split_crit_edge
  %.str.57.sink = phi ptr [ @.str.53, %entry.if.then28.sink.split_crit_edge ], [ @.str.57, %if.end.if.then28.sink.split_crit_edge ]
  %dev8 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev_id, i32 0, i32 1
  %28 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull %.str.57.sink, ptr noundef nonnull @.str.54) #10
  br label %if.then28

if.then28:                                        ; preds = %if.then28.sink.split, %err_irq.if.then28_crit_edge
  %afe_irq_clr_bits.369 = phi i32 [ %afe_irq_clr_bits.2, %err_irq.if.then28_crit_edge ], [ 903, %if.then28.sink.split ]
  %asys_irq_clr_bits.368 = phi i32 [ %asys_irq_clr_bits.2, %err_irq.if.then28_crit_edge ], [ 65535, %if.then28.sink.split ]
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_write(ptr noundef %31, i32 noundef 340, i32 noundef %asys_irq_clr_bits.368) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %err_irq.if.end31_crit_edge
  %afe_irq_clr_bits.370 = phi i32 [ %afe_irq_clr_bits.369, %if.then28 ], [ %afe_irq_clr_bits.2, %err_irq.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %afe_irq_clr_bits.370)
  %tobool32.not = icmp eq i32 %afe_irq_clr_bits.370, 0
  br i1 %tobool32.not, label %if.end31.if.end36_crit_edge, label %if.then33

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_write(ptr noundef %33, i32 noundef 368, i32 noundef %afe_irq_clr_bits.370) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcu_irq_mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_combine_sub_dai(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_memif_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.479) #7
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
  %memif3 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %memif3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memif3, align 4
  %call5 = tail call i32 @mt8195_afe_fs_timing(i32 noundef %rate)
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %13, i32 %11, i32 3
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.484)
  switch i32 %17, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 13, label %sw.bb7
    i32 9, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %fs.0 = phi i32 [ %call5, %entry.sw.epilog_crit_edge ], [ 26, %sw.bb8 ], [ 25, %sw.bb7 ], [ 11, %sw.bb ]
  ret i32 %fs.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_irq_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call ptr @snd_soc_rtdcom_lookup(ptr noundef %1, ptr noundef nonnull @.str.479) #7
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %id2.i = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id2.i, align 4
  %memif3.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %memif3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memif3.i, align 4
  %call5.i = tail call i32 @mt8195_afe_fs_timing(i32 noundef %rate) #7
  %data.i = getelementptr %struct.mtk_base_afe_memif, ptr %13, i32 %11, i32 3
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.485)
  switch i32 %17, label %mt8195_memif_fs.exit [
    i32 5, label %entry.sw.epilog_crit_edge
    i32 13, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb1_crit_edge
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

mt8195_memif_fs.exit:                             ; preds = %entry
  %19 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.486)
  switch i32 %call5.i, label %mt8195_memif_fs.exit.sw.epilog_crit_edge [
    i32 25, label %mt8195_memif_fs.exit.sw.bb_crit_edge
    i32 26, label %mt8195_memif_fs.exit.sw.bb1_crit_edge
  ]

mt8195_memif_fs.exit.sw.bb1_crit_edge:            ; preds = %mt8195_memif_fs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

mt8195_memif_fs.exit.sw.bb_crit_edge:             ; preds = %mt8195_memif_fs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

mt8195_memif_fs.exit.sw.epilog_crit_edge:         ; preds = %mt8195_memif_fs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %mt8195_memif_fs.exit.sw.bb_crit_edge, %entry.sw.bb_crit_edge
  br label %sw.epilog

sw.bb1:                                           ; preds = %mt8195_memif_fs.exit.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %mt8195_memif_fs.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %fs.0 = phi i32 [ %call5.i, %mt8195_memif_fs.exit.sw.epilog_crit_edge ], [ 13, %sw.bb1 ], [ 12, %sw.bb ], [ 11, %entry.sw.epilog_crit_edge ]
  ret i32 %fs.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_runtime_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
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
  %call1 = tail call i32 @mt8195_afe_enable_reg_rw_clk(ptr noundef %1) #7
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.skip_regmap_crit_edge, label %lor.lhs.false

entry.skip_regmap_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_regmap

lor.lhs.false:                                    ; preds = %entry
  %pm_runtime_bypass_reg_ctl = getelementptr inbounds %struct.mt8195_afe_private, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pm_runtime_bypass_reg_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.skip_regmap_crit_edge

lor.lhs.false.skip_regmap_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_regmap

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @regcache_cache_only(ptr noundef nonnull %5, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regcache_sync(ptr noundef %9) #7
  %call6 = tail call i32 @mt8195_afe_enable_main_clock(ptr noundef %1) #7
  br label %skip_regmap

skip_regmap:                                      ; preds = %if.end, %lor.lhs.false.skip_regmap_crit_edge, %entry.skip_regmap_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_runtime_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.skip_regmap_crit_edge, label %lor.lhs.false

entry.skip_regmap_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_regmap

lor.lhs.false:                                    ; preds = %entry
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %1, i32 0, i32 25
  %4 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_priv, align 4
  %pm_runtime_bypass_reg_ctl = getelementptr inbounds %struct.mt8195_afe_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pm_runtime_bypass_reg_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pm_runtime_bypass_reg_ctl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.skip_regmap_crit_edge

lor.lhs.false.skip_regmap_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_regmap

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @mt8195_afe_disable_main_clock(ptr noundef %1) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %9, i1 noundef zeroext true) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %11) #7
  br label %skip_regmap

skip_regmap:                                      ; preds = %if.end, %lor.lhs.false.skip_regmap_crit_edge, %entry.skip_regmap_crit_edge
  %call5 = tail call i32 @mt8195_afe_disable_reg_rw_clk(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt8195_afe_parse_of(ptr nocapture noundef readonly %afe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.480) #7
  %topckgen = getelementptr inbounds %struct.mt8195_afe_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %topckgen to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %topckgen, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.481, ptr noundef nonnull @.str.482, i32 noundef %9) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_dai_adda_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_dai_etdm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_dai_pcm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt8195_dai_memif_register(ptr noundef %afe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 8
  %sub_dais = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 15
  %2 = ptrtoint ptr %sub_dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sub_dais, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %sub_dais, ptr noundef %3) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
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
  store ptr @mt8195_memif_dai_driver, ptr %call.i, align 4
  %num_dai_drivers = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %num_dai_drivers to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16, ptr %num_dai_drivers, align 4
  %dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mt8195_memif_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 103, ptr %num_dapm_widgets, align 4
  %dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mt8195_memif_routes, ptr %dapm_routes, align 4
  %num_dapm_routes = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 260, ptr %num_dapm_routes, align 4
  %controls = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mt8195_memif_controls, ptr %controls, align 4
  %num_controls = getelementptr inbounds %struct.mtk_base_afe_dai, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %num_controls to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %num_controls, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %16 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_priv.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %list_add.exit
  %i.07.i = phi i32 [ 0, %list_add.exit ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i.i13 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 4, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i13, null
  br i1 %tobool.not.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.mt8195_afe_private, ptr %17, i32 0, i32 10, i32 %i.07.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i13, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt8195_afe_fe_set_fmt(ptr nocapture noundef readnone %dai, i32 noundef %fmt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_fe_startup(ptr noundef %substream, ptr noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %id2 = getelementptr inbounds %struct.snd_soc_dai, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id2, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %switch.i = icmp eq i32 %14, 4
  br i1 %switch.i, label %if.end.i, label %entry.mt8195_afe_paired_memif_clk_prepare.exit_crit_edge

entry.mt8195_afe_paired_memif_clk_prepare.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8195_afe_paired_memif_clk_prepare.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %7, i32 0, i32 25
  %15 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_priv.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %arrayidx4.i = getelementptr ptr, ptr %18, i32 53
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.i, align 4
  %call5.i = tail call i32 @mt8195_afe_prepare_clk(ptr noundef %7, ptr noundef %20) #7
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %arrayidx7.i = getelementptr ptr, ptr %22, i32 52
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7.i, align 4
  %call8.i = tail call i32 @mt8195_afe_prepare_clk(ptr noundef %7, ptr noundef %24) #7
  br label %mt8195_afe_paired_memif_clk_prepare.exit

mt8195_afe_paired_memif_clk_prepare.exit:         ; preds = %if.end.i, %entry.mt8195_afe_paired_memif_clk_prepare.exit_crit_edge
  %call4 = tail call i32 @mtk_afe_fe_startup(ptr noundef %substream, ptr noundef %dai) #7
  %call5 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.not = icmp eq i32 %13, 3
  br i1 %cmp.not, label %if.end, label %mt8195_afe_paired_memif_clk_prepare.exit.out_crit_edge

mt8195_afe_paired_memif_clk_prepare.exit.out_crit_edge: ; preds = %mt8195_afe_paired_memif_clk_prepare.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %mt8195_afe_paired_memif_clk_prepare.exit
  %call6 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %3, i32 noundef 13, i32 noundef 1, i32 noundef 16383) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.body, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_afe_fe_startup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_afe_fe_startup, %if.then12)) #7
          to label %out [label %if.then12], !srcloc !861

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %7, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_afe_fe_startup.__UNIQUE_ID_ddebug242, ptr noundef %26, ptr noundef nonnull @.str.61) #7
  br label %out

out:                                              ; preds = %if.then12, %do.body, %if.end.out_crit_edge, %mt8195_afe_paired_memif_clk_prepare.exit.out_crit_edge
  %ret.0 = phi i32 [ %call4, %mt8195_afe_paired_memif_clk_prepare.exit.out_crit_edge ], [ %call6, %if.then12 ], [ %call6, %if.end.out_crit_edge ], [ %call6, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt8195_afe_fe_shutdown(ptr noundef %substream, ptr noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mtk_afe_fe_shutdown(ptr noundef %substream, ptr noundef %dai) #7
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %id1.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id1.i, align 4
  %8 = and i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %switch.i = icmp eq i32 %8, 4
  br i1 %switch.i, label %if.end.i, label %entry.mt8195_afe_paired_memif_clk_prepare.exit_crit_edge

entry.mt8195_afe_paired_memif_clk_prepare.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8195_afe_paired_memif_clk_prepare.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %platform_priv.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %arrayidx10.i = getelementptr ptr, ptr %16, i32 52
  %17 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx10.i, align 4
  tail call void @mt8195_afe_unprepare_clk(ptr noundef %12, ptr noundef %18) #7
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %arrayidx12.i = getelementptr ptr, ptr %20, i32 53
  %21 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12.i, align 4
  tail call void @mt8195_afe_unprepare_clk(ptr noundef %12, ptr noundef %22) #7
  br label %mt8195_afe_paired_memif_clk_prepare.exit

mt8195_afe_paired_memif_clk_prepare.exit:         ; preds = %if.end.i, %entry.mt8195_afe_paired_memif_clk_prepare.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_fe_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
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
  %id1 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id1, align 4
  %memif2 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 10
  %12 = ptrtoint ptr %memif2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %memif2, align 4
  %data4 = getelementptr %struct.mtk_base_afe_memif, ptr %13, i32 %11, i32 3
  %14 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data4, align 4
  %id1.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %16 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id1.i, align 4
  %18 = add i32 %17, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %18)
  %19 = icmp ult i32 %18, -9
  br i1 %19, label %entry.mt8195_afe_found_cm.exit.thread_crit_edge, label %if.end.i

entry.mt8195_afe_found_cm.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8195_afe_found_cm.exit.thread

if.end.i:                                         ; preds = %entry
  %20 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.487)
  switch i32 %17, label %do.body.i [
    i32 14, label %if.end.i.if.end14.i_crit_edge
    i32 8, label %sw.bb4.i
    i32 15, label %sw.bb5.i
  ]

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_afe_found_cm.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_afe_fe_hw_params, %if.then11.i)) #7
          to label %mt8195_afe_found_cm.exit [label %if.then11.i], !srcloc !861

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i25 = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i25, align 4
  %23 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_afe_found_cm.__UNIQUE_ID_ddebug241, ptr noundef %22, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %24) #7
  br label %mt8195_afe_found_cm.exit.thread

if.end14.i:                                       ; preds = %sw.bb5.i, %sw.bb4.i, %if.end.i.if.end14.i_crit_edge
  %id.0.ph.i = phi i32 [ 1, %sw.bb4.i ], [ 2, %sw.bb5.i ], [ 0, %if.end.i.if.end14.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.mt8195_afe_channel_merge], ptr @mt8195_afe_cm, i32 0, i32 %id.0.ph.i
  br label %mt8195_afe_found_cm.exit

mt8195_afe_found_cm.exit.thread:                  ; preds = %if.then11.i, %entry.mt8195_afe_found_cm.exit.thread_crit_edge
  %arrayidx.i.i29 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx.i.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i29, align 4
  br label %mt8195_afe_config_cm.exit

mt8195_afe_found_cm.exit:                         ; preds = %if.end14.i, %do.body.i
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end14.i ], [ null, %do.body.i ]
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i, label %mt8195_afe_found_cm.exit.mt8195_afe_config_cm.exit_crit_edge, label %if.end.i27

mt8195_afe_found_cm.exit.mt8195_afe_config_cm.exit_crit_edge: ; preds = %mt8195_afe_found_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8195_afe_config_cm.exit

if.end.i27:                                       ; preds = %mt8195_afe_found_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reg.i, align 4
  %sel_maskbit.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %sel_maskbit.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sel_maskbit.i, align 4
  %sel_shift.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 2
  %35 = ptrtoint ptr %sel_shift.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sel_shift.i, align 4
  %shl.i = shl i32 %34, %36
  %sel_default.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 4
  %37 = ptrtoint ptr %sel_default.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sel_default.i, align 4
  %shl2.i = shl i32 %38, %36
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef %shl.i, i32 noundef %shl2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %41 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg.i, align 4
  %ch_num_maskbit.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 6
  %43 = ptrtoint ptr %ch_num_maskbit.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ch_num_maskbit.i, align 4
  %ch_num_shift.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 5
  %45 = ptrtoint ptr %ch_num_shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch_num_shift.i, align 4
  %shl5.i = shl i32 %44, %46
  %sub.i = add i32 %28, -1
  %shl7.i = shl i32 %sub.i, %46
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %42, i32 noundef %shl5.i, i32 noundef %shl7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %49 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg.i, align 4
  %update_cnt_maskbit.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 10
  %51 = ptrtoint ptr %update_cnt_maskbit.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %update_cnt_maskbit.i, align 4
  %update_cnt_shift.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 9
  %53 = ptrtoint ptr %update_cnt_shift.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %update_cnt_shift.i, align 4
  %shl11.i = shl i32 %52, %54
  %update_cnt_default.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 11
  %55 = ptrtoint ptr %update_cnt_default.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %update_cnt_default.i, align 4
  %shl13.i = shl i32 %56, %54
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %50, i32 noundef %shl11.i, i32 noundef %shl13.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %mt8195_afe_config_cm.exit

mt8195_afe_config_cm.exit:                        ; preds = %if.end.i27, %mt8195_afe_found_cm.exit.mt8195_afe_config_cm.exit_crit_edge, %mt8195_afe_found_cm.exit.thread
  %57 = phi i32 [ %26, %mt8195_afe_found_cm.exit.thread ], [ %28, %mt8195_afe_found_cm.exit.mt8195_afe_config_cm.exit_crit_edge ], [ %28, %if.end.i27 ]
  %ch_num_reg = getelementptr inbounds %struct.mtk_base_memif_data, ptr %15, i32 0, i32 31
  %58 = ptrtoint ptr %ch_num_reg to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ch_num_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp = icmp sgt i32 %59, -1
  br i1 %cmp, label %if.then, label %mt8195_afe_config_cm.exit.if.end_crit_edge

mt8195_afe_config_cm.exit.if.end_crit_edge:       ; preds = %mt8195_afe_config_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %mt8195_afe_config_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %ch_num_maskbit = getelementptr inbounds %struct.mtk_base_memif_data, ptr %15, i32 0, i32 33
  %62 = ptrtoint ptr %ch_num_maskbit to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ch_num_maskbit, align 4
  %ch_num_shift = getelementptr inbounds %struct.mtk_base_memif_data, ptr %15, i32 0, i32 32
  %64 = ptrtoint ptr %ch_num_shift to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ch_num_shift, align 4
  %shl = shl i32 %63, %65
  %shl11 = shl i32 %57, %65
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %59, i32 noundef %shl, i32 noundef %shl11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %mt8195_afe_config_cm.exit.if.end_crit_edge
  %call13 = tail call i32 @mtk_afe_fe_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #7
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_fe_hw_free(ptr noundef %substream, ptr noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_afe_fe_hw_free(ptr noundef %substream, ptr noundef %dai) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_fe_prepare(ptr noundef %substream, ptr noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtk_afe_fe_prepare(ptr noundef %substream, ptr noundef %dai) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_fe_trigger(ptr noundef %substream, i32 noundef %cmd, ptr noundef %dai) #4 align 64 {
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
  %id1.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id1.i, align 4
  %6 = add i32 %5, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %6)
  %7 = icmp ult i32 %6, -9
  br i1 %7, label %entry.mt8195_afe_found_cm.exit_crit_edge, label %if.end.i

entry.mt8195_afe_found_cm.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt8195_afe_found_cm.exit

if.end.i:                                         ; preds = %entry
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.488)
  switch i32 %5, label %do.body.i [
    i32 14, label %if.end.i.if.end14.i_crit_edge
    i32 8, label %sw.bb4.i
    i32 15, label %sw.bb5.i
  ]

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt8195_afe_found_cm.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt8195_afe_fe_trigger, %if.then11.i)) #7
          to label %mt8195_afe_found_cm.exit [label %if.then11.i], !srcloc !861

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i22 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i22, align 4
  %11 = ptrtoint ptr %id1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id1.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt8195_afe_found_cm.__UNIQUE_ID_ddebug241, ptr noundef %10, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.62, i32 noundef %12) #7
  br label %mt8195_afe_found_cm.exit

if.end14.i:                                       ; preds = %sw.bb5.i, %sw.bb4.i, %if.end.i.if.end14.i_crit_edge
  %id.0.ph.i = phi i32 [ 1, %sw.bb4.i ], [ 2, %sw.bb5.i ], [ 0, %if.end.i.if.end14.i_crit_edge ]
  %arrayidx.i = getelementptr [3 x %struct.mt8195_afe_channel_merge], ptr @mt8195_afe_cm, i32 0, i32 %id.0.ph.i
  br label %mt8195_afe_found_cm.exit

mt8195_afe_found_cm.exit:                         ; preds = %if.end14.i, %if.then11.i, %do.body.i, %entry.mt8195_afe_found_cm.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.end14.i ], [ null, %entry.mt8195_afe_found_cm.exit_crit_edge ], [ null, %if.then11.i ], [ null, %do.body.i ]
  %13 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.489)
  switch i32 %cmd, label %mt8195_afe_found_cm.exit.sw.epilog_crit_edge [
    i32 1, label %mt8195_afe_found_cm.exit.sw.bb_crit_edge
    i32 6, label %mt8195_afe_found_cm.exit.sw.bb_crit_edge46
    i32 0, label %mt8195_afe_found_cm.exit.sw.bb3_crit_edge
    i32 5, label %mt8195_afe_found_cm.exit.sw.bb3_crit_edge47
  ]

mt8195_afe_found_cm.exit.sw.bb3_crit_edge47:      ; preds = %mt8195_afe_found_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

mt8195_afe_found_cm.exit.sw.bb3_crit_edge:        ; preds = %mt8195_afe_found_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

mt8195_afe_found_cm.exit.sw.bb_crit_edge46:       ; preds = %mt8195_afe_found_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

mt8195_afe_found_cm.exit.sw.bb_crit_edge:         ; preds = %mt8195_afe_found_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

mt8195_afe_found_cm.exit.sw.epilog_crit_edge:     ; preds = %mt8195_afe_found_cm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %mt8195_afe_found_cm.exit.sw.bb_crit_edge, %mt8195_afe_found_cm.exit.sw.bb_crit_edge46
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i23

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i23:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %reg.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg.i, align 4
  %en_maskbit.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 8
  %18 = ptrtoint ptr %en_maskbit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %en_maskbit.i, align 4
  %en_shift.i = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 7
  %20 = ptrtoint ptr %en_shift.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %en_shift.i, align 4
  %shl.i = shl i32 %19, %21
  %shl3.i = shl nuw i32 1, %21
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef %shl.i, i32 noundef %shl3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %mt8195_afe_found_cm.exit.sw.bb3_crit_edge, %mt8195_afe_found_cm.exit.sw.bb3_crit_edge47
  %tobool.not.i24 = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not.i24, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i31

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i31:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i25 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %22 = ptrtoint ptr %regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i25, align 4
  %reg.i26 = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %reg.i26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg.i26, align 4
  %en_maskbit.i27 = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 8
  %26 = ptrtoint ptr %en_maskbit.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %en_maskbit.i27, align 4
  %en_shift.i28 = getelementptr inbounds %struct.mt8195_afe_channel_merge, ptr %retval.0.i, i32 0, i32 7
  %28 = ptrtoint ptr %en_shift.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %en_shift.i28, align 4
  %shl.i29 = shl i32 %27, %29
  %call.i.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %25, i32 noundef %shl.i29, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i31, %sw.bb3.sw.epilog_crit_edge, %if.end.i23, %sw.bb.sw.epilog_crit_edge, %mt8195_afe_found_cm.exit.sw.epilog_crit_edge
  %call5 = tail call i32 @mtk_afe_fe_trigger(ptr noundef %substream, i32 noundef %cmd, ptr noundef %dai) #7
  %30 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.490)
  switch i32 %cmd, label %sw.epilog.sw.epilog11_crit_edge [
    i32 1, label %sw.epilog.sw.bb6_crit_edge
    i32 6, label %sw.epilog.sw.bb6_crit_edge48
    i32 0, label %sw.epilog.sw.bb8_crit_edge
    i32 5, label %sw.epilog.sw.bb8_crit_edge49
  ]

sw.epilog.sw.bb8_crit_edge49:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.epilog.sw.bb8_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.epilog.sw.bb6_crit_edge48:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.epilog.sw.bb6_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb6

sw.epilog.sw.epilog11_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog11

sw.bb6:                                           ; preds = %sw.epilog.sw.bb6_crit_edge, %sw.epilog.sw.bb6_crit_edge48
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %31 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private_data.i, align 4
  %dais.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %dais.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dais.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %id1.i35 = getelementptr inbounds %struct.snd_soc_dai, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %id1.i35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id1.i35, align 4
  %39 = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %switch.i = icmp eq i32 %39, 4
  br i1 %switch.i, label %if.end.i36, label %sw.bb6.sw.epilog11_crit_edge

sw.bb6.sw.epilog11_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog11

if.end.i36:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i34 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i34, align 4
  %platform_priv.i = getelementptr inbounds %struct.mtk_base_afe, ptr %43, i32 0, i32 25
  %44 = ptrtoint ptr %platform_priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %platform_priv.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %arrayidx4.i = getelementptr ptr, ptr %47, i32 53
  %48 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx4.i, align 4
  %call5.i = tail call i32 @mt8195_afe_enable_clk_atomic(ptr noundef %43, ptr noundef %49) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #7
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %45, align 4
  %arrayidx7.i = getelementptr ptr, ptr %52, i32 52
  %53 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx7.i, align 4
  %call8.i = tail call i32 @mt8195_afe_enable_clk_atomic(ptr noundef %43, ptr noundef %54) #7
  br label %sw.epilog11

sw.bb8:                                           ; preds = %sw.epilog.sw.bb8_crit_edge, %sw.epilog.sw.bb8_crit_edge49
  %private_data.i37 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %55 = ptrtoint ptr %private_data.i37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private_data.i37, align 4
  %dais.i41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %dais.i41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dais.i41, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %id1.i42 = getelementptr inbounds %struct.snd_soc_dai, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %id1.i42 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id1.i42, align 4
  %63 = and i32 %62, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %switch.i43 = icmp eq i32 %63, 4
  br i1 %switch.i43, label %if.end.i44, label %sw.bb8.sw.epilog11_crit_edge

sw.bb8.sw.epilog11_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog11

if.end.i44:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i39 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 8
  %66 = ptrtoint ptr %driver_data.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i.i.i39, align 4
  %platform_priv.i40 = getelementptr inbounds %struct.mtk_base_afe, ptr %67, i32 0, i32 25
  %68 = ptrtoint ptr %platform_priv.i40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platform_priv.i40, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %arrayidx10.i = getelementptr ptr, ptr %71, i32 52
  %72 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx10.i, align 4
  tail call void @mt8195_afe_disable_clk_atomic(ptr noundef %67, ptr noundef %73) #7
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %69, align 4
  %arrayidx12.i = getelementptr ptr, ptr %75, i32 53
  %76 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx12.i, align 4
  tail call void @mt8195_afe_disable_clk_atomic(ptr noundef %67, ptr noundef %77) #7
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %if.end.i44, %sw.bb8.sw.epilog11_crit_edge, %if.end.i36, %sw.bb6.sw.epilog11_crit_edge, %sw.epilog.sw.epilog11_crit_edge
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_startup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_prepare_clk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt8195_afe_unprepare_clk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_afe_fe_shutdown(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_hw_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_hw_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_trigger(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_enable_clk_atomic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt8195_afe_disable_clk_atomic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_memif_1x_en_sel_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
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
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %arrayidx2 = getelementptr %struct.mt8195_afe_private, ptr %7, i32 0, i32 10, i32 %9
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp = icmp eq i32 %11, %15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #7
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_asys_irq_1x_en_sel_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
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
  %device = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.mt8195_afe_private, ptr %7, i32 0, i32 8, i32 %9
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @snd_soc_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #7
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %arrayidx3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_rtdcom_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_enable_reg_rw_clk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_enable_main_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_disable_main_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt8195_afe_disable_reg_rw_clk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mt8195_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.491)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 12, label %entry.return_crit_edge2
    i32 16, label %entry.return_crit_edge3
    i32 20, label %entry.return_crit_edge4
    i32 24, label %entry.return_crit_edge5
    i32 340, label %entry.return_crit_edge6
    i32 344, label %entry.return_crit_edge7
    i32 348, label %entry.return_crit_edge8
    i32 352, label %entry.return_crit_edge9
    i32 368, label %entry.return_crit_edge10
    i32 372, label %entry.return_crit_edge11
    i32 432, label %entry.return_crit_edge12
    i32 436, label %entry.return_crit_edge13
    i32 460, label %entry.return_crit_edge14
    i32 1016, label %entry.return_crit_edge15
    i32 1020, label %entry.return_crit_edge16
    i32 1024, label %entry.return_crit_edge17
    i32 1028, label %entry.return_crit_edge18
    i32 1060, label %entry.return_crit_edge19
    i32 1084, label %entry.return_crit_edge20
    i32 1160, label %entry.return_crit_edge21
    i32 1184, label %entry.return_crit_edge22
    i32 1188, label %entry.return_crit_edge23
    i32 1192, label %entry.return_crit_edge24
    i32 1196, label %entry.return_crit_edge25
    i32 1288, label %entry.return_crit_edge26
    i32 1292, label %entry.return_crit_edge27
    i32 1296, label %entry.return_crit_edge28
    i32 1300, label %entry.return_crit_edge29
    i32 1304, label %entry.return_crit_edge30
    i32 1308, label %entry.return_crit_edge31
    i32 1312, label %entry.return_crit_edge32
    i32 1316, label %entry.return_crit_edge33
    i32 1320, label %entry.return_crit_edge34
    i32 1324, label %entry.return_crit_edge35
    i32 1328, label %entry.return_crit_edge36
    i32 1332, label %entry.return_crit_edge37
    i32 1344, label %entry.return_crit_edge38
    i32 1348, label %entry.return_crit_edge39
    i32 1352, label %entry.return_crit_edge40
    i32 1356, label %entry.return_crit_edge41
    i32 1372, label %entry.return_crit_edge42
    i32 1376, label %entry.return_crit_edge43
    i32 1380, label %entry.return_crit_edge44
    i32 1384, label %entry.return_crit_edge45
    i32 1388, label %entry.return_crit_edge46
    i32 1392, label %entry.return_crit_edge47
    i32 1396, label %entry.return_crit_edge48
    i32 1400, label %entry.return_crit_edge49
    i32 1404, label %entry.return_crit_edge50
    i32 1408, label %entry.return_crit_edge51
    i32 1412, label %entry.return_crit_edge52
    i32 1416, label %entry.return_crit_edge53
    i32 1420, label %entry.return_crit_edge54
    i32 1428, label %entry.return_crit_edge55
    i32 1556, label %entry.return_crit_edge56
    i32 1564, label %entry.return_crit_edge57
    i32 1648, label %entry.return_crit_edge58
    i32 1652, label %entry.return_crit_edge59
    i32 1656, label %entry.return_crit_edge60
    i32 1732, label %entry.return_crit_edge61
    i32 1736, label %entry.return_crit_edge62
    i32 1744, label %entry.return_crit_edge63
    i32 1780, label %entry.return_crit_edge64
    i32 1784, label %entry.return_crit_edge65
    i32 1788, label %entry.return_crit_edge66
    i32 1992, label %entry.return_crit_edge67
    i32 1996, label %entry.return_crit_edge68
    i32 2004, label %entry.return_crit_edge69
    i32 2008, label %entry.return_crit_edge70
    i32 2012, label %entry.return_crit_edge71
    i32 2052, label %entry.return_crit_edge72
    i32 2072, label %entry.return_crit_edge73
    i32 2076, label %entry.return_crit_edge74
    i32 3488, label %entry.return_crit_edge75
    i32 3492, label %entry.return_crit_edge76
    i32 3552, label %entry.return_crit_edge77
    i32 3556, label %entry.return_crit_edge78
    i32 4120, label %entry.return_crit_edge79
    i32 4632, label %entry.return_crit_edge80
    i32 4692, label %entry.return_crit_edge81
    i32 4708, label %entry.return_crit_edge82
    i32 4756, label %entry.return_crit_edge83
    i32 4772, label %entry.return_crit_edge84
    i32 4788, label %entry.return_crit_edge85
    i32 4820, label %entry.return_crit_edge86
    i32 4836, label %entry.return_crit_edge87
    i32 4868, label %entry.return_crit_edge88
    i32 4884, label %entry.return_crit_edge89
    i32 4900, label %entry.return_crit_edge90
    i32 4916, label %entry.return_crit_edge91
    i32 4932, label %entry.return_crit_edge92
    i32 4948, label %entry.return_crit_edge93
    i32 4980, label %entry.return_crit_edge94
    i32 4996, label %entry.return_crit_edge95
    i32 5076, label %entry.return_crit_edge96
    i32 5120, label %entry.return_crit_edge97
    i32 5124, label %entry.return_crit_edge98
    i32 5128, label %entry.return_crit_edge99
    i32 5132, label %entry.return_crit_edge100
    i32 5136, label %entry.return_crit_edge101
    i32 5140, label %entry.return_crit_edge102
    i32 5144, label %entry.return_crit_edge103
    i32 5148, label %entry.return_crit_edge104
    i32 5152, label %entry.return_crit_edge105
    i32 5156, label %entry.return_crit_edge106
    i32 5160, label %entry.return_crit_edge107
    i32 5164, label %entry.return_crit_edge108
    i32 5168, label %entry.return_crit_edge109
    i32 5172, label %entry.return_crit_edge110
    i32 5176, label %entry.return_crit_edge111
    i32 5180, label %entry.return_crit_edge112
    i32 5184, label %entry.return_crit_edge113
    i32 5188, label %entry.return_crit_edge114
    i32 5200, label %entry.return_crit_edge115
    i32 5204, label %entry.return_crit_edge116
    i32 5208, label %entry.return_crit_edge117
    i32 5212, label %entry.return_crit_edge118
    i32 5216, label %entry.return_crit_edge119
    i32 5220, label %entry.return_crit_edge120
    i32 5224, label %entry.return_crit_edge121
    i32 5228, label %entry.return_crit_edge122
    i32 5232, label %entry.return_crit_edge123
    i32 5236, label %entry.return_crit_edge124
    i32 5240, label %entry.return_crit_edge125
    i32 5244, label %entry.return_crit_edge126
    i32 5256, label %entry.return_crit_edge127
    i32 5260, label %entry.return_crit_edge128
    i32 5280, label %entry.return_crit_edge129
    i32 5284, label %entry.return_crit_edge130
    i32 5296, label %entry.return_crit_edge131
    i32 5300, label %entry.return_crit_edge132
    i32 5344, label %entry.return_crit_edge133
    i32 5348, label %entry.return_crit_edge134
    i32 5360, label %entry.return_crit_edge135
    i32 5364, label %entry.return_crit_edge136
    i32 5416, label %entry.return_crit_edge137
    i32 5420, label %entry.return_crit_edge138
    i32 5440, label %entry.return_crit_edge139
    i32 5480, label %entry.return_crit_edge140
    i32 5484, label %entry.return_crit_edge141
    i32 5488, label %entry.return_crit_edge142
    i32 5492, label %entry.return_crit_edge143
    i32 5496, label %entry.return_crit_edge144
    i32 5500, label %entry.return_crit_edge145
    i32 5512, label %entry.return_crit_edge146
    i32 5516, label %entry.return_crit_edge147
    i32 5520, label %entry.return_crit_edge148
    i32 5648, label %entry.return_crit_edge149
    i32 5660, label %entry.return_crit_edge150
    i32 5668, label %entry.return_crit_edge151
    i32 5672, label %entry.return_crit_edge152
    i32 5676, label %entry.return_crit_edge153
    i32 5680, label %entry.return_crit_edge154
    i32 5684, label %entry.return_crit_edge155
    i32 5688, label %entry.return_crit_edge156
    i32 5692, label %entry.return_crit_edge157
    i32 5696, label %entry.return_crit_edge158
    i32 5752, label %entry.return_crit_edge159
    i32 5756, label %entry.return_crit_edge160
    i32 5768, label %entry.return_crit_edge161
    i32 5772, label %entry.return_crit_edge162
    i32 5776, label %entry.return_crit_edge163
    i32 5784, label %entry.return_crit_edge164
    i32 5788, label %entry.return_crit_edge165
    i32 5792, label %entry.return_crit_edge166
    i32 5796, label %entry.return_crit_edge167
    i32 5800, label %entry.return_crit_edge168
    i32 5804, label %entry.return_crit_edge169
    i32 5808, label %entry.return_crit_edge170
    i32 5812, label %entry.return_crit_edge171
    i32 5820, label %entry.return_crit_edge172
    i32 5824, label %entry.return_crit_edge173
    i32 5828, label %entry.return_crit_edge174
    i32 6668, label %entry.return_crit_edge175
    i32 6672, label %entry.return_crit_edge176
    i32 6676, label %entry.return_crit_edge177
    i32 6772, label %entry.return_crit_edge178
    i32 6776, label %entry.return_crit_edge179
    i32 6780, label %entry.return_crit_edge180
    i32 6876, label %entry.return_crit_edge181
    i32 6880, label %entry.return_crit_edge182
    i32 6884, label %entry.return_crit_edge183
    i32 6980, label %entry.return_crit_edge184
    i32 6984, label %entry.return_crit_edge185
    i32 6988, label %entry.return_crit_edge186
    i32 7184, label %entry.return_crit_edge187
    i32 7216, label %entry.return_crit_edge188
    i32 7248, label %entry.return_crit_edge189
    i32 7280, label %entry.return_crit_edge190
    i32 8896, label %entry.return_crit_edge191
    i32 8900, label %entry.return_crit_edge192
    i32 8912, label %entry.return_crit_edge193
    i32 8916, label %entry.return_crit_edge194
    i32 8920, label %entry.return_crit_edge195
    i32 11544, label %entry.return_crit_edge196
    i32 11552, label %entry.return_crit_edge197
    i32 11588, label %entry.return_crit_edge198
    i32 11600, label %entry.return_crit_edge199
    i32 11604, label %entry.return_crit_edge200
    i32 11608, label %entry.return_crit_edge201
    i32 19552, label %entry.return_crit_edge202
    i32 19556, label %entry.return_crit_edge203
    i32 19568, label %entry.return_crit_edge204
    i32 19616, label %entry.return_crit_edge205
    i32 19620, label %entry.return_crit_edge206
    i32 19632, label %entry.return_crit_edge207
    i32 19680, label %entry.return_crit_edge208
    i32 19684, label %entry.return_crit_edge209
    i32 19696, label %entry.return_crit_edge210
    i32 19744, label %entry.return_crit_edge211
    i32 19748, label %entry.return_crit_edge212
    i32 19760, label %entry.return_crit_edge213
    i32 19808, label %entry.return_crit_edge214
    i32 19812, label %entry.return_crit_edge215
    i32 19824, label %entry.return_crit_edge216
    i32 19872, label %entry.return_crit_edge217
    i32 19876, label %entry.return_crit_edge218
    i32 19888, label %entry.return_crit_edge219
    i32 19936, label %entry.return_crit_edge220
    i32 19940, label %entry.return_crit_edge221
    i32 19952, label %entry.return_crit_edge222
    i32 20000, label %entry.return_crit_edge223
    i32 20004, label %entry.return_crit_edge224
    i32 20016, label %entry.return_crit_edge225
    i32 20064, label %entry.return_crit_edge226
    i32 20068, label %entry.return_crit_edge227
    i32 20080, label %entry.return_crit_edge228
    i32 20128, label %entry.return_crit_edge229
    i32 20132, label %entry.return_crit_edge230
    i32 20144, label %entry.return_crit_edge231
    i32 20192, label %entry.return_crit_edge232
    i32 20196, label %entry.return_crit_edge233
    i32 20208, label %entry.return_crit_edge234
    i32 20256, label %entry.return_crit_edge235
    i32 20260, label %entry.return_crit_edge236
    i32 20272, label %entry.return_crit_edge237
    i32 20320, label %entry.return_crit_edge238
    i32 20324, label %entry.return_crit_edge239
    i32 20336, label %entry.return_crit_edge240
    i32 20384, label %entry.return_crit_edge241
    i32 20388, label %entry.return_crit_edge242
    i32 20400, label %entry.return_crit_edge243
    i32 20448, label %entry.return_crit_edge244
    i32 20452, label %entry.return_crit_edge245
    i32 20464, label %entry.return_crit_edge246
    i32 20512, label %entry.return_crit_edge247
    i32 20516, label %entry.return_crit_edge248
    i32 20528, label %entry.return_crit_edge249
    i32 20576, label %entry.return_crit_edge250
    i32 20580, label %entry.return_crit_edge251
    i32 20592, label %entry.return_crit_edge252
    i32 20640, label %entry.return_crit_edge253
    i32 20644, label %entry.return_crit_edge254
    i32 20656, label %entry.return_crit_edge255
    i32 20704, label %entry.return_crit_edge256
    i32 20708, label %entry.return_crit_edge257
    i32 20720, label %entry.return_crit_edge258
    i32 20768, label %entry.return_crit_edge259
    i32 20772, label %entry.return_crit_edge260
    i32 20784, label %entry.return_crit_edge261
  ]

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt8195_afe_component_probe(ptr noundef %component) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %5) #7
  %call1 = tail call i32 @mtk_afe_add_sub_dai_control(ptr noundef %component) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_pcm_new(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_pcm_pointer(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_add_sub_dai_control(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt8195_afe_deinit_clock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 584)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 584)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !112, !113, !114, !116, !117, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !834, !835, !836, !838, !840, !842, !844, !846, !848, !850}
!llvm.module.flags = !{!852, !853, !854, !855, !856, !857, !858, !859}
!llvm.ident = !{!860}

!0 = !{ptr @__initcall__kmod_snd_soc_mt8195_afe__243_3280_mt8195_afe_pcm_driver_init6, !1, !"__initcall__kmod_snd_soc_mt8195_afe__243_3280_mt8195_afe_pcm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3280, i32 1}
!2 = !{ptr @__exitcall_mt8195_afe_pcm_driver_exit, !1, !"__exitcall_mt8195_afe_pcm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description244, !4, !"__UNIQUE_ID_description244", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3282, i32 1}
!5 = !{ptr @__UNIQUE_ID_author245, !6, !"__UNIQUE_ID_author245", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3283, i32 1}
!7 = !{ptr @__UNIQUE_ID_file246, !8, !"__UNIQUE_ID_file246", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3284, i32 1}
!9 = !{ptr @__UNIQUE_ID_license247, !8, !"__UNIQUE_ID_license247", i1 false, i1 false}
!10 = !{ptr @mt8195_afe_rates, !11, !"mt8195_afe_rates", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 51, i32 37}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3272, i32 14}
!14 = !{ptr @mt8195_afe_pcm_driver, !15, !"mt8195_afe_pcm_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3270, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3067, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mt8195_afe_pcm_dev_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3094, i32 3}
!26 = !{ptr @mt8195_afe_pcm_dev_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @mt8195_afe_pcm_dev_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3098, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mt8195_afe_pcm_dev_probe.__key.10, !32, !"__key", i1 false, i1 false}
!32 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3100, i32 2}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3129, i32 3}
!36 = !{ptr @mt8195_afe_pcm_dev_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3134, i32 30}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3136, i32 3}
!42 = !{ptr @mt8195_afe_pcm_dev_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3146, i32 4}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mt8195_afe_pcm_dev_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3155, i32 3}
!51 = !{ptr @mt8195_afe_pcm_dev_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mt8195_afe_pcm_dev_probe._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3182, i32 16}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3192, i32 3}
!58 = !{ptr @mt8195_afe_pcm_dev_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3200, i32 3}
!62 = !{ptr @mt8195_afe_pcm_dev_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3217, i32 30}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3224, i32 3}
!68 = !{ptr @mt8195_afe_pcm_dev_probe._entry.34, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mt8195_afe_pcm_dev_probe._entry_ptr.36, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @irq_data_array, !71, !"irq_data_array", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2236, i32 39}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1803, i32 11}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1830, i32 11}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1857, i32 11}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1884, i32 11}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1911, i32 11}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1938, i32 11}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1965, i32 11}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1992, i32 11}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2019, i32 11}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2046, i32 11}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2073, i32 11}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2100, i32 11}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2127, i32 11}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2154, i32 11}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2181, i32 11}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2208, i32 11}
!104 = !{ptr @memif_data, !105, !"memif_data", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1801, i32 41}
!106 = !{ptr @mt8195_afe_memif_const_irqs, !107, !"mt8195_afe_memif_const_irqs", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2547, i32 18}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2866, i32 3}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @mt8195_afe_irq_handler._entry, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @mt8195_afe_irq_handler._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2874, i32 3}
!116 = !{ptr @mt8195_afe_irq_handler._entry.56, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mt8195_afe_irq_handler._entry_ptr.58, !115, !"_entry_ptr", i1 false, i1 false}
!118 = distinct !{null, !119, !"dai_register_cbs", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3015, i32 30}
!120 = !{ptr @mt8195_memif_dai_driver, !121, !"mt8195_memif_dai_driver", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 478, i32 34}
!122 = !{ptr @mt8195_afe_fe_dai_ops, !123, !"mt8195_afe_fe_dai_ops", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 456, i32 37}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 366, i32 3}
!126 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @mt8195_afe_fe_startup.__UNIQUE_ID_ddebug242, !125, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 230, i32 3}
!131 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @mt8195_afe_found_cm.__UNIQUE_ID_ddebug241, !130, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!133 = !{ptr @mt8195_afe_cm, !134, !"mt8195_afe_cm", i1 false, i1 false}
!134 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 153, i32 2}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 988, i32 2}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 989, i32 2}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 992, i32 2}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 993, i32 2}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 996, i32 2}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 997, i32 2}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 998, i32 2}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 999, i32 2}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1000, i32 2}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1001, i32 2}
!155 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1002, i32 2}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1003, i32 2}
!159 = !{ptr @.str.76, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1004, i32 2}
!161 = !{ptr @.str.77, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1005, i32 2}
!163 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1006, i32 2}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1007, i32 2}
!167 = !{ptr @.str.80, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1008, i32 2}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1009, i32 2}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1010, i32 2}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1011, i32 2}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1012, i32 2}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1013, i32 2}
!179 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1014, i32 2}
!181 = !{ptr @.str.87, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1015, i32 2}
!183 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1016, i32 2}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1017, i32 2}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1018, i32 2}
!189 = !{ptr @.str.91, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1019, i32 2}
!191 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1022, i32 2}
!193 = !{ptr @.str.93, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1023, i32 2}
!195 = !{ptr @.str.94, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1024, i32 2}
!197 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1025, i32 2}
!199 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1026, i32 2}
!201 = !{ptr @.str.97, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1027, i32 2}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1028, i32 2}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1029, i32 2}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1030, i32 2}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1031, i32 2}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1032, i32 2}
!213 = !{ptr @.str.103, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1033, i32 2}
!215 = !{ptr @.str.104, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1034, i32 2}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1035, i32 2}
!219 = !{ptr @.str.106, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1036, i32 2}
!221 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1037, i32 2}
!223 = !{ptr @.str.108, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1038, i32 2}
!225 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1039, i32 2}
!227 = !{ptr @.str.110, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1040, i32 2}
!229 = !{ptr @.str.111, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1041, i32 2}
!231 = !{ptr @.str.112, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1042, i32 2}
!233 = !{ptr @.str.113, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1043, i32 2}
!235 = !{ptr @.str.114, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1044, i32 2}
!237 = !{ptr @.str.115, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1045, i32 2}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1048, i32 2}
!241 = !{ptr @.str.117, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1049, i32 2}
!243 = !{ptr @.str.118, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1051, i32 2}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1055, i32 2}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1057, i32 2}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1059, i32 2}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1061, i32 2}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1063, i32 2}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1065, i32 2}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1067, i32 2}
!259 = !{ptr @.str.126, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1069, i32 2}
!261 = !{ptr @.str.127, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1071, i32 2}
!263 = !{ptr @.str.128, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1073, i32 2}
!265 = !{ptr @.str.129, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1075, i32 2}
!267 = !{ptr @.str.130, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1077, i32 2}
!269 = !{ptr @.str.131, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1079, i32 2}
!271 = !{ptr @.str.132, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1081, i32 2}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1083, i32 2}
!275 = !{ptr @.str.134, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1085, i32 2}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1087, i32 2}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1089, i32 2}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1091, i32 2}
!283 = !{ptr @.str.138, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1093, i32 2}
!285 = !{ptr @.str.139, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1095, i32 2}
!287 = !{ptr @.str.140, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1097, i32 2}
!289 = !{ptr @.str.141, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1099, i32 2}
!291 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1101, i32 2}
!293 = !{ptr @.str.143, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1103, i32 2}
!295 = !{ptr @.str.144, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1105, i32 2}
!297 = !{ptr @.str.145, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1107, i32 2}
!299 = !{ptr @.str.146, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1109, i32 2}
!301 = !{ptr @.str.147, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1111, i32 2}
!303 = !{ptr @.str.148, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1113, i32 2}
!305 = !{ptr @.str.149, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1115, i32 2}
!307 = !{ptr @.str.150, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1117, i32 2}
!309 = !{ptr @.str.151, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1121, i32 2}
!311 = !{ptr @.str.152, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1123, i32 2}
!313 = !{ptr @.str.153, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1127, i32 2}
!315 = !{ptr @.str.154, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1129, i32 2}
!317 = !{ptr @.str.155, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1133, i32 2}
!319 = !{ptr @.str.156, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1135, i32 2}
!321 = !{ptr @.str.157, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1137, i32 2}
!323 = !{ptr @.str.158, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1139, i32 2}
!325 = !{ptr @.str.159, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1143, i32 2}
!327 = !{ptr @.str.160, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1145, i32 2}
!329 = !{ptr @.str.161, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1147, i32 2}
!331 = !{ptr @.str.162, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1149, i32 2}
!333 = !{ptr @.str.163, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1151, i32 2}
!335 = !{ptr @.str.164, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1153, i32 2}
!337 = !{ptr @.str.165, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1155, i32 2}
!339 = !{ptr @.str.166, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1157, i32 2}
!341 = !{ptr @mt8195_memif_widgets, !342, !"mt8195_memif_widgets", i1 false, i1 false}
!342 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 986, i32 41}
!343 = !{ptr @.str.168, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 984, i32 2}
!345 = !{ptr @dl8_dl11_data_sel_mux, !346, !"dl8_dl11_data_sel_mux", i1 false, i1 false}
!346 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 983, i32 38}
!347 = !{ptr @dl8_dl11_data_sel_mux_enum, !348, !"dl8_dl11_data_sel_mux_enum", i1 false, i1 false}
!348 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 980, i32 8}
!349 = !{ptr @.str.169, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 977, i32 2}
!351 = !{ptr @.str.170, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 977, i32 9}
!353 = !{ptr @dl8_dl11_data_sel_mux_text, !354, !"dl8_dl11_data_sel_mux_text", i1 false, i1 false}
!354 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 976, i32 27}
!355 = !{ptr @.str.171, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 675, i32 2}
!357 = !{ptr @.str.172, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 676, i32 2}
!359 = !{ptr @.str.174, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 677, i32 2}
!361 = !{ptr @.str.176, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 678, i32 2}
!363 = !{ptr @.str.178, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 679, i32 2}
!365 = !{ptr @.str.180, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 680, i32 2}
!367 = !{ptr @.str.182, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 681, i32 2}
!369 = !{ptr @o002_mix, !370, !"o002_mix", i1 false, i1 false}
!370 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 674, i32 38}
!371 = !{ptr @.str.184, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 685, i32 2}
!373 = !{ptr @.str.186, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 686, i32 2}
!375 = !{ptr @.str.188, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 687, i32 2}
!377 = !{ptr @.str.190, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 688, i32 2}
!379 = !{ptr @.str.192, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 689, i32 2}
!381 = !{ptr @.str.194, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 690, i32 2}
!383 = !{ptr @.str.196, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 691, i32 2}
!385 = !{ptr @o003_mix, !386, !"o003_mix", i1 false, i1 false}
!386 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 684, i32 38}
!387 = !{ptr @.str.199, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 696, i32 2}
!389 = !{ptr @.str.201, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 697, i32 2}
!391 = !{ptr @.str.203, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 698, i32 2}
!393 = !{ptr @.str.205, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 699, i32 2}
!395 = !{ptr @o004_mix, !396, !"o004_mix", i1 false, i1 false}
!396 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 694, i32 38}
!397 = !{ptr @.str.208, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 704, i32 2}
!399 = !{ptr @.str.210, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 705, i32 2}
!401 = !{ptr @.str.212, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 706, i32 2}
!403 = !{ptr @.str.214, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 707, i32 2}
!405 = !{ptr @o005_mix, !406, !"o005_mix", i1 false, i1 false}
!406 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 702, i32 38}
!407 = !{ptr @.str.217, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 712, i32 2}
!409 = !{ptr @.str.219, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 713, i32 2}
!411 = !{ptr @.str.221, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 714, i32 2}
!413 = !{ptr @o006_mix, !414, !"o006_mix", i1 false, i1 false}
!414 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 710, i32 38}
!415 = !{ptr @.str.224, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 719, i32 2}
!417 = !{ptr @.str.226, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 720, i32 2}
!419 = !{ptr @.str.228, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 721, i32 2}
!421 = !{ptr @o007_mix, !422, !"o007_mix", i1 false, i1 false}
!422 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 717, i32 38}
!423 = !{ptr @.str.230, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 725, i32 2}
!425 = !{ptr @.str.232, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 726, i32 2}
!427 = !{ptr @.str.234, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 727, i32 2}
!429 = !{ptr @o008_mix, !430, !"o008_mix", i1 false, i1 false}
!430 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 724, i32 38}
!431 = !{ptr @.str.236, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 731, i32 2}
!433 = !{ptr @.str.238, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 732, i32 2}
!435 = !{ptr @.str.240, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 733, i32 2}
!437 = !{ptr @o009_mix, !438, !"o009_mix", i1 false, i1 false}
!438 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 730, i32 38}
!439 = !{ptr @.str.243, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 738, i32 2}
!441 = !{ptr @.str.245, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 739, i32 2}
!443 = !{ptr @o010_mix, !444, !"o010_mix", i1 false, i1 false}
!444 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 736, i32 38}
!445 = !{ptr @.str.249, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 745, i32 2}
!447 = !{ptr @.str.251, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 746, i32 2}
!449 = !{ptr @o011_mix, !450, !"o011_mix", i1 false, i1 false}
!450 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 743, i32 38}
!451 = !{ptr @.str.255, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 752, i32 2}
!453 = !{ptr @.str.257, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 753, i32 2}
!455 = !{ptr @o012_mix, !456, !"o012_mix", i1 false, i1 false}
!456 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 750, i32 38}
!457 = !{ptr @.str.261, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 759, i32 2}
!459 = !{ptr @.str.263, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 760, i32 2}
!461 = !{ptr @o013_mix, !462, !"o013_mix", i1 false, i1 false}
!462 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 757, i32 38}
!463 = !{ptr @.str.267, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 766, i32 2}
!465 = !{ptr @.str.269, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 767, i32 2}
!467 = !{ptr @o014_mix, !468, !"o014_mix", i1 false, i1 false}
!468 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 764, i32 38}
!469 = !{ptr @.str.273, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 773, i32 2}
!471 = !{ptr @.str.275, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 774, i32 2}
!473 = !{ptr @o015_mix, !474, !"o015_mix", i1 false, i1 false}
!474 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 771, i32 38}
!475 = !{ptr @.str.279, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 780, i32 2}
!477 = !{ptr @.str.281, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 781, i32 2}
!479 = !{ptr @o016_mix, !480, !"o016_mix", i1 false, i1 false}
!480 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 778, i32 38}
!481 = !{ptr @.str.285, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 787, i32 2}
!483 = !{ptr @.str.287, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 788, i32 2}
!485 = !{ptr @o017_mix, !486, !"o017_mix", i1 false, i1 false}
!486 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 785, i32 38}
!487 = !{ptr @.str.290, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 793, i32 2}
!489 = !{ptr @.str.292, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 794, i32 2}
!491 = !{ptr @o018_mix, !492, !"o018_mix", i1 false, i1 false}
!492 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 792, i32 38}
!493 = !{ptr @.str.294, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 798, i32 2}
!495 = !{ptr @.str.296, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 799, i32 2}
!497 = !{ptr @o019_mix, !498, !"o019_mix", i1 false, i1 false}
!498 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 797, i32 38}
!499 = !{ptr @.str.298, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 803, i32 2}
!501 = !{ptr @.str.300, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 804, i32 2}
!503 = !{ptr @o020_mix, !504, !"o020_mix", i1 false, i1 false}
!504 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 802, i32 38}
!505 = !{ptr @.str.302, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 808, i32 2}
!507 = !{ptr @.str.304, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 809, i32 2}
!509 = !{ptr @o021_mix, !510, !"o021_mix", i1 false, i1 false}
!510 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 807, i32 38}
!511 = !{ptr @.str.306, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 813, i32 2}
!513 = !{ptr @.str.308, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 814, i32 2}
!515 = !{ptr @o022_mix, !516, !"o022_mix", i1 false, i1 false}
!516 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 812, i32 38}
!517 = !{ptr @.str.310, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 818, i32 2}
!519 = !{ptr @.str.312, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 819, i32 2}
!521 = !{ptr @o023_mix, !522, !"o023_mix", i1 false, i1 false}
!522 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 817, i32 38}
!523 = !{ptr @.str.314, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 823, i32 2}
!525 = !{ptr @.str.316, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 824, i32 2}
!527 = !{ptr @o024_mix, !528, !"o024_mix", i1 false, i1 false}
!528 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 822, i32 38}
!529 = !{ptr @.str.318, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 828, i32 2}
!531 = !{ptr @.str.320, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 829, i32 2}
!533 = !{ptr @o025_mix, !534, !"o025_mix", i1 false, i1 false}
!534 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 827, i32 38}
!535 = !{ptr @.str.323, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 834, i32 2}
!537 = !{ptr @o026_mix, !538, !"o026_mix", i1 false, i1 false}
!538 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 832, i32 38}
!539 = !{ptr @.str.326, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 839, i32 2}
!541 = !{ptr @o027_mix, !542, !"o027_mix", i1 false, i1 false}
!542 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 837, i32 38}
!543 = !{ptr @.str.329, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 844, i32 2}
!545 = !{ptr @o028_mix, !546, !"o028_mix", i1 false, i1 false}
!546 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 842, i32 38}
!547 = !{ptr @.str.332, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 849, i32 2}
!549 = !{ptr @o029_mix, !550, !"o029_mix", i1 false, i1 false}
!550 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 847, i32 38}
!551 = !{ptr @.str.335, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 854, i32 2}
!553 = !{ptr @o030_mix, !554, !"o030_mix", i1 false, i1 false}
!554 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 852, i32 38}
!555 = !{ptr @.str.338, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 859, i32 2}
!557 = !{ptr @o031_mix, !558, !"o031_mix", i1 false, i1 false}
!558 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 857, i32 38}
!559 = !{ptr @.str.341, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 864, i32 2}
!561 = !{ptr @o032_mix, !562, !"o032_mix", i1 false, i1 false}
!562 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 862, i32 38}
!563 = !{ptr @.str.344, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 869, i32 2}
!565 = !{ptr @o033_mix, !566, !"o033_mix", i1 false, i1 false}
!566 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 867, i32 38}
!567 = !{ptr @.str.347, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 874, i32 2}
!569 = !{ptr @o034_mix, !570, !"o034_mix", i1 false, i1 false}
!570 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 872, i32 38}
!571 = !{ptr @.str.356, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 885, i32 2}
!573 = !{ptr @.str.362, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 890, i32 2}
!575 = !{ptr @.str.364, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 891, i32 2}
!577 = !{ptr @o035_mix, !578, !"o035_mix", i1 false, i1 false}
!578 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 883, i32 38}
!579 = !{ptr @o036_mix, !580, !"o036_mix", i1 false, i1 false}
!580 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 898, i32 38}
!581 = !{ptr @o037_mix, !582, !"o037_mix", i1 false, i1 false}
!582 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 906, i32 38}
!583 = !{ptr @o038_mix, !584, !"o038_mix", i1 false, i1 false}
!584 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 914, i32 38}
!585 = !{ptr @o039_mix, !586, !"o039_mix", i1 false, i1 false}
!586 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 918, i32 38}
!587 = !{ptr @o182_mix, !588, !"o182_mix", i1 false, i1 false}
!588 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 968, i32 38}
!589 = !{ptr @o183_mix, !590, !"o183_mix", i1 false, i1 false}
!590 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 972, i32 38}
!591 = !{ptr @o040_mix, !592, !"o040_mix", i1 false, i1 false}
!592 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 922, i32 38}
!593 = !{ptr @o041_mix, !594, !"o041_mix", i1 false, i1 false}
!594 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 929, i32 38}
!595 = !{ptr @o042_mix, !596, !"o042_mix", i1 false, i1 false}
!596 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 936, i32 38}
!597 = !{ptr @o043_mix, !598, !"o043_mix", i1 false, i1 false}
!598 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 942, i32 38}
!599 = !{ptr @o044_mix, !600, !"o044_mix", i1 false, i1 false}
!600 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 948, i32 38}
!601 = !{ptr @o045_mix, !602, !"o045_mix", i1 false, i1 false}
!602 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 953, i32 38}
!603 = !{ptr @o046_mix, !604, !"o046_mix", i1 false, i1 false}
!604 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 958, i32 38}
!605 = !{ptr @o047_mix, !606, !"o047_mix", i1 false, i1 false}
!606 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 963, i32 38}
!607 = !{ptr @.str.406, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1342, i32 26}
!609 = !{ptr @.str.407, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1343, i32 26}
!611 = !{ptr @.str.408, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1344, i32 26}
!613 = !{ptr @.str.409, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1345, i32 26}
!615 = !{ptr @.str.410, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1350, i32 26}
!617 = !{ptr @.str.411, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1351, i32 26}
!619 = !{ptr @.str.412, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1361, i32 26}
!621 = !{ptr @.str.413, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1362, i32 26}
!623 = !{ptr @.str.414, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1382, i32 26}
!625 = !{ptr @.str.415, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1383, i32 26}
!627 = !{ptr @.str.416, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1384, i32 26}
!629 = !{ptr @.str.417, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1385, i32 26}
!631 = !{ptr @.str.418, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1386, i32 26}
!633 = !{ptr @.str.419, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1387, i32 26}
!635 = !{ptr @.str.420, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1400, i32 26}
!637 = !{ptr @.str.421, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1401, i32 26}
!639 = !{ptr @.str.422, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1402, i32 26}
!641 = !{ptr @.str.423, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1403, i32 26}
!643 = !{ptr @.str.424, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1404, i32 26}
!645 = !{ptr @.str.425, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1405, i32 26}
!647 = !{ptr @.str.426, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1415, i32 26}
!649 = !{ptr @.str.427, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1416, i32 26}
!651 = !{ptr @.str.428, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1417, i32 26}
!653 = !{ptr @.str.429, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1418, i32 26}
!655 = !{ptr @.str.430, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1419, i32 26}
!657 = !{ptr @.str.431, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1420, i32 26}
!659 = !{ptr @.str.432, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1421, i32 26}
!661 = !{ptr @.str.433, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1422, i32 26}
!663 = !{ptr @.str.434, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1423, i32 26}
!665 = !{ptr @.str.435, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1424, i32 26}
!667 = !{ptr @.str.436, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1425, i32 26}
!669 = !{ptr @.str.437, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1426, i32 26}
!671 = !{ptr @.str.438, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1427, i32 26}
!673 = !{ptr @.str.439, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1428, i32 26}
!675 = !{ptr @.str.440, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1429, i32 26}
!677 = !{ptr @.str.441, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1430, i32 26}
!679 = !{ptr @.str.442, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1434, i32 26}
!681 = !{ptr @.str.443, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1435, i32 26}
!683 = !{ptr @mt8195_memif_routes, !684, !"mt8195_memif_routes", i1 false, i1 false}
!684 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1161, i32 40}
!685 = !{ptr @.str.444, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1635, i32 2}
!687 = !{ptr @.str.445, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1640, i32 2}
!689 = !{ptr @.str.446, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1645, i32 2}
!691 = !{ptr @.str.447, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1650, i32 2}
!693 = !{ptr @.str.448, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1655, i32 2}
!695 = !{ptr @.str.449, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1660, i32 2}
!697 = !{ptr @.str.450, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1665, i32 2}
!699 = !{ptr @.str.451, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1670, i32 2}
!701 = !{ptr @.str.452, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1675, i32 2}
!703 = !{ptr @.str.453, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1680, i32 2}
!705 = !{ptr @.str.454, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1685, i32 2}
!707 = !{ptr @.str.455, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1690, i32 2}
!709 = !{ptr @.str.456, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1695, i32 2}
!711 = !{ptr @.str.457, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1700, i32 2}
!713 = !{ptr @.str.458, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1705, i32 2}
!715 = !{ptr @.str.459, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1710, i32 2}
!717 = !{ptr @.str.460, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1715, i32 2}
!719 = !{ptr @.str.461, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1720, i32 2}
!721 = !{ptr @.str.462, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1725, i32 2}
!723 = !{ptr @.str.463, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1730, i32 2}
!725 = !{ptr @.str.464, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1735, i32 2}
!727 = !{ptr @.str.465, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1740, i32 2}
!729 = !{ptr @.str.466, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1745, i32 2}
!731 = !{ptr @.str.467, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1750, i32 2}
!733 = !{ptr @.str.468, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1755, i32 2}
!735 = !{ptr @.str.469, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1760, i32 2}
!737 = !{ptr @.str.470, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1765, i32 2}
!739 = !{ptr @.str.471, !740, !"<string literal>", i1 false, i1 false}
!740 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1770, i32 2}
!741 = !{ptr @.str.472, !742, !"<string literal>", i1 false, i1 false}
!742 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1775, i32 2}
!743 = !{ptr @.str.473, !744, !"<string literal>", i1 false, i1 false}
!744 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1780, i32 2}
!745 = !{ptr @.str.474, !746, !"<string literal>", i1 false, i1 false}
!746 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1785, i32 2}
!747 = !{ptr @.str.475, !748, !"<string literal>", i1 false, i1 false}
!748 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1790, i32 2}
!749 = !{ptr @mt8195_memif_controls, !750, !"mt8195_memif_controls", i1 false, i1 false}
!750 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1634, i32 38}
!751 = !{ptr @dl2_1x_en_sel_enum, !752, !"dl2_1x_en_sel_enum", i1 false, i1 false}
!752 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1504, i32 8}
!753 = !{ptr @.str.476, !754, !"<string literal>", i1 false, i1 false}
!754 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1452, i32 2}
!755 = !{ptr @.str.477, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1452, i32 17}
!757 = !{ptr @.str.478, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1452, i32 26}
!759 = !{ptr @mt8195_afe_1x_en_sel_text, !760, !"mt8195_afe_1x_en_sel_text", i1 false, i1 false}
!760 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1451, i32 27}
!761 = !{ptr @mt8195_afe_1x_en_sel_values, !762, !"mt8195_afe_1x_en_sel_values", i1 false, i1 false}
!762 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1455, i32 27}
!763 = !{ptr @dl3_1x_en_sel_enum, !764, !"dl3_1x_en_sel_enum", i1 false, i1 false}
!764 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1508, i32 8}
!765 = !{ptr @dl6_1x_en_sel_enum, !766, !"dl6_1x_en_sel_enum", i1 false, i1 false}
!766 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1512, i32 8}
!767 = !{ptr @dl7_1x_en_sel_enum, !768, !"dl7_1x_en_sel_enum", i1 false, i1 false}
!768 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1516, i32 8}
!769 = !{ptr @dl8_1x_en_sel_enum, !770, !"dl8_1x_en_sel_enum", i1 false, i1 false}
!770 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1520, i32 8}
!771 = !{ptr @dl10_1x_en_sel_enum, !772, !"dl10_1x_en_sel_enum", i1 false, i1 false}
!772 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1524, i32 8}
!773 = !{ptr @dl11_1x_en_sel_enum, !774, !"dl11_1x_en_sel_enum", i1 false, i1 false}
!774 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1528, i32 8}
!775 = !{ptr @ul1_1x_en_sel_enum, !776, !"ul1_1x_en_sel_enum", i1 false, i1 false}
!776 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1532, i32 8}
!777 = !{ptr @ul2_1x_en_sel_enum, !778, !"ul2_1x_en_sel_enum", i1 false, i1 false}
!778 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1536, i32 8}
!779 = !{ptr @ul3_1x_en_sel_enum, !780, !"ul3_1x_en_sel_enum", i1 false, i1 false}
!780 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1540, i32 8}
!781 = !{ptr @ul4_1x_en_sel_enum, !782, !"ul4_1x_en_sel_enum", i1 false, i1 false}
!782 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1544, i32 8}
!783 = !{ptr @ul5_1x_en_sel_enum, !784, !"ul5_1x_en_sel_enum", i1 false, i1 false}
!784 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1548, i32 8}
!785 = !{ptr @ul6_1x_en_sel_enum, !786, !"ul6_1x_en_sel_enum", i1 false, i1 false}
!786 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1552, i32 8}
!787 = !{ptr @ul8_1x_en_sel_enum, !788, !"ul8_1x_en_sel_enum", i1 false, i1 false}
!788 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1556, i32 8}
!789 = !{ptr @ul9_1x_en_sel_enum, !790, !"ul9_1x_en_sel_enum", i1 false, i1 false}
!790 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1560, i32 8}
!791 = !{ptr @ul10_1x_en_sel_enum, !792, !"ul10_1x_en_sel_enum", i1 false, i1 false}
!792 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1564, i32 8}
!793 = !{ptr @asys_irq1_1x_en_sel_enum, !794, !"asys_irq1_1x_en_sel_enum", i1 false, i1 false}
!794 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1569, i32 8}
!795 = !{ptr @asys_irq2_1x_en_sel_enum, !796, !"asys_irq2_1x_en_sel_enum", i1 false, i1 false}
!796 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1573, i32 8}
!797 = !{ptr @asys_irq3_1x_en_sel_enum, !798, !"asys_irq3_1x_en_sel_enum", i1 false, i1 false}
!798 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1577, i32 8}
!799 = !{ptr @asys_irq4_1x_en_sel_enum, !800, !"asys_irq4_1x_en_sel_enum", i1 false, i1 false}
!800 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1581, i32 8}
!801 = !{ptr @asys_irq5_1x_en_sel_enum, !802, !"asys_irq5_1x_en_sel_enum", i1 false, i1 false}
!802 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1585, i32 8}
!803 = !{ptr @asys_irq6_1x_en_sel_enum, !804, !"asys_irq6_1x_en_sel_enum", i1 false, i1 false}
!804 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1589, i32 8}
!805 = !{ptr @asys_irq7_1x_en_sel_enum, !806, !"asys_irq7_1x_en_sel_enum", i1 false, i1 false}
!806 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1593, i32 8}
!807 = !{ptr @asys_irq8_1x_en_sel_enum, !808, !"asys_irq8_1x_en_sel_enum", i1 false, i1 false}
!808 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1597, i32 8}
!809 = !{ptr @asys_irq9_1x_en_sel_enum, !810, !"asys_irq9_1x_en_sel_enum", i1 false, i1 false}
!810 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1601, i32 8}
!811 = !{ptr @asys_irq10_1x_en_sel_enum, !812, !"asys_irq10_1x_en_sel_enum", i1 false, i1 false}
!812 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1605, i32 8}
!813 = !{ptr @asys_irq11_1x_en_sel_enum, !814, !"asys_irq11_1x_en_sel_enum", i1 false, i1 false}
!814 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1609, i32 8}
!815 = !{ptr @asys_irq12_1x_en_sel_enum, !816, !"asys_irq12_1x_en_sel_enum", i1 false, i1 false}
!816 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1613, i32 8}
!817 = !{ptr @asys_irq13_1x_en_sel_enum, !818, !"asys_irq13_1x_en_sel_enum", i1 false, i1 false}
!818 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1617, i32 8}
!819 = !{ptr @asys_irq14_1x_en_sel_enum, !820, !"asys_irq14_1x_en_sel_enum", i1 false, i1 false}
!820 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1621, i32 8}
!821 = !{ptr @asys_irq15_1x_en_sel_enum, !822, !"asys_irq15_1x_en_sel_enum", i1 false, i1 false}
!822 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1625, i32 8}
!823 = !{ptr @asys_irq16_1x_en_sel_enum, !824, !"asys_irq16_1x_en_sel_enum", i1 false, i1 false}
!824 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1629, i32 8}
!825 = !{ptr @mt8195_afe_hardware, !826, !"mt8195_afe_hardware", i1 false, i1 false}
!826 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 32, i32 38}
!827 = !{ptr @.str.479, !828, !"<string literal>", i1 false, i1 false}
!828 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 88, i32 31}
!829 = !{ptr @.str.480, !830, !"<string literal>", i1 false, i1 false}
!830 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3049, i32 13}
!831 = !{ptr @.str.481, !832, !"<string literal>", i1 false, i1 false}
!832 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3051, i32 3}
!833 = !{ptr @.str.482, !832, !"<string literal>", i1 false, i1 false}
!834 = !{ptr @mt8195_afe_parse_of._entry, !832, !"_entry", i1 false, i1 false}
!835 = !{ptr @mt8195_afe_parse_of._entry_ptr, !832, !"_entry_ptr", i1 false, i1 false}
!836 = !{ptr @mt8195_afe_regmap_config, !837, !"mt8195_afe_regmap_config", i1 false, i1 false}
!837 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2839, i32 35}
!838 = !{ptr @mt8195_cg_patch, !839, !"mt8195_cg_patch", i1 false, i1 false}
!839 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3030, i32 34}
!840 = !{ptr @mt8195_afe_component, !841, !"mt8195_afe_component", i1 false, i1 false}
!841 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 2965, i32 46}
!842 = !{ptr @.str.483, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1798, i32 10}
!844 = !{ptr @mt8195_afe_pcm_dai_component, !845, !"mt8195_afe_pcm_dai_component", i1 false, i1 false}
!845 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 1797, i32 46}
!846 = !{ptr @mt8195_afe_reg_defaults, !847, !"mt8195_afe_reg_defaults", i1 false, i1 false}
!847 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3022, i32 34}
!848 = !{ptr @mt8195_afe_pcm_dt_match, !849, !"mt8195_afe_pcm_dt_match", i1 false, i1 false}
!849 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3259, i32 34}
!850 = !{ptr @mt8195_afe_pm_ops, !851, !"mt8195_afe_pm_ops", i1 false, i1 false}
!851 = !{!"../sound/soc/mediatek/mt8195/mt8195-afe-pcm.c", i32 3265, i32 32}
!852 = !{i32 1, !"wchar_size", i32 2}
!853 = !{i32 1, !"min_enum_size", i32 4}
!854 = !{i32 8, !"branch-target-enforcement", i32 0}
!855 = !{i32 8, !"sign-return-address", i32 0}
!856 = !{i32 8, !"sign-return-address-all", i32 0}
!857 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!858 = !{i32 7, !"uwtable", i32 1}
!859 = !{i32 7, !"frame-pointer", i32 2}
!860 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!861 = !{i64 2148849823, i64 2148849828, i64 2148849841, i64 2148849885, i64 2148849919, i64 2148849940}
