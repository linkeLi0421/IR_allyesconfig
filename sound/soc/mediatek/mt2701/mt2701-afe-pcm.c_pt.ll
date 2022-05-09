; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt2701/mt2701-afe-pcm.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c"
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
%struct.mtk_base_memif_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_base_irq_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mt2701_i2s_data = type { i32, i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.mt2701_afe_rate = type { i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt2701_soc_variants = type { i8, i32 }
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
%struct.mt2701_afe_private = type { ptr, [9 x ptr], ptr, [2 x i8], ptr }
%struct.mtk_base_afe_memif = type { i32, i32, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.mtk_base_afe_irq = type { ptr, i32 }
%struct.mt2701_i2s_path = type { i32, [2 x i32], [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_mt2701_afe__239_1483_mt2701_afe_pcm_driver_init6 = internal global ptr @mt2701_afe_pcm_driver_init, section ".initcall6.init", align 4
@mt2701_afe_pcm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt2701_afe_pcm_dev_probe, ptr @mt2701_afe_pcm_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt2701_afe_pcm_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_afe_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt2701_afe_pcm_driver_exit = internal global ptr @mt2701_afe_pcm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [78 x i8] c"snd_soc_mt2701_afe.description=Mediatek ALSA SoC AFE platform driver for 2701\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [67 x i8] c"snd_soc_mt2701_afe.author=Garlic Tseng <garlic.tseng@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [69 x i8] c"snd_soc_mt2701_afe.file=sound/soc/mediatek/mt2701/snd-soc-mt2701-afe\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [34 x i8] c"snd_soc_mt2701_afe.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt2701-audio\00", [19 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_soc_v1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_soc_v2 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mt2701_afe_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_afe_runtime_suspend, ptr @mt2701_afe_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"asys\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asys-isr\00", [23 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1349, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not request_irq for asys-isr\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt2701_afe_pcm_dev_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt2701/mt2701-afe-pcm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry_ptr = internal global ptr @mt2701_afe_pcm_dev_probe._entry, section ".printk_index", align 4
@mt2701_afe_pcm_dev_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1355, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not get regmap from parent\0A\00", [62 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry_ptr.10 = internal global ptr @mt2701_afe_pcm_dev_probe._entry.8, section ".printk_index", align 4
@mt2701_afe_pcm_dev_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&afe->irq_alloc_lock\00", [43 x i8] zeroinitializer }, align 32
@memif_data_array = internal constant { [13 x %struct.mtk_base_memif_data], [512 x i8] } { [13 x %struct.mtk_base_memif_data] [%struct.mtk_base_memif_data { i32 0, ptr @.str.22, i32 4672, i32 4676, i32 0, i32 0, i32 0, i32 0, i32 4612, i32 0, i32 31, i32 4620, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 1, i32 4668, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 1, ptr @.str.23, i32 4688, i32 4692, i32 0, i32 0, i32 0, i32 0, i32 4612, i32 5, i32 31, i32 4620, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 2, i32 4668, i32 2, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 2, ptr @.str.24, i32 4704, i32 4708, i32 0, i32 0, i32 0, i32 0, i32 4612, i32 10, i32 31, i32 4620, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 3, i32 4668, i32 4, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 3, ptr @.str.25, i32 4720, i32 4724, i32 0, i32 0, i32 0, i32 0, i32 4612, i32 15, i32 31, i32 4620, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 4, i32 4668, i32 6, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 4, ptr @.str.26, i32 4736, i32 4740, i32 0, i32 0, i32 0, i32 0, i32 4612, i32 20, i32 31, i32 4620, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 5, i32 4668, i32 8, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 5, ptr @.str.27, i32 4768, i32 4772, i32 0, i32 0, i32 0, i32 0, i32 4612, i32 0, i32 31, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 7, i32 4664, i32 28, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 6, ptr @.str.28, i32 4864, i32 4876, i32 0, i32 0, i32 0, i32 0, i32 4616, i32 0, i32 31, i32 4624, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 10, i32 4636, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 7, ptr @.str.29, i32 4880, i32 4892, i32 0, i32 0, i32 0, i32 0, i32 4616, i32 5, i32 31, i32 4624, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 11, i32 4636, i32 2, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 8, ptr @.str.30, i32 4896, i32 4908, i32 0, i32 0, i32 0, i32 0, i32 4616, i32 10, i32 31, i32 4624, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 12, i32 4668, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 9, ptr @.str.31, i32 4912, i32 4924, i32 0, i32 0, i32 0, i32 0, i32 4616, i32 15, i32 31, i32 4624, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 13, i32 4668, i32 6, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 10, ptr @.str.32, i32 4928, i32 4940, i32 0, i32 0, i32 0, i32 0, i32 4616, i32 20, i32 31, i32 4624, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 14, i32 4668, i32 8, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 11, ptr @.str.33, i32 4784, i32 4788, i32 0, i32 0, i32 0, i32 0, i32 4620, i32 10, i32 31, i32 4620, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 8, i32 4668, i32 14, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.mtk_base_memif_data { i32 12, ptr @.str.34, i32 4976, i32 4988, i32 0, i32 0, i32 0, i32 0, i32 4616, i32 30, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4608, i32 17, i32 4636, i32 20, i32 0, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 20, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [512 x i8] zeroinitializer }, align 32
@irq_data = internal constant { [3 x %struct.mtk_base_irq_data], [48 x i8] } { [3 x %struct.mtk_base_irq_data] [%struct.mtk_base_irq_data { i32 0, i32 1920, i32 0, i32 16777215, i32 1920, i32 24, i32 31, i32 1920, i32 31, i32 1984, i32 0, i32 0 }, %struct.mtk_base_irq_data { i32 1, i32 1924, i32 0, i32 16777215, i32 1924, i32 24, i32 31, i32 1924, i32 31, i32 1984, i32 1, i32 0 }, %struct.mtk_base_irq_data { i32 2, i32 1928, i32 0, i32 16777215, i32 1928, i32 24, i32 31, i32 1928, i32 31, i32 1984, i32 2, i32 0 }], [48 x i8] zeroinitializer }, align 32
@mt2701_i2s_data = internal constant { [4 x [2 x %struct.mt2701_i2s_data]], [32 x i8] } { [4 x [2 x %struct.mt2701_i2s_data]] [[2 x %struct.mt2701_i2s_data] [%struct.mt2701_i2s_data { i32 1564, i32 0, i32 31 }, %struct.mt2701_i2s_data { i32 1540, i32 0, i32 31 }], [2 x %struct.mt2701_i2s_data] [%struct.mt2701_i2s_data { i32 1568, i32 5, i32 31 }, %struct.mt2701_i2s_data { i32 1544, i32 5, i32 31 }], [2 x %struct.mt2701_i2s_data] [%struct.mt2701_i2s_data { i32 1572, i32 10, i32 31 }, %struct.mt2701_i2s_data { i32 1548, i32 10, i32 31 }], [2 x %struct.mt2701_i2s_data] [%struct.mt2701_i2s_data { i32 1576, i32 15, i32 31 }, %struct.mt2701_i2s_data { i32 1552, i32 15, i32 31 }]], [32 x i8] zeroinitializer }, align 32
@mt2701_afe_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 262403, i64 1092, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1048576, i32 1024, i32 262144, i32 4, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@mt2701_afe_backup_list = internal constant { [18 x i32], [56 x i8] } { [18 x i32] [i32 0, i32 16, i32 20, i32 1536, i32 1728, i32 1732, i32 1736, i32 1740, i32 1788, i32 1792, i32 1796, i32 1800, i32 1804, i32 1808, i32 1812, i32 1816, i32 4608, i32 4664], [56 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1402, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init clock error\0A\00", [46 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry_ptr.14 = internal global ptr @mt2701_afe_pcm_dev_probe._entry.12, section ".printk_index", align 4
@mtk_afe_pcm_platform = external dso_local constant %struct.snd_soc_component_driver, align 4
@mt2701_afe_pcm_dev_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1419, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"err_platform\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry_ptr.18 = internal global ptr @mt2701_afe_pcm_dev_probe._entry.15, section ".printk_index", align 4
@mt2701_afe_pcm_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.35, ptr null, i32 0, ptr @mt2701_afe_pcm_widgets, i32 32, ptr @mt2701_afe_pcm_routes, i32 49, ptr @mt2701_afe_pcm_probe, ptr null, ptr @mtk_afe_suspend, ptr @mtk_afe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dais = internal global { [11 x %struct.snd_soc_dai_driver], [456 x i8] } { [11 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.114, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_single_memif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.22, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.115, i32 5, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_dlm_memif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.27, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.116, i32 6, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_single_memif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.28, i64 1092, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.117, i32 7, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_single_memif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.29, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.118, i32 11, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_single_memif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.33, i64 4, i32 10, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.119, i32 12, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_single_memif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.34, i64 4, i32 10, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.120, i32 13, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_afe_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.111, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.106, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.121, i32 14, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_afe_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.112, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.107, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.122, i32 15, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_afe_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.123, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.108, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.124, i32 16, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_afe_i2s_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.125, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.109, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.126, i32 19, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_btmrg_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.113, i64 4, i32 10, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.110, i64 4, i32 10, i32 0, i32 0, i32 1, i32 1, i32 0 }, i8 -128, i32 0, i32 0 }], [456 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1428, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"err_dai_component\0A\00", [45 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_dev_probe._entry_ptr.21 = internal global ptr @mt2701_afe_pcm_dev_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL1\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL2\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL3\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL4\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DL5\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DLM\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL1\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL2\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL3\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL4\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UL5\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DLBT\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ULBT\00", [27 x i8] zeroinitializer }, align 32
@mt2701_afe_i2s_rates = internal constant { [18 x %struct.mt2701_afe_rate], [48 x i8] } { [18 x %struct.mt2701_afe_rate] [%struct.mt2701_afe_rate { i32 8000, i32 0 }, %struct.mt2701_afe_rate { i32 12000, i32 1 }, %struct.mt2701_afe_rate { i32 16000, i32 2 }, %struct.mt2701_afe_rate { i32 24000, i32 3 }, %struct.mt2701_afe_rate { i32 32000, i32 4 }, %struct.mt2701_afe_rate { i32 48000, i32 5 }, %struct.mt2701_afe_rate { i32 96000, i32 6 }, %struct.mt2701_afe_rate { i32 192000, i32 7 }, %struct.mt2701_afe_rate { i32 384000, i32 8 }, %struct.mt2701_afe_rate { i32 7350, i32 16 }, %struct.mt2701_afe_rate { i32 11025, i32 17 }, %struct.mt2701_afe_rate { i32 14700, i32 18 }, %struct.mt2701_afe_rate { i32 22050, i32 19 }, %struct.mt2701_afe_rate { i32 29400, i32 20 }, %struct.mt2701_afe_rate { i32 44100, i32 21 }, %struct.mt2701_afe_rate { i32 88200, i32 22 }, %struct.mt2701_afe_rate { i32 176400, i32 23 }, %struct.mt2701_afe_rate { i32 352800, i32 24 }], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt2701-afe-pcm-dai\00", [45 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_routes = internal constant { [49 x %struct.snd_soc_dapm_route], [620 x i8] } { [49 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.69, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr @.str.98, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr @.str.100, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.102, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.104, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.70, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.72, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.74, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.76, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.78, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.80, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.82, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.84, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.86, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.88, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.90, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.92, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr @.str.94, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr @.str.96, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }], [620 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I00\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I01\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I02\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_i02_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I03\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I12\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I13\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I14\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I15\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I16\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I17\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I18\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I19\00", [28 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I26\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I35\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O00\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o00_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O01\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o01_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O02\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o02_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O03\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o03_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O14\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o14_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O15\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o15_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O16\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o16_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O17\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o17_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O18\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o18_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O19\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o19_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O20\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o20_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O21\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o21_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O22\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o22_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"O31\00", [28 x i8] zeroinitializer }, align 32
@mt2701_afe_o31_mix = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I12I13\00", [25 x i8] zeroinitializer }, align 32
@mt2701_afe_multi_ch_out_i2s0 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I14I15\00", [25 x i8] zeroinitializer }, align 32
@mt2701_afe_multi_ch_out_i2s1 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I16I17\00", [25 x i8] zeroinitializer }, align 32
@mt2701_afe_multi_ch_out_i2s2 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I18I19\00", [25 x i8] zeroinitializer }, align 32
@mt2701_afe_multi_ch_out_i2s3 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }], [48 x i8] zeroinitializer }, align 32
@mt2701_afe_pcm_widgets = internal constant { [32 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1440 x i8] } { [32 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_i02_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o00_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o01_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o02_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o03_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o14_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o15_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o16_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o17_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o18_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o19_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o20_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o21_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o22_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_o31_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_multi_ch_out_i2s0, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_multi_ch_out_i2s1, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_multi_ch_out_i2s2, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @mt2701_afe_multi_ch_out_i2s3, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1440 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S0 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I00 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1728, i32 1728, i32 0, i32 0, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I01 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1732, i32 1732, i32 1, i32 1, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I02 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1736, i32 1736, i32 2, i32 2, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I03 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1740, i32 1740, i32 3, i32 3, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I26 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1784, i32 1784, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I12 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1788, i32 1788, i32 12, i32 12, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I13 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1792, i32 1792, i32 13, i32 13, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I14 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1796, i32 1796, i32 14, i32 14, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I15 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1800, i32 1800, i32 15, i32 15, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I16 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1804, i32 1804, i32 16, i32 16, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I17 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1808, i32 1808, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I18 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1812, i32 1812, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I19 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1816, i32 1816, i32 19, i32 19, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I35 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1892, i32 1892, i32 9, i32 9, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Multich I2S0 Out Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1564, i32 1564, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Multich I2S1 Out Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1568, i32 1568, i32 26, i32 26, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Multich I2S2 Out Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1588, i32 1588, i32 17, i32 17, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Multich I2S3 Out Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1588, i32 1588, i32 18, i32 18, i32 0, i8 64, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S0 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S3 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BT Playback\00", [20 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S0 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BT Capture\00", [21 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCMO0\00", [26 x i8] zeroinitializer }, align 32
@mt2701_single_memif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_simple_fe_startup, ptr @mtk_afe_fe_shutdown, ptr @mt2701_simple_fe_hw_params, ptr @mtk_afe_fe_hw_free, ptr @mtk_afe_fe_prepare, ptr @mtk_afe_fe_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCM_multi\00", [22 x i8] zeroinitializer }, align 32
@mt2701_dlm_memif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_dlm_fe_startup, ptr @mt2701_dlm_fe_shutdown, ptr @mt2701_dlm_fe_hw_params, ptr @mtk_afe_fe_hw_free, ptr @mtk_afe_fe_prepare, ptr @mt2701_dlm_fe_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCM0\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCM1\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCM_BT_DL\00", [22 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCM_BT_UL\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S0\00", [27 x i8] zeroinitializer }, align 32
@mt2701_afe_i2s_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @mt2701_afe_i2s_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_afe_i2s_startup, ptr @mt2701_afe_i2s_shutdown, ptr null, ptr null, ptr @mt2701_afe_i2s_prepare, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S1\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S2\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"I2S3\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"I2S3 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MRG BT\00", [25 x i8] zeroinitializer }, align 32
@mt2701_btmrg_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2701_btmrg_startup, ptr @mt2701_btmrg_shutdown, ptr @mt2701_btmrg_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mt2701_simple_fe_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.5, i32 376, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"memif is not available\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt2701_simple_fe_startup\00", [39 x i8] zeroinitializer }, align 32
@mt2701_simple_fe_startup._entry_ptr = internal global ptr @mt2701_simple_fe_startup._entry, section ".printk_index", align 4
@mt2701_afe_i2s_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.5, i32 278, ptr @.str.17, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"The SoCs doesn't support mclk input\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt2701_afe_i2s_set_sysclk\00", [38 x i8] zeroinitializer }, align 32
@mt2701_afe_i2s_set_sysclk._entry_ptr = internal global ptr @mt2701_afe_i2s_set_sysclk._entry, section ".printk_index", align 4
@mt2701_dai_num_to_i2s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.5, i32 91, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s, num not available, num %d, val %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt2701_dai_num_to_i2s\00", [42 x i8] zeroinitializer }, align 32
@mt2701_dai_num_to_i2s._entry_ptr = internal global ptr @mt2701_dai_num_to_i2s._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt2701_btmrg_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.5, i32 314, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported rate %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt2701_btmrg_hw_params\00", [41 x i8] zeroinitializer }, align 32
@mt2701_btmrg_hw_params._entry_ptr = internal global ptr @mt2701_btmrg_hw_params._entry, section ".printk_index", align 4
@mt2701_soc_v1 = internal constant { %struct.mt2701_soc_variants, [24 x i8] } { %struct.mt2701_soc_variants { i8 0, i32 4 }, [24 x i8] zeroinitializer }, align 32
@mt2701_soc_v2 = internal constant { %struct.mt2701_soc_variants, [24 x i8] } { %struct.mt2701_soc_variants { i8 1, i32 4 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [20 x i64] [i64 18, i64 32, i64 7350, i64 8000, i64 11025, i64 12000, i64 14700, i64 16000, i64 22050, i64 24000, i64 29400, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 352800, i64 384000]
@__sancov_gen_cov_switch_values.135 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 8000, i64 16000]
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"mt2701_afe_pcm_driver\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1473, i32 31 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1475, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"mt2701_afe_pcm_dt_match\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1461, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"mt2701_afe_pm_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1468, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1342, i32 41 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1347, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1349, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1355, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1359, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"memif_data_array\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 977, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant [9 x i8] c"irq_data\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1214, i32 39 }
@___asan_gen_.191 = private unnamed_addr constant [16 x i8] c"mt2701_i2s_data\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1256, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"mt2701_afe_hardware\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 24, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant [23 x i8] c"mt2701_afe_backup_list\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 63, i32 27 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1402, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1419, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [29 x i8] c"mt2701_afe_pcm_dai_component\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 966, i32 46 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"mt2701_afe_pcm_dais\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 547, i32 34 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1428, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 979, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 997, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1015, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1033, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1051, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1069, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1087, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1105, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1123, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1141, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1159, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1177, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1195, i32 11 }
@___asan_gen_.266 = private unnamed_addr constant [21 x i8] c"mt2701_afe_i2s_rates\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 42, i32 37 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 968, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant [22 x i8] c"mt2701_afe_pcm_routes\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 897, i32 40 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 838, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 839, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 840, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"mt2701_afe_i02_mix\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 812, i32 38 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 842, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 843, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 844, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 845, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 846, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 847, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 848, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 849, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 850, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 851, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 852, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 854, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o00_mix\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 756, i32 38 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 856, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o01_mix\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 760, i32 38 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 858, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o02_mix\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 764, i32 38 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 860, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o03_mix\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 768, i32 38 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 862, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o14_mix\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 772, i32 38 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 864, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o15_mix\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 776, i32 38 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 866, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o16_mix\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 780, i32 38 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 868, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o17_mix\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 784, i32 38 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 870, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o18_mix\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 788, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 872, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o19_mix\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 792, i32 38 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 874, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o20_mix\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 796, i32 38 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 876, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o21_mix\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 800, i32 38 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 878, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o22_mix\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 804, i32 38 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 880, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [19 x i8] c"mt2701_afe_o31_mix\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 808, i32 38 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 883, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant [29 x i8] c"mt2701_afe_multi_ch_out_i2s0\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 816, i32 38 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 886, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [29 x i8] c"mt2701_afe_multi_ch_out_i2s1\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 821, i32 38 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 889, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [29 x i8] c"mt2701_afe_multi_ch_out_i2s2\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 826, i32 38 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 892, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant [29 x i8] c"mt2701_afe_multi_ch_out_i2s3\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 831, i32 38 }
@___asan_gen_.428 = private unnamed_addr constant [23 x i8] c"mt2701_afe_pcm_widgets\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 836, i32 41 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 813, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 757, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 761, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 765, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 769, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 773, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 777, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 781, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 785, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 789, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 793, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 797, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 801, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 805, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 809, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 817, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 822, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 827, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 832, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 902, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 904, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 906, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 908, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 910, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 918, i32 16 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 920, i32 16 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 925, i32 16 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 550, i32 11 }
@___asan_gen_.534 = private unnamed_addr constant [28 x i8] c"mt2701_single_memif_dai_ops\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 514, i32 37 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 564, i32 11 }
@___asan_gen_.540 = private unnamed_addr constant [25 x i8] c"mt2701_dlm_memif_dai_ops\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 523, i32 37 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 579, i32 11 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 593, i32 11 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 608, i32 11 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 621, i32 11 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 635, i32 11 }
@___asan_gen_.558 = private unnamed_addr constant [19 x i8] c"mt2701_afe_i2s_ops\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 533, i32 37 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 661, i32 11 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 685, i32 11 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 697, i32 19 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 709, i32 11 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 721, i32 19 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 733, i32 11 }
@___asan_gen_.579 = private unnamed_addr constant [17 x i8] c"mt2701_btmrg_ops\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 541, i32 37 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 376, i32 4 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 278, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 90, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 314, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant [14 x i8] c"mt2701_soc_v1\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1452, i32 41 }
@___asan_gen_.621 = private unnamed_addr constant [14 x i8] c"mt2701_soc_v2\00", align 1
@___asan_gen_.622 = private constant [46 x i8] c"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.622, i32 1456, i32 41 }
@llvm.compiler.used = appending global [191 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_mt2701_afe_pcm_driver_exit, ptr @__initcall__kmod_snd_soc_mt2701_afe__239_1483_mt2701_afe_pcm_driver_init6, ptr @mt2701_afe_i2s_set_sysclk._entry, ptr @mt2701_afe_i2s_set_sysclk._entry_ptr, ptr @mt2701_afe_pcm_dev_probe._entry, ptr @mt2701_afe_pcm_dev_probe._entry.12, ptr @mt2701_afe_pcm_dev_probe._entry.15, ptr @mt2701_afe_pcm_dev_probe._entry.19, ptr @mt2701_afe_pcm_dev_probe._entry.8, ptr @mt2701_afe_pcm_dev_probe._entry_ptr, ptr @mt2701_afe_pcm_dev_probe._entry_ptr.10, ptr @mt2701_afe_pcm_dev_probe._entry_ptr.14, ptr @mt2701_afe_pcm_dev_probe._entry_ptr.18, ptr @mt2701_afe_pcm_dev_probe._entry_ptr.21, ptr @mt2701_afe_pcm_driver_exit, ptr @mt2701_btmrg_hw_params._entry, ptr @mt2701_btmrg_hw_params._entry_ptr, ptr @mt2701_dai_num_to_i2s._entry, ptr @mt2701_dai_num_to_i2s._entry_ptr, ptr @mt2701_simple_fe_startup._entry, ptr @mt2701_simple_fe_startup._entry_ptr, ptr @mt2701_afe_pcm_driver, ptr @.str, ptr @mt2701_afe_pcm_dt_match, ptr @mt2701_afe_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mt2701_afe_pcm_dev_probe.__key, ptr @.str.11, ptr @memif_data_array, ptr @irq_data, ptr @mt2701_i2s_data, ptr @mt2701_afe_hardware, ptr @mt2701_afe_backup_list, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @mt2701_afe_pcm_dai_component, ptr @mt2701_afe_pcm_dais, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mt2701_afe_i2s_rates, ptr @.str.35, ptr @mt2701_afe_pcm_routes, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @mt2701_afe_i02_mix, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @mt2701_afe_o00_mix, ptr @.str.51, ptr @mt2701_afe_o01_mix, ptr @.str.52, ptr @mt2701_afe_o02_mix, ptr @.str.53, ptr @mt2701_afe_o03_mix, ptr @.str.54, ptr @mt2701_afe_o14_mix, ptr @.str.55, ptr @mt2701_afe_o15_mix, ptr @.str.56, ptr @mt2701_afe_o16_mix, ptr @.str.57, ptr @mt2701_afe_o17_mix, ptr @.str.58, ptr @mt2701_afe_o18_mix, ptr @.str.59, ptr @mt2701_afe_o19_mix, ptr @.str.60, ptr @mt2701_afe_o20_mix, ptr @.str.61, ptr @mt2701_afe_o21_mix, ptr @.str.62, ptr @mt2701_afe_o22_mix, ptr @.str.63, ptr @mt2701_afe_o31_mix, ptr @.str.64, ptr @mt2701_afe_multi_ch_out_i2s0, ptr @.str.65, ptr @mt2701_afe_multi_ch_out_i2s1, ptr @.str.66, ptr @mt2701_afe_multi_ch_out_i2s2, ptr @.str.67, ptr @mt2701_afe_multi_ch_out_i2s3, ptr @mt2701_afe_pcm_widgets, ptr @.str.69, ptr @.compoundliteral, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @mt2701_single_memif_dai_ops, ptr @.str.115, ptr @mt2701_dlm_memif_dai_ops, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @mt2701_afe_i2s_ops, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @mt2701_btmrg_ops, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @mt2701_soc_v1, ptr @mt2701_soc_v2], section "llvm.metadata"
@0 = internal global [175 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dev_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dev_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memif_data_array to i32), i32 2080, i32 2592, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_data to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_i2s_data to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_backup_list to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dev_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dev_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dais to i32), i32 1848, i32 2304, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_dev_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_i2s_rates to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_routes to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_i02_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o00_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o01_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o02_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o03_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o14_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o15_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o16_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o17_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o18_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o19_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o20_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o21_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o22_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_o31_mix to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_multi_ch_out_i2s0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_multi_ch_out_i2s1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_multi_ch_out_i2s2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_multi_ch_out_i2s3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_pcm_widgets to i32), i32 5760, i32 7200, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_single_memif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_dlm_memif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_i2s_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_btmrg_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_simple_fe_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_afe_i2s_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_dai_num_to_i2s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_btmrg_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_soc_v1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_soc_v2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_pcm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt2701_afe_pcm_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt2701_afe_pcm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt2701_afe_pcm_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_pcm_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i207 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #8
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i207, ptr %platform_priv, align 4
  %tobool5.not = icmp eq ptr %call.i207, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call10 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %soc = getelementptr inbounds %struct.mt2701_afe_private, ptr %call.i207, i32 0, i32 4
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call10, ptr %soc, align 4
  %dev12 = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev12, align 4
  %i2s_num = getelementptr inbounds %struct.mt2701_soc_variants, ptr %call10, i32 0, i32 1
  %3 = ptrtoint ptr %i2s_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i2s_num, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 52) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !321

devm_kcalloc.exit.thread:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call.i207 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %call.i207, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end7
  %8 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %8, i32 noundef 3520) #8
  %9 = ptrtoint ptr %call.i207 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %call.i207, align 4
  %tobool17.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool17.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end19

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %devm_kcalloc.exit
  %call20 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.end19.cleanup_crit_edge, label %if.end22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %call.i208 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call20, ptr noundef nonnull @mt2701_asys_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %tobool24.not = icmp eq i32 %call.i208, 0
  br i1 %tobool24.not, label %if.end26, label %do.end

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call27 = tail call ptr @syscon_node_to_regmap(ptr noundef %13) #8
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call27, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %do.body37

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

do.body37:                                        ; preds = %if.end26
  %irq_alloc_lock = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %irq_alloc_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @mt2701_afe_pcm_dev_probe.__key) #8
  %memif_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %memif_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13, ptr %memif_size, align 4
  %call5.i.i209 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 468, i32 noundef 3520) #8
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %memif to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i209, ptr %memif, align 4
  %tobool43.not = icmp eq ptr %call5.i.i209, null
  br i1 %tobool43.not, label %do.body37.cleanup_crit_edge, label %for.cond.preheader

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %do.body37
  %20 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %memif_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp47220 = icmp sgt i32 %21, 0
  br i1 %cmp47220, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0221 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.mtk_base_memif_data], ptr @memif_data_array, i32 0, i32 %i.0221
  %22 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %memif, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %23, i32 %i.0221, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %data, align 4
  %25 = load ptr, ptr %memif, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %25, i32 %i.0221, i32 4
  %26 = ptrtoint ptr %irq_usage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %irq_usage, align 4
  %inc = add nuw nsw i32 %i.0221, 1
  %27 = ptrtoint ptr %memif_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %memif_size, align 4
  %cmp47 = icmp slt i32 %inc, %28
  br i1 %cmp47, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %irqs_size = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 13
  %29 = ptrtoint ptr %irqs_size to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %irqs_size, align 4
  %call5.i.i212 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #8
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 12
  %30 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i212, ptr %irqs, align 4
  %tobool55.not = icmp eq ptr %call5.i.i212, null
  br i1 %tobool55.not, label %for.end.cleanup_crit_edge, label %for.cond58.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond58.preheader:                             ; preds = %for.end
  %31 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irqs_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp60222 = icmp sgt i32 %32, 0
  br i1 %cmp60222, label %for.cond58.preheader.for.body61_crit_edge, label %for.cond58.preheader.for.cond68.preheader_crit_edge

for.cond58.preheader.for.cond68.preheader_crit_edge: ; preds = %for.cond58.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68.preheader

for.cond58.preheader.for.body61_crit_edge:        ; preds = %for.cond58.preheader
  br label %for.body61

for.cond68.preheader:                             ; preds = %for.body61.for.cond68.preheader_crit_edge, %for.cond58.preheader.for.cond68.preheader_crit_edge
  %33 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc, align 4
  %i2s_num70224 = getelementptr inbounds %struct.mt2701_soc_variants, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %i2s_num70224 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %i2s_num70224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp71225 = icmp sgt i32 %36, 0
  br i1 %cmp71225, label %for.cond68.preheader.for.body72_crit_edge, label %for.cond68.preheader.for.end86_crit_edge

for.cond68.preheader.for.end86_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

for.cond68.preheader.for.body72_crit_edge:        ; preds = %for.cond68.preheader
  br label %for.body72

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.cond58.preheader.for.body61_crit_edge
  %i.1223 = phi i32 [ %inc66, %for.body61.for.body61_crit_edge ], [ 0, %for.cond58.preheader.for.body61_crit_edge ]
  %arrayidx62 = getelementptr [3 x %struct.mtk_base_irq_data], ptr @irq_data, i32 0, i32 %i.1223
  %37 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irqs, align 4
  %arrayidx64 = getelementptr %struct.mtk_base_afe_irq, ptr %38, i32 %i.1223
  %39 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx62, ptr %arrayidx64, align 4
  %inc66 = add nuw nsw i32 %i.1223, 1
  %40 = ptrtoint ptr %irqs_size to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irqs_size, align 4
  %cmp60 = icmp slt i32 %inc66, %41
  br i1 %cmp60, label %for.body61.for.body61_crit_edge, label %for.body61.for.cond68.preheader_crit_edge

for.body61.for.cond68.preheader_crit_edge:        ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond68.preheader

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %for.cond68.preheader.for.body72_crit_edge
  %i.2226 = phi i32 [ %inc85, %for.body72.for.body72_crit_edge ], [ 0, %for.cond68.preheader.for.body72_crit_edge ]
  %arrayidx73 = getelementptr [4 x [2 x %struct.mt2701_i2s_data]], ptr @mt2701_i2s_data, i32 0, i32 %i.2226
  %42 = ptrtoint ptr %call.i207 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i207, align 4
  %i2s_data = getelementptr %struct.mt2701_i2s_path, ptr %43, i32 %i.2226, i32 3
  %44 = ptrtoint ptr %i2s_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx73, ptr %i2s_data, align 4
  %arrayidx79 = getelementptr [4 x [2 x %struct.mt2701_i2s_data]], ptr @mt2701_i2s_data, i32 0, i32 %i.2226, i32 1
  %45 = load ptr, ptr %call.i207, align 4
  %arrayidx83 = getelementptr %struct.mt2701_i2s_path, ptr %45, i32 %i.2226, i32 3, i32 1
  %46 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx79, ptr %arrayidx83, align 4
  %inc85 = add nuw nsw i32 %i.2226, 1
  %47 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %soc, align 4
  %i2s_num70 = getelementptr inbounds %struct.mt2701_soc_variants, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %i2s_num70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %i2s_num70, align 4
  %cmp71 = icmp slt i32 %inc85, %50
  br i1 %cmp71, label %for.body72.for.body72_crit_edge, label %for.body72.for.end86_crit_edge

for.body72.for.end86_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end86

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body72

for.end86:                                        ; preds = %for.body72.for.end86_crit_edge, %for.cond68.preheader.for.end86_crit_edge
  %mtk_afe_hardware = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 18
  %51 = ptrtoint ptr %mtk_afe_hardware to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mt2701_afe_hardware, ptr %mtk_afe_hardware, align 4
  %memif_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 19
  %52 = ptrtoint ptr %memif_fs to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mt2701_memif_fs, ptr %memif_fs, align 4
  %irq_fs = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 20
  %53 = ptrtoint ptr %irq_fs to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @mt2701_irq_fs, ptr %irq_fs, align 4
  %reg_back_up_list = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %reg_back_up_list to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @mt2701_afe_backup_list, ptr %reg_back_up_list, align 4
  %reg_back_up_list_num = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 6
  %55 = ptrtoint ptr %reg_back_up_list_num to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 18, ptr %reg_back_up_list_num, align 4
  %runtime_resume = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 8
  %56 = ptrtoint ptr %runtime_resume to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mt2701_afe_runtime_resume, ptr %runtime_resume, align 4
  %runtime_suspend = getelementptr inbounds %struct.mtk_base_afe, ptr %call.i, i32 0, i32 7
  %57 = ptrtoint ptr %runtime_suspend to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @mt2701_afe_runtime_suspend, ptr %runtime_suspend, align 4
  %call87 = tail call i32 @mt2701_init_clock(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end93, label %do.end92

do.end92:                                         ; preds = %for.end86
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end93:                                         ; preds = %for.end86
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 15
  %59 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.end93.if.end100_crit_edge, label %if.then95

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then95:                                        ; preds = %if.end93
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @mt2701_afe_enable_clock(ptr noundef %61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool97.not = icmp eq i32 %call1.i, 0
  br i1 %tobool97.not, label %if.then95.if.end100_crit_edge, label %if.then95.err_pm_disable_crit_edge

if.then95.err_pm_disable_crit_edge:               ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pm_disable

if.then95.if.end100_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end100:                                        ; preds = %if.then95.if.end100_crit_edge, %if.end93.if.end100_crit_edge
  %call.i216 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  %call103 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mtk_afe_pcm_platform, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end109, label %if.end100.err_platform_crit_edge

if.end100.err_platform_crit_edge:                 ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_platform

if.end109:                                        ; preds = %if.end100
  %call111 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @mt2701_afe_pcm_dai_component, ptr noundef nonnull @mt2701_afe_pcm_dais, i32 noundef 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end109.cleanup_crit_edge, label %if.end109.err_platform_crit_edge

if.end109.err_platform_crit_edge:                 ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_platform

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_platform:                                     ; preds = %if.end109.err_platform_crit_edge, %if.end100.err_platform_crit_edge
  %.str.20.sink = phi ptr [ @.str.16, %if.end100.err_platform_crit_edge ], [ @.str.20, %if.end109.err_platform_crit_edge ]
  %ret.0 = phi i32 [ %call103, %if.end100.err_platform_crit_edge ], [ %call111, %if.end109.err_platform_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull %.str.20.sink) #11
  %call.i217 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_platform, %if.then95.err_pm_disable_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_platform ], [ %call1.i, %if.then95.err_pm_disable_crit_edge ]
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end109.cleanup_crit_edge, %do.end92, %for.end.cleanup_crit_edge, %do.body37.cleanup_crit_edge, %do.end33, %do.end, %if.end19.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i208, %do.end ], [ %17, %do.end33 ], [ %call87, %do.end92 ], [ %ret.1, %err_pm_disable ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ -12, %do.body37.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.end109.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_pcm_dev_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call i32 @mt2701_afe_disable_clock(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_asys_isr(i32 noundef %irq_id, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !322
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1988, ptr noundef nonnull %status) #8
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef 1984, i32 noundef %6) #8
  %memif3 = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 10
  %irqs = getelementptr inbounds %struct.mtk_base_afe, ptr %dev, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %id.016 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %memif3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memif3, align 4
  %irq_usage = getelementptr %struct.mtk_base_afe_memif, ptr %8, i32 %id.016, i32 4
  %9 = ptrtoint ptr %irq_usage to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irqs, align 4
  %arrayidx6 = getelementptr %struct.mtk_base_afe_irq, ptr %12, i32 %10
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6, align 4
  %irq_clr_shift = getelementptr inbounds %struct.mtk_base_irq_data, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %irq_clr_shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq_clr_shift, align 4
  %shl = shl nuw i32 1, %18
  %and = and i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %substream = getelementptr %struct.mtk_base_afe_memif, ptr %8, i32 %id.016, i32 2
  %19 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %substream, align 4
  call void @snd_pcm_period_elapsed(ptr noundef %20) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %id.016, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_memif_fs(ptr nocapture noundef readonly %substream, i32 noundef %rate) #5 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp.not = icmp eq i32 %7, 12
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @mt2701_afe_i2s_fs(i32 noundef %rate)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %rate)
  %cmp1 = icmp eq i32 %rate, 16000
  %cond = zext i1 %cmp1 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %fs.0 = phi i32 [ %call, %if.then ], [ %cond, %if.else ]
  ret i32 %fs.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_irq_fs(ptr nocapture noundef readnone %substream, i32 noundef %rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mt2701_afe_i2s_fs(i32 noundef %rate)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @mt2701_afe_enable_clock(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @mt2701_afe_disable_clock(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt2701_init_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mt2701_afe_i2s_fs(i32 noundef %sample_rate) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sample_rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sample_rate, label %entry.cleanup_crit_edge [
    i32 8000, label %entry.if.then_crit_edge
    i32 12000, label %if.then.fold.split
    i32 16000, label %if.then.fold.split9
    i32 24000, label %if.then.fold.split10
    i32 32000, label %if.then.fold.split11
    i32 48000, label %if.then.fold.split12
    i32 96000, label %if.then.fold.split13
    i32 192000, label %if.then.fold.split14
    i32 384000, label %if.then.fold.split15
    i32 7350, label %if.then.fold.split16
    i32 11025, label %if.then.fold.split17
    i32 14700, label %if.then.fold.split18
    i32 22050, label %if.then.fold.split19
    i32 29400, label %if.then.fold.split20
    i32 44100, label %if.then.fold.split21
    i32 88200, label %if.then.fold.split22
    i32 176400, label %if.then.fold.split23
    i32 352800, label %if.then.fold.split24
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split9:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split15, %if.then.fold.split14, %if.then.fold.split13, %if.then.fold.split12, %if.then.fold.split11, %if.then.fold.split10, %if.then.fold.split9, %if.then.fold.split, %entry.if.then_crit_edge
  %i.07.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split9 ], [ 3, %if.then.fold.split10 ], [ 4, %if.then.fold.split11 ], [ 5, %if.then.fold.split12 ], [ 6, %if.then.fold.split13 ], [ 7, %if.then.fold.split14 ], [ 8, %if.then.fold.split15 ], [ 9, %if.then.fold.split16 ], [ 10, %if.then.fold.split17 ], [ 11, %if.then.fold.split18 ], [ 12, %if.then.fold.split19 ], [ 13, %if.then.fold.split20 ], [ 14, %if.then.fold.split21 ], [ 15, %if.then.fold.split22 ], [ 16, %if.then.fold.split23 ], [ 17, %if.then.fold.split24 ]
  %regvalue = getelementptr [18 x %struct.mt2701_afe_rate], ptr @mt2701_afe_i2s_rates, i32 0, i32 %i.07.lcssa, i32 1
  %1 = ptrtoint ptr %regvalue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regvalue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt2701_afe_enable_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt2701_afe_disable_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_pcm_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %5) #8
  ret i32 0
}

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_simple_fe_startup(ptr noundef %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memif, align 4
  %substream1 = getelementptr %struct.mtk_base_afe_memif, ptr %7, i32 5, i32 2
  %8 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream1, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %do.end

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.127) #11
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %call4 = tail call i32 @mtk_afe_fe_startup(ptr noundef %substream, ptr noundef %dai) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ %call4, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_afe_fe_shutdown(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_simple_fe_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 4664, i32 noundef 536870912, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @mtk_afe_fe_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_hw_free(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_prepare(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_trigger(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_startup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_afe_fe_hw_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_dlm_fe_startup(ptr noundef %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memif, align 4
  %substream1 = getelementptr %struct.mtk_base_afe_memif, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %substream1.1 = getelementptr %struct.mtk_base_afe_memif, ptr %5, i32 1, i32 2
  %8 = ptrtoint ptr %substream1.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream1.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %substream1.2 = getelementptr %struct.mtk_base_afe_memif, ptr %5, i32 2, i32 2
  %10 = ptrtoint ptr %substream1.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream1.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %substream1.3 = getelementptr %struct.mtk_base_afe_memif, ptr %5, i32 3, i32 2
  %12 = ptrtoint ptr %substream1.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %substream1.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %substream1.4 = getelementptr %struct.mtk_base_afe_memif, ptr %5, i32 4, i32 2
  %14 = ptrtoint ptr %substream1.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %substream1.4, align 4
  %tobool.not.4 = icmp eq ptr %15, null
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memif, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %agent_disable_reg = getelementptr inbounds %struct.mtk_base_memif_data, ptr %19, i32 0, i32 29
  %22 = ptrtoint ptr %agent_disable_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %agent_disable_reg, align 4
  %agent_disable_shift = getelementptr inbounds %struct.mtk_base_memif_data, ptr %19, i32 0, i32 30
  %24 = ptrtoint ptr %agent_disable_shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %agent_disable_shift, align 4
  %shl = shl nuw i32 1, %25
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %memif, align 4
  %data.1 = getelementptr %struct.mtk_base_afe_memif, ptr %27, i32 1, i32 3
  %28 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.1, align 4
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.1 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %29, i32 0, i32 29
  %32 = ptrtoint ptr %agent_disable_reg.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %agent_disable_reg.1, align 4
  %agent_disable_shift.1 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %29, i32 0, i32 30
  %34 = ptrtoint ptr %agent_disable_shift.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %agent_disable_shift.1, align 4
  %shl.1 = shl nuw i32 1, %35
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %33, i32 noundef %shl.1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %memif, align 4
  %data.2 = getelementptr %struct.mtk_base_afe_memif, ptr %37, i32 2, i32 3
  %38 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.2, align 4
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.2 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %39, i32 0, i32 29
  %42 = ptrtoint ptr %agent_disable_reg.2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %agent_disable_reg.2, align 4
  %agent_disable_shift.2 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %39, i32 0, i32 30
  %44 = ptrtoint ptr %agent_disable_shift.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %agent_disable_shift.2, align 4
  %shl.2 = shl nuw i32 1, %45
  %call.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef %43, i32 noundef %shl.2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %46 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %memif, align 4
  %data.3 = getelementptr %struct.mtk_base_afe_memif, ptr %47, i32 3, i32 3
  %48 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.3, align 4
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.3 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %49, i32 0, i32 29
  %52 = ptrtoint ptr %agent_disable_reg.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %agent_disable_reg.3, align 4
  %agent_disable_shift.3 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %49, i32 0, i32 30
  %54 = ptrtoint ptr %agent_disable_shift.3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %agent_disable_shift.3, align 4
  %shl.3 = shl nuw i32 1, %55
  %call.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef %53, i32 noundef %shl.3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %56 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %memif, align 4
  %data.4 = getelementptr %struct.mtk_base_afe_memif, ptr %57, i32 4, i32 3
  %58 = ptrtoint ptr %data.4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.4, align 4
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.4 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %59, i32 0, i32 29
  %62 = ptrtoint ptr %agent_disable_reg.4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %agent_disable_reg.4, align 4
  %agent_disable_shift.4 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %59, i32 0, i32 30
  %64 = ptrtoint ptr %agent_disable_shift.4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %agent_disable_shift.4, align 4
  %shl.4 = shl nuw i32 1, %65
  %call.i.4 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %63, i32 noundef %shl.4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call13 = tail call i32 @mtk_afe_fe_startup(ptr noundef %substream, ptr noundef %dai) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.4, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %for.cond.4 ], [ -16, %for.cond.3.cleanup_crit_edge ], [ -16, %for.cond.2.cleanup_crit_edge ], [ -16, %for.cond.1.cleanup_crit_edge ], [ -16, %for.cond.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt2701_dlm_fe_shutdown(ptr noundef %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 10
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memif, align 4
  %data = getelementptr %struct.mtk_base_afe_memif, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %agent_disable_reg = getelementptr inbounds %struct.mtk_base_memif_data, ptr %7, i32 0, i32 29
  %10 = ptrtoint ptr %agent_disable_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %agent_disable_reg, align 4
  %agent_disable_shift = getelementptr inbounds %struct.mtk_base_memif_data, ptr %7, i32 0, i32 30
  %12 = ptrtoint ptr %agent_disable_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %agent_disable_shift, align 4
  %shl = shl nuw i32 1, %13
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %memif, align 4
  %data.1 = getelementptr %struct.mtk_base_afe_memif, ptr %15, i32 1, i32 3
  %16 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.1, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.1 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %17, i32 0, i32 29
  %20 = ptrtoint ptr %agent_disable_reg.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %agent_disable_reg.1, align 4
  %agent_disable_shift.1 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %17, i32 0, i32 30
  %22 = ptrtoint ptr %agent_disable_shift.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %agent_disable_shift.1, align 4
  %shl.1 = shl nuw i32 1, %23
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %21, i32 noundef %shl.1, i32 noundef %shl.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %memif, align 4
  %data.2 = getelementptr %struct.mtk_base_afe_memif, ptr %25, i32 2, i32 3
  %26 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.2, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.2 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %27, i32 0, i32 29
  %30 = ptrtoint ptr %agent_disable_reg.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %agent_disable_reg.2, align 4
  %agent_disable_shift.2 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %27, i32 0, i32 30
  %32 = ptrtoint ptr %agent_disable_shift.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %agent_disable_shift.2, align 4
  %shl.2 = shl nuw i32 1, %33
  %call.i.2 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %31, i32 noundef %shl.2, i32 noundef %shl.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memif, align 4
  %data.3 = getelementptr %struct.mtk_base_afe_memif, ptr %35, i32 3, i32 3
  %36 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.3, align 4
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.3 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %37, i32 0, i32 29
  %40 = ptrtoint ptr %agent_disable_reg.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %agent_disable_reg.3, align 4
  %agent_disable_shift.3 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %37, i32 0, i32 30
  %42 = ptrtoint ptr %agent_disable_shift.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %agent_disable_shift.3, align 4
  %shl.3 = shl nuw i32 1, %43
  %call.i.3 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %41, i32 noundef %shl.3, i32 noundef %shl.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %44 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %memif, align 4
  %data.4 = getelementptr %struct.mtk_base_afe_memif, ptr %45, i32 4, i32 3
  %46 = ptrtoint ptr %data.4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.4, align 4
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %agent_disable_reg.4 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %47, i32 0, i32 29
  %50 = ptrtoint ptr %agent_disable_reg.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %agent_disable_reg.4, align 4
  %agent_disable_shift.4 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %47, i32 0, i32 30
  %52 = ptrtoint ptr %agent_disable_shift.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %agent_disable_shift.4, align 4
  %shl.4 = shl nuw i32 1, %53
  %call.i.4 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %51, i32 noundef %shl.4, i32 noundef %shl.4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mtk_afe_fe_shutdown(ptr noundef %substream, ptr noundef %dai) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_dlm_fe_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 4664, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 4664, i32 noundef 12288, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %5, 24
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 4664, i32 noundef 251658240, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call7 = tail call i32 @mtk_afe_fe_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #8
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_dlm_fe_trigger(ptr noundef %substream, i32 noundef %cmd, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %memif = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %memif to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memif, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge29
    i32 0, label %entry.sw.bb7_crit_edge
    i32 5, label %entry.sw.bb7_crit_edge30
  ]

entry.sw.bb7_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.mtk_base_afe_memif, ptr %5, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %enable_reg = getelementptr inbounds %struct.mtk_base_memif_data, ptr %10, i32 0, i32 19
  %11 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %enable_reg, align 4
  %enable_shift = getelementptr inbounds %struct.mtk_base_memif_data, ptr %10, i32 0, i32 20
  %13 = ptrtoint ptr %enable_shift to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable_shift, align 4
  %shl = shl nuw i32 1, %14
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %12, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call6 = tail call i32 @mtk_afe_fe_trigger(ptr noundef %substream, i32 noundef %cmd, ptr noundef %dai) #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge30
  %call8 = tail call i32 @mtk_afe_fe_trigger(ptr noundef %substream, i32 noundef %cmd, ptr noundef %dai) #8
  %regmap9 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap9, align 4
  %data10 = getelementptr inbounds %struct.mtk_base_afe_memif, ptr %5, i32 0, i32 3
  %17 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data10, align 4
  %enable_reg11 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %enable_reg11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %enable_reg11, align 4
  %enable_shift13 = getelementptr inbounds %struct.mtk_base_memif_data, ptr %18, i32 0, i32 20
  %21 = ptrtoint ptr %enable_shift13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable_shift13, align 4
  %shl14 = shl nuw i32 1, %22
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %20, i32 noundef %shl14, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb7 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_i2s_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %sub.i = add i32 %7, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge, label %lor.lhs.false.i

entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %soc.i = getelementptr inbounds %struct.mt2701_afe_private, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %i2s_num.i = getelementptr inbounds %struct.mt2701_soc_variants, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %i2s_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2s_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp1.not.i = icmp slt i32 %sub.i, %11
  br i1 %cmp1.not.i, label %if.end, label %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge

lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

mt2701_dai_num_to_i2s.exit.thread:                ; preds = %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge, %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge
  %dev.i15 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef %7, i32 noundef %sub.i) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 0
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.129) #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %spec.select = select i1 %tobool.not, i32 %sub.i, i32 1
  %arrayidx = getelementptr %struct.mt2701_i2s_path, ptr %21, i32 %spec.select
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %freq, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %mt2701_dai_num_to_i2s.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end4 ], [ -22, %mt2701_dai_num_to_i2s.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_i2s_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %sub.i = add i32 %5, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge, label %lor.lhs.false.i

entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 25
  %6 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_priv, align 4
  %soc.i = getelementptr inbounds %struct.mt2701_afe_private, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %i2s_num.i = getelementptr inbounds %struct.mt2701_soc_variants, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %i2s_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2s_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp1.not.i = icmp slt i32 %sub.i, %11
  br i1 %cmp1.not.i, label %if.end, label %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge

lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

mt2701_dai_num_to_i2s.exit.thread:                ; preds = %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge, %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge
  %dev.i12 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef %5, i32 noundef %sub.i) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool.not, i32 %sub.i, i32 1
  %call3 = tail call i32 @mt2701_afe_enable_mclk(ptr noundef %3, i32 noundef %spec.select) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mt2701_dai_num_to_i2s.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %mt2701_dai_num_to_i2s.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt2701_afe_i2s_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %sub.i = add i32 %7, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge, label %lor.lhs.false.i

entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %soc.i = getelementptr inbounds %struct.mt2701_afe_private, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %i2s_num.i = getelementptr inbounds %struct.mt2701_soc_variants, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %i2s_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2s_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp1.not.i = icmp slt i32 %sub.i, %11
  br i1 %cmp1.not.i, label %if.end, label %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge

lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

mt2701_dai_num_to_i2s.exit.thread:                ; preds = %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge, %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge
  %dev.i39 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef %7, i32 noundef %sub.i) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.mt2701_i2s_path, ptr %19, i32 %sub.i
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %20 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream, align 4
  %arrayidx3 = getelementptr %struct.mt2701_i2s_path, ptr %19, i32 %sub.i, i32 2, i32 %21
  %22 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not = icmp eq i32 %23, 0
  br i1 %tobool4.not, label %if.end.exit_crit_edge, label %if.then5

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then5:                                         ; preds = %if.end
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx3, align 4
  %25 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stream, align 4
  %arrayidx.i = getelementptr %struct.mt2701_i2s_path, ptr %19, i32 %sub.i, i32 3, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.mt2701_i2s_path, ptr %19, i32 %sub.i, i32 1, i32 %26
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i, align 4
  %dec.i = add i32 %30, -1
  %31 = tail call i32 @llvm.smax.i32(i32 %dec.i, i32 0) #8
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %tobool.not.i = icmp slt i32 %dec.i, 1
  br i1 %tobool.not.i, label %if.end8.i, label %if.then5.mt2701_afe_i2s_path_disable.exit_crit_edge

if.then5.mt2701_afe_i2s_path_disable.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_afe_i2s_path_disable.exit

if.end8.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %28, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef %36, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mt2701_afe_disable_i2s(ptr noundef %3, ptr noundef %arrayidx, i32 noundef %26) #8
  br label %mt2701_afe_i2s_path_disable.exit

mt2701_afe_i2s_path_disable.exit:                 ; preds = %if.end8.i, %if.then5.mt2701_afe_i2s_path_disable.exit_crit_edge
  %37 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp13 = icmp eq i32 %38, 1
  br i1 %cmp13, label %if.then14, label %mt2701_afe_i2s_path_disable.exit.exit_crit_edge

mt2701_afe_i2s_path_disable.exit.exit_crit_edge:  ; preds = %mt2701_afe_i2s_path_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then14:                                        ; preds = %mt2701_afe_i2s_path_disable.exit
  %arrayidx.i40 = getelementptr %struct.mt2701_i2s_path, ptr %19, i32 %sub.i, i32 3, i32 0
  %39 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i40, align 4
  %arrayidx2.i41 = getelementptr %struct.mt2701_i2s_path, ptr %19, i32 %sub.i, i32 1, i32 0
  %41 = ptrtoint ptr %arrayidx2.i41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx2.i41, align 4
  %dec.i42 = add i32 %42, -1
  %43 = tail call i32 @llvm.smax.i32(i32 %dec.i42, i32 0) #8
  %44 = ptrtoint ptr %arrayidx2.i41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx2.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i42)
  %tobool.not.i43 = icmp slt i32 %dec.i42, 1
  br i1 %tobool.not.i43, label %if.end8.i46, label %if.then14.exit_crit_edge

if.then14.exit_crit_edge:                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end8.i46:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i44 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %45 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i44, align 4
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %40, align 4
  %call.i.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %48, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mt2701_afe_disable_i2s(ptr noundef %3, ptr noundef %arrayidx, i32 noundef 0) #8
  br label %exit

exit:                                             ; preds = %if.end8.i46, %if.then14.exit_crit_edge, %mt2701_afe_i2s_path_disable.exit.exit_crit_edge, %if.end.exit_crit_edge
  %spec.select = select i1 %tobool.not, i32 %sub.i, i32 1
  tail call void @mt2701_afe_disable_mclk(ptr noundef %3, i32 noundef %spec.select) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %mt2701_dai_num_to_i2s.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_afe_i2s_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %sub.i = add i32 %7, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge, label %lor.lhs.false.i

entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

lor.lhs.false.i:                                  ; preds = %entry
  %soc.i = getelementptr inbounds %struct.mt2701_afe_private, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %i2s_num.i = getelementptr inbounds %struct.mt2701_soc_variants, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %i2s_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2s_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp1.not.i = icmp slt i32 %sub.i, %11
  br i1 %cmp1.not.i, label %if.end, label %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge

lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mt2701_dai_num_to_i2s.exit.thread

mt2701_dai_num_to_i2s.exit.thread:                ; preds = %lor.lhs.false.i.mt2701_dai_num_to_i2s.exit.thread_crit_edge, %entry.mt2701_dai_num_to_i2s.exit.thread_crit_edge
  %dev.i50 = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, i32 noundef %7, i32 noundef %sub.i) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.mt2701_i2s_path, ptr %15, i32 %sub.i
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %arrayidx3 = getelementptr %struct.mt2701_i2s_path, ptr %15, i32 %sub.i, i32 2, i32 %17
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %20 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  %spec.select = select i1 %tobool.not, i32 %sub.i, i32 1
  %call8 = tail call i32 @mt2701_mclk_configuration(ptr noundef %3, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %24 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream, align 4
  %arrayidx14 = getelementptr %struct.mt2701_i2s_path, ptr %15, i32 %sub.i, i32 2, i32 %25
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arrayidx14, align 4
  %27 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp16 = icmp eq i32 %27, 1
  br i1 %cmp16, label %if.then17, label %if.end11.if.end21_crit_edge

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %28 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rate, align 4
  tail call fastcc void @mt2701_i2s_path_enable(ptr noundef %3, ptr noundef %arrayidx, i32 noundef 0, i32 noundef %31)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end11.if.end21_crit_edge
  %32 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stream, align 4
  %runtime23 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %34 = ptrtoint ptr %runtime23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %runtime23, align 4
  %rate24 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %rate24 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rate24, align 4
  tail call fastcc void @mt2701_i2s_path_enable(ptr noundef %3, ptr noundef %arrayidx, i32 noundef %33, i32 noundef %37)
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mt2701_dai_num_to_i2s.exit.thread
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -16, %if.end.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ], [ -22, %mt2701_dai_num_to_i2s.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt2701_afe_enable_mclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt2701_afe_disable_mclk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt2701_afe_disable_i2s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt2701_mclk_configuration(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt2701_i2s_path_enable(ptr noundef %afe, ptr noundef %i2s_path, i32 noundef %stream_dir, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mt2701_i2s_path, ptr %i2s_path, i32 0, i32 3, i32 %stream_dir
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %2 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_priv, align 4
  %arrayidx2 = getelementptr %struct.mt2701_i2s_path, ptr %i2s_path, i32 0, i32 1, i32 %stream_dir
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @mt2701_afe_i2s_fs(i32 noundef %rate)
  %shl = shl i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stream_dir)
  %cmp5 = icmp eq i32 %stream_dir, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %shl, -2147483638
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %soc = getelementptr inbounds %struct.mt2701_afe_private, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool.not, i32 139018, i32 204554
  %spec.select1.v = select i1 %tobool.not, i32 10, i32 65546
  %spec.select1 = or i32 %spec.select1.v, %shl
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %reg.0 = phi i32 [ 256, %if.then6 ], [ 260, %if.else ]
  %mask.1 = phi i32 [ -2147344630, %if.then6 ], [ %spec.select, %if.else ]
  %val.1 = phi i32 [ %or8, %if.then6 ], [ %spec.select1, %if.else ]
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %mask.1, i32 noundef %val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %i2s_asrc_fs_mask = getelementptr inbounds %struct.mt2701_i2s_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %i2s_asrc_fs_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i2s_asrc_fs_mask, align 4
  %i2s_asrc_fs_shift = getelementptr inbounds %struct.mt2701_i2s_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %i2s_asrc_fs_shift to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i2s_asrc_fs_shift, align 4
  %shl16 = shl i32 %17, %19
  %shl18 = shl i32 %call, %19
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %reg.0, i32 noundef %shl16, i32 noundef %shl18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call20 = tail call i32 @mt2701_afe_enable_i2s(ptr noundef %afe, ptr noundef %i2s_path, i32 noundef %stream_dir) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  %call.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %23, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #8
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %1, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %28, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #8
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %1, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %33, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt2701_afe_enable_i2s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_btmrg_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call1 = tail call i32 @mt2701_enable_btmrg_clk(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  %arrayidx = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 3, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt2701_btmrg_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %arrayidx = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 3, i32 %lnot.ext
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1, !range !323
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 28, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 60, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 60, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mt2701_disable_btmrg_clk(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %arrayidx9 = getelementptr %struct.mt2701_afe_private, ptr %5, i32 0, i32 3, i32 %17
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx9, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt2701_btmrg_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %5, label %do.end [
    i32 8000, label %entry.if.end_crit_edge
    i32 16000, label %entry.if.end_crit_edge34
  ]

entry.if.end_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.133, i32 noundef %5) #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge34
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 60, i32 noundef 15728640, i32 noundef 4194304, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %5)
  %cmp4 = icmp eq i32 %5, 16000
  %spec.select = select i1 %cmp4, i32 4618, i32 4106
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 28, i32 noundef 4618, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 28, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 60, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 60, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt2701_enable_btmrg_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt2701_disable_btmrg_clk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 175)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !281, !282, !283, !285, !287, !289, !290, !291, !292, !294, !295, !296, !297, !299, !301, !302, !303, !304, !306, !308, !310}
!llvm.module.flags = !{!312, !313, !314, !315, !316, !317, !318, !319}
!llvm.ident = !{!320}

!0 = !{ptr @__initcall__kmod_snd_soc_mt2701_afe__239_1483_mt2701_afe_pcm_driver_init6, !1, !"__initcall__kmod_snd_soc_mt2701_afe__239_1483_mt2701_afe_pcm_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1483, i32 1}
!2 = !{ptr @__exitcall_mt2701_afe_pcm_driver_exit, !1, !"__exitcall_mt2701_afe_pcm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1485, i32 1}
!5 = !{ptr @__UNIQUE_ID_author241, !6, !"__UNIQUE_ID_author241", i1 false, i1 false}
!6 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1486, i32 1}
!7 = !{ptr @__UNIQUE_ID_file242, !8, !"__UNIQUE_ID_file242", i1 false, i1 false}
!8 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1487, i32 1}
!9 = !{ptr @__UNIQUE_ID_license243, !8, !"__UNIQUE_ID_license243", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1475, i32 14}
!12 = !{ptr @mt2701_afe_pcm_driver, !13, !"mt2701_afe_pcm_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1473, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1342, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1347, i32 30}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1349, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt2701_afe_pcm_dev_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mt2701_afe_pcm_dev_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1355, i32 3}
!28 = !{ptr @mt2701_afe_pcm_dev_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt2701_afe_pcm_dev_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mt2701_afe_pcm_dev_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1359, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1402, i32 3}
!35 = !{ptr @mt2701_afe_pcm_dev_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mt2701_afe_pcm_dev_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1419, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mt2701_afe_pcm_dev_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @mt2701_afe_pcm_dev_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1428, i32 3}
!44 = !{ptr @mt2701_afe_pcm_dev_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt2701_afe_pcm_dev_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 979, i32 11}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 997, i32 11}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1015, i32 11}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1033, i32 11}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1051, i32 11}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1069, i32 11}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1087, i32 11}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1105, i32 11}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1123, i32 11}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1141, i32 11}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1159, i32 11}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1177, i32 11}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1195, i32 11}
!72 = !{ptr @memif_data_array, !73, !"memif_data_array", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 977, i32 41}
!74 = !{ptr @irq_data, !75, !"irq_data", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1214, i32 39}
!76 = !{ptr @mt2701_i2s_data, !77, !"mt2701_i2s_data", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1256, i32 37}
!78 = !{ptr @mt2701_afe_hardware, !79, !"mt2701_afe_hardware", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 24, i32 38}
!80 = !{ptr @mt2701_afe_i2s_rates, !81, !"mt2701_afe_i2s_rates", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 42, i32 37}
!82 = !{ptr @mt2701_afe_backup_list, !83, !"mt2701_afe_backup_list", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 63, i32 27}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 968, i32 10}
!86 = !{ptr @mt2701_afe_pcm_dai_component, !87, !"mt2701_afe_pcm_dai_component", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 966, i32 46}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 838, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 839, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 840, i32 2}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 842, i32 2}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 843, i32 2}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 844, i32 2}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 845, i32 2}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 846, i32 2}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 847, i32 2}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 848, i32 2}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 849, i32 2}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 850, i32 2}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 851, i32 2}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 852, i32 2}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 854, i32 2}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 856, i32 2}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 858, i32 2}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 860, i32 2}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 862, i32 2}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 864, i32 2}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 866, i32 2}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 868, i32 2}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 870, i32 2}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 872, i32 2}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 874, i32 2}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 876, i32 2}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 878, i32 2}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 880, i32 2}
!144 = !{ptr @.str.64, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 883, i32 2}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 886, i32 2}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 889, i32 2}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 892, i32 2}
!152 = !{ptr @mt2701_afe_pcm_widgets, !153, !"mt2701_afe_pcm_widgets", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 836, i32 41}
!154 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 813, i32 2}
!156 = !{ptr @mt2701_afe_i02_mix, !157, !"mt2701_afe_i02_mix", i1 false, i1 false}
!157 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 812, i32 38}
!158 = !{ptr @.str.70, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 757, i32 2}
!160 = !{ptr @mt2701_afe_o00_mix, !161, !"mt2701_afe_o00_mix", i1 false, i1 false}
!161 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 756, i32 38}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 761, i32 2}
!164 = !{ptr @mt2701_afe_o01_mix, !165, !"mt2701_afe_o01_mix", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 760, i32 38}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 765, i32 2}
!168 = !{ptr @mt2701_afe_o02_mix, !169, !"mt2701_afe_o02_mix", i1 false, i1 false}
!169 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 764, i32 38}
!170 = !{ptr @.str.76, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 769, i32 2}
!172 = !{ptr @mt2701_afe_o03_mix, !173, !"mt2701_afe_o03_mix", i1 false, i1 false}
!173 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 768, i32 38}
!174 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 773, i32 2}
!176 = !{ptr @mt2701_afe_o14_mix, !177, !"mt2701_afe_o14_mix", i1 false, i1 false}
!177 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 772, i32 38}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 777, i32 2}
!180 = !{ptr @mt2701_afe_o15_mix, !181, !"mt2701_afe_o15_mix", i1 false, i1 false}
!181 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 776, i32 38}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 781, i32 2}
!184 = !{ptr @mt2701_afe_o16_mix, !185, !"mt2701_afe_o16_mix", i1 false, i1 false}
!185 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 780, i32 38}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 785, i32 2}
!188 = !{ptr @mt2701_afe_o17_mix, !189, !"mt2701_afe_o17_mix", i1 false, i1 false}
!189 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 784, i32 38}
!190 = !{ptr @.str.86, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 789, i32 2}
!192 = !{ptr @mt2701_afe_o18_mix, !193, !"mt2701_afe_o18_mix", i1 false, i1 false}
!193 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 788, i32 38}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 793, i32 2}
!196 = !{ptr @mt2701_afe_o19_mix, !197, !"mt2701_afe_o19_mix", i1 false, i1 false}
!197 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 792, i32 38}
!198 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 797, i32 2}
!200 = !{ptr @mt2701_afe_o20_mix, !201, !"mt2701_afe_o20_mix", i1 false, i1 false}
!201 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 796, i32 38}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 801, i32 2}
!204 = !{ptr @mt2701_afe_o21_mix, !205, !"mt2701_afe_o21_mix", i1 false, i1 false}
!205 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 800, i32 38}
!206 = !{ptr @.str.94, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 805, i32 2}
!208 = !{ptr @mt2701_afe_o22_mix, !209, !"mt2701_afe_o22_mix", i1 false, i1 false}
!209 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 804, i32 38}
!210 = !{ptr @.str.96, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 809, i32 2}
!212 = !{ptr @mt2701_afe_o31_mix, !213, !"mt2701_afe_o31_mix", i1 false, i1 false}
!213 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 808, i32 38}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 817, i32 2}
!216 = !{ptr @mt2701_afe_multi_ch_out_i2s0, !217, !"mt2701_afe_multi_ch_out_i2s0", i1 false, i1 false}
!217 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 816, i32 38}
!218 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 822, i32 2}
!220 = !{ptr @mt2701_afe_multi_ch_out_i2s1, !221, !"mt2701_afe_multi_ch_out_i2s1", i1 false, i1 false}
!221 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 821, i32 38}
!222 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 827, i32 2}
!224 = !{ptr @mt2701_afe_multi_ch_out_i2s2, !225, !"mt2701_afe_multi_ch_out_i2s2", i1 false, i1 false}
!225 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 826, i32 38}
!226 = !{ptr @.str.104, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 832, i32 2}
!228 = !{ptr @mt2701_afe_multi_ch_out_i2s3, !229, !"mt2701_afe_multi_ch_out_i2s3", i1 false, i1 false}
!229 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 831, i32 38}
!230 = !{ptr @.str.106, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 902, i32 3}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 904, i32 3}
!234 = !{ptr @.str.108, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 906, i32 3}
!236 = !{ptr @.str.109, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 908, i32 3}
!238 = !{ptr @.str.110, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 910, i32 3}
!240 = !{ptr @.str.111, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 918, i32 16}
!242 = !{ptr @.str.112, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 920, i32 16}
!244 = !{ptr @.str.113, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 925, i32 16}
!246 = !{ptr @mt2701_afe_pcm_routes, !247, !"mt2701_afe_pcm_routes", i1 false, i1 false}
!247 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 897, i32 40}
!248 = !{ptr @.str.114, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 550, i32 11}
!250 = !{ptr @.str.115, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 564, i32 11}
!252 = !{ptr @.str.116, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 579, i32 11}
!254 = !{ptr @.str.117, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 593, i32 11}
!256 = !{ptr @.str.118, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 608, i32 11}
!258 = !{ptr @.str.119, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 621, i32 11}
!260 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 635, i32 11}
!262 = !{ptr @.str.121, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 661, i32 11}
!264 = !{ptr @.str.122, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 685, i32 11}
!266 = !{ptr @.str.123, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 697, i32 19}
!268 = !{ptr @.str.124, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 709, i32 11}
!270 = !{ptr @.str.125, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 721, i32 19}
!272 = !{ptr @.str.126, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 733, i32 11}
!274 = !{ptr @mt2701_afe_pcm_dais, !275, !"mt2701_afe_pcm_dais", i1 false, i1 false}
!275 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 547, i32 34}
!276 = !{ptr @mt2701_single_memif_dai_ops, !277, !"mt2701_single_memif_dai_ops", i1 false, i1 false}
!277 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 514, i32 37}
!278 = !{ptr @.str.127, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 376, i32 4}
!280 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @mt2701_simple_fe_startup._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @mt2701_simple_fe_startup._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @mt2701_dlm_memif_dai_ops, !284, !"mt2701_dlm_memif_dai_ops", i1 false, i1 false}
!284 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 523, i32 37}
!285 = !{ptr @mt2701_afe_i2s_ops, !286, !"mt2701_afe_i2s_ops", i1 false, i1 false}
!286 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 533, i32 37}
!287 = !{ptr @.str.129, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 278, i32 3}
!289 = !{ptr @.str.130, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @mt2701_afe_i2s_set_sysclk._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @mt2701_afe_i2s_set_sysclk._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.131, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 90, i32 3}
!294 = !{ptr @.str.132, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @mt2701_dai_num_to_i2s._entry, !293, !"_entry", i1 false, i1 false}
!296 = !{ptr @mt2701_dai_num_to_i2s._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @mt2701_btmrg_ops, !298, !"mt2701_btmrg_ops", i1 false, i1 false}
!298 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 541, i32 37}
!299 = !{ptr @.str.133, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 314, i32 3}
!301 = !{ptr @.str.134, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @mt2701_btmrg_hw_params._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @mt2701_btmrg_hw_params._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @mt2701_afe_pcm_dt_match, !305, !"mt2701_afe_pcm_dt_match", i1 false, i1 false}
!305 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1461, i32 34}
!306 = !{ptr @mt2701_soc_v1, !307, !"mt2701_soc_v1", i1 false, i1 false}
!307 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1452, i32 41}
!308 = !{ptr @mt2701_soc_v2, !309, !"mt2701_soc_v2", i1 false, i1 false}
!309 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1456, i32 41}
!310 = !{ptr @mt2701_afe_pm_ops, !311, !"mt2701_afe_pm_ops", i1 false, i1 false}
!311 = !{!"../sound/soc/mediatek/mt2701/mt2701-afe-pcm.c", i32 1468, i32 32}
!312 = !{i32 1, !"wchar_size", i32 2}
!313 = !{i32 1, !"min_enum_size", i32 4}
!314 = !{i32 8, !"branch-target-enforcement", i32 0}
!315 = !{i32 8, !"sign-return-address", i32 0}
!316 = !{i32 8, !"sign-return-address-all", i32 0}
!317 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!318 = !{i32 7, !"uwtable", i32 1}
!319 = !{i32 7, !"frame-pointer", i32 2}
!320 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!321 = !{!"branch_weights", i32 1, i32 2000}
!322 = !{!"auto-init"}
!323 = !{i8 0, i8 2}
