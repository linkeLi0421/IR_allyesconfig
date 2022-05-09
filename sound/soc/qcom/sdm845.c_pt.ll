; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/sdm845.c_pt.bc'
source_filename = "../sound/soc/qcom/sdm845.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.sdm845_snd_data = type { %struct.snd_soc_jack, i8, i8, [129 x i8], ptr, i32, i32, i32, [129 x ptr] }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }

@__initcall__kmod_snd_soc_sdm845__238_604_sdm845_snd_driver_init6 = internal global ptr @sdm845_snd_driver_init, section ".initcall6.init", align 4
@sdm845_snd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sdm845_snd_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sdm845_snd_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sdm845_snd_driver_exit = internal global ptr @sdm845_snd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [54 x i8] c"snd_soc_sdm845.description=sdm845 ASoC Machine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [50 x i8] c"snd_soc_sdm845.file=sound/soc/qcom/snd-soc-sdm845\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [30 x i8] c"snd_soc_sdm845.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msm-snd-sdm845\00", [17 x i8] zeroinitializer }, align 32
@sdm845_snd_device_id = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-sndcard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,db845c-sndcard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lenovo,yoga-c630-sndcard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdm845\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left Spk\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right Spk\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Int Mic\00", [24 x i8] zeroinitializer }, align 32
@sdm845_snd_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.2, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.3, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.4, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.6, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@sdm845_be_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @sdm845_snd_startup, ptr @sdm845_snd_shutdown, ptr @sdm845_snd_hw_params, ptr @sdm845_snd_hw_free, ptr @sdm845_snd_prepare, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@sdm845_snd_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 382, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left TDM fmt err:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sdm845_snd_startup\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/qcom/sdm845.c\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdm845_snd_startup._entry_ptr = internal global ptr @sdm845_snd_startup._entry, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@sdm845_snd_startup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 393, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right TDM slot err:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@sdm845_snd_startup._entry_ptr.17 = internal global ptr @sdm845_snd_startup._entry.15, section ".printk_index", align 4
@sdm845_snd_startup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.11, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: invalid dai id 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@sdm845_snd_startup._entry_ptr.20 = internal global ptr @sdm845_snd_startup._entry.18, section ".printk_index", align 4
@sdm845_snd_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.21, ptr @.str.11, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdm845_snd_shutdown\00", [44 x i8] zeroinitializer }, align 32
@sdm845_snd_shutdown._entry_ptr = internal global ptr @sdm845_snd_shutdown._entry, section ".printk_index", align 4
@sdm845_snd_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.11, i32 196, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_soc_dai_set_sysclk err = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sdm845_snd_hw_params\00", [43 x i8] zeroinitializer }, align 32
@sdm845_snd_hw_params._entry_ptr = internal global ptr @sdm845_snd_hw_params._entry, section ".printk_index", align 4
@sdm845_snd_hw_params._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.23, ptr @.str.11, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sdm845_snd_hw_params._entry_ptr.25 = internal global ptr @sdm845_snd_hw_params._entry.24, section ".printk_index", align 4
@sdm845_tdm_snd_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.11, i32 102, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: invalid param format 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sdm845_tdm_snd_hw_params\00", [39 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry_ptr = internal global ptr @sdm845_tdm_snd_hw_params._entry, section ".printk_index", align 4
@sdm845_tdm_snd_hw_params._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.11, i32 112, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to set tdm slot, err:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry_ptr.30 = internal global ptr @sdm845_tdm_snd_hw_params._entry.28, section ".printk_index", align 4
@tdm_slot_offset = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28], [32 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.11, i32 120, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to set channel map, err:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry_ptr.33 = internal global ptr @sdm845_tdm_snd_hw_params._entry.31, section ".printk_index", align 4
@sdm845_tdm_snd_hw_params._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.11, i32 128, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry_ptr.35 = internal global ptr @sdm845_tdm_snd_hw_params._entry.34, section ".printk_index", align 4
@sdm845_tdm_snd_hw_params._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.11, i32 136, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry_ptr.37 = internal global ptr @sdm845_tdm_snd_hw_params._entry.36, section ".printk_index", align 4
@sdm845_tdm_snd_hw_params._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.11, i32 150, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DEV0 TDM slot err:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry_ptr.40 = internal global ptr @sdm845_tdm_snd_hw_params._entry.38, section ".printk_index", align 4
@sdm845_tdm_snd_hw_params._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.11, i32 162, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DEV1 TDM slot err:%d\0A\00", [42 x i8] zeroinitializer }, align 32
@sdm845_tdm_snd_hw_params._entry_ptr.43 = internal global ptr @sdm845_tdm_snd_hw_params._entry.41, section ".printk_index", align 4
@sdm845_slim_snd_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.11, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed to get codec chan map, err:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdm845_slim_snd_hw_params\00", [38 x i8] zeroinitializer }, align 32
@sdm845_slim_snd_hw_params._entry_ptr = internal global ptr @sdm845_slim_snd_hw_params._entry, section ".printk_index", align 4
@__const.sdm845_dai_init.rx_ch = private unnamed_addr constant [13 x i32] [i32 144, i32 145, i32 146, i32 147, i32 148, i32 149, i32 150, i32 151, i32 152, i32 153, i32 154, i32 155, i32 156], align 4
@__const.sdm845_dai_init.tx_ch = private unnamed_addr constant [16 x i32] [i32 128, i32 129, i32 130, i32 131, i32 132, i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 140, i32 141, i32 142, i32 143], align 4
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@sdm845_dai_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.11, i32 253, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to add Headphone Jack\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdm845_dai_init\00", [16 x i8] zeroinitializer }, align 32
@sdm845_dai_init._entry_ptr = internal global ptr @sdm845_dai_init._entry, section ".printk_index", align 4
@sdm845_dai_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.11, i32 276, ptr @.str.51, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set jack: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdm845_dai_init._entry_ptr.52 = internal global ptr @sdm845_dai_init._entry.49, section ".printk_index", align 4
@sdm845_dai_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.11, i32 301, ptr @.str.51, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@sdm845_dai_init._entry_ptr.54 = internal global ptr @sdm845_dai_init._entry.53, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.58 = internal global [22 x i64] [i64 20, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 22, i64 72, i64 73]
@__sancov_gen_cov_switch_values.59 = internal global [22 x i64] [i64 20, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 22, i64 72, i64 73]
@__sancov_gen_cov_switch_values.60 = internal global [21 x i64] [i64 19, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 22, i64 72, i64 73]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"sdm845_snd_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 597, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 600, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"sdm845_snd_device_id\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 589, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 572, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 535, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 536, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 537, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 538, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 539, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"sdm845_snd_widgets\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 534, i32 41 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"sdm845_be_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 510, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 377, i32 9 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 381, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 388, i32 9 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 392, i32 6 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 403, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 450, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 195, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 208, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 101, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 111, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant [16 x i8] c"tdm_slot_offset\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 45, i32 21 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 119, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 127, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 135, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 149, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 161, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 69, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 245, i32 38 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 253, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 276, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private constant [27 x i8] c"../sound/soc/qcom/sdm845.c\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.222, i32 301, i32 5 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_sdm845_snd_driver_exit, ptr @__initcall__kmod_snd_soc_sdm845__238_604_sdm845_snd_driver_init6, ptr @sdm845_dai_init._entry, ptr @sdm845_dai_init._entry.49, ptr @sdm845_dai_init._entry.53, ptr @sdm845_dai_init._entry_ptr, ptr @sdm845_dai_init._entry_ptr.52, ptr @sdm845_dai_init._entry_ptr.54, ptr @sdm845_slim_snd_hw_params._entry, ptr @sdm845_slim_snd_hw_params._entry_ptr, ptr @sdm845_snd_driver_exit, ptr @sdm845_snd_hw_params._entry, ptr @sdm845_snd_hw_params._entry.24, ptr @sdm845_snd_hw_params._entry_ptr, ptr @sdm845_snd_hw_params._entry_ptr.25, ptr @sdm845_snd_shutdown._entry, ptr @sdm845_snd_shutdown._entry_ptr, ptr @sdm845_snd_startup._entry, ptr @sdm845_snd_startup._entry.15, ptr @sdm845_snd_startup._entry.18, ptr @sdm845_snd_startup._entry_ptr, ptr @sdm845_snd_startup._entry_ptr.17, ptr @sdm845_snd_startup._entry_ptr.20, ptr @sdm845_tdm_snd_hw_params._entry, ptr @sdm845_tdm_snd_hw_params._entry.28, ptr @sdm845_tdm_snd_hw_params._entry.31, ptr @sdm845_tdm_snd_hw_params._entry.34, ptr @sdm845_tdm_snd_hw_params._entry.36, ptr @sdm845_tdm_snd_hw_params._entry.38, ptr @sdm845_tdm_snd_hw_params._entry.41, ptr @sdm845_tdm_snd_hw_params._entry_ptr, ptr @sdm845_tdm_snd_hw_params._entry_ptr.30, ptr @sdm845_tdm_snd_hw_params._entry_ptr.33, ptr @sdm845_tdm_snd_hw_params._entry_ptr.35, ptr @sdm845_tdm_snd_hw_params._entry_ptr.37, ptr @sdm845_tdm_snd_hw_params._entry_ptr.40, ptr @sdm845_tdm_snd_hw_params._entry_ptr.43, ptr @sdm845_snd_driver, ptr @.str, ptr @sdm845_snd_device_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sdm845_snd_widgets, ptr @sdm845_be_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @tdm_slot_offset, ptr @.str.32, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_device_id to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_be_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_startup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_startup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_snd_hw_params._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_tdm_snd_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_tdm_snd_hw_params._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tdm_slot_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_tdm_snd_hw_params._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_tdm_snd_hw_params._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_tdm_snd_hw_params._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_tdm_snd_hw_params._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_tdm_snd_hw_params._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_slim_snd_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dai_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dai_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dai_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdm845_snd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sdm845_snd_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdm845_snd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @sdm845_snd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdm845_snd_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i34 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 884, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i34, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_name = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %driver_name, align 4
  %dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 35
  %1 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sdm845_snd_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 36
  %2 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %num_dapm_widgets, align 4
  %dev6 = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev6, align 4
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call7 = tail call i32 @qcom_snd_parse_of(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %card11 = getelementptr inbounds %struct.sdm845_snd_data, ptr %call.i34, i32 0, i32 4
  %6 = ptrtoint ptr %card11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %card11, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 57
  %7 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i34, ptr %drvdata.i, align 4
  %dai_link.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 24
  %num_links.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 25
  %8 = ptrtoint ptr %num_links.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.i = icmp sgt i32 %9, 0
  br i1 %cmp8.i, label %if.end10.land.rhs.i_crit_edge, label %if.end10.sdm845_add_ops.exit_crit_edge

if.end10.sdm845_add_ops.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdm845_add_ops.exit

if.end10.land.rhs.i_crit_edge:                    ; preds = %if.end10
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.end10.land.rhs.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %if.end10.land.rhs.i_crit_edge ]
  %10 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dai_link.i, align 4
  %arrayidx.i = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %i.09.i
  %tobool.not.i = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not.i, label %land.rhs.i.sdm845_add_ops.exit_crit_edge, label %for.body.i

land.rhs.i.sdm845_add_ops.exit_crit_edge:         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdm845_add_ops.exit

for.body.i:                                       ; preds = %land.rhs.i
  %no_pcm.i = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %i.09.i, i32 18
  %12 = ptrtoint ptr %no_pcm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i = load i32, ptr %no_pcm.i, align 4
  %13 = and i32 %bf.load.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.not.i = icmp eq i32 %13, 0
  br i1 %cmp1.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %i.09.i, i32 16
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sdm845_be_ops, ptr %ops.i, align 4
  %be_hw_params_fixup.i = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %i.09.i, i32 15
  %15 = ptrtoint ptr %be_hw_params_fixup.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sdm845_be_hw_params_fixup, ptr %be_hw_params_fixup.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %11, i32 %i.09.i, i32 13
  %16 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sdm845_dai_init, ptr %init.i, align 4
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %17 = ptrtoint ptr %num_links.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_links.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %18
  br i1 %cmp.i, label %if.end.i.land.rhs.i_crit_edge, label %if.end.i.sdm845_add_ops.exit_crit_edge

if.end.i.sdm845_add_ops.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdm845_add_ops.exit

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

sdm845_add_ops.exit:                              ; preds = %if.end.i.sdm845_add_ops.exit_crit_edge, %land.rhs.i.sdm845_add_ops.exit_crit_edge, %if.end10.sdm845_add_ops.exit_crit_edge
  %call12 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %sdm845_add_ops.exit, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %sdm845_add_ops.exit ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_snd_parse_of(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sdm845_be_hw_params_fixup(ptr nocapture noundef readnone %rtd, ptr nocapture noundef %params) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %arrayidx.i9 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %arrayidx.i10 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %0 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 48000, ptr %max, align 4
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 48000, ptr %arrayidx.i, align 4
  %max3 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2, i32 1
  %2 = ptrtoint ptr %max3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %max3, align 4
  %3 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %arrayidx.i9, align 4
  %4 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i10, align 4
  %or.i.i = or i32 %5, 4
  store i32 %or.i.i, ptr %arrayidx.i10, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdm845_dai_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  %rx_ch = alloca [13 x i32], align 4
  %tx_ch = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %10 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata.i, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 2
  %12 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dai_link, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %rx_ch) #8
  %14 = call ptr @memcpy(ptr %rx_ch, ptr @__const.sdm845_dai_init.rx_ch, i32 52)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tx_ch) #8
  %15 = call ptr @memcpy(ptr %tx_ch, ptr @__const.sdm845_dai_init.tx_ch, i32 64)
  %jack_setup = getelementptr inbounds %struct.sdm845_snd_data, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %jack_setup to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %jack_setup, align 4, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @snd_soc_card_jack_new(ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef 30723, ptr noundef %11, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.47) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %jack8 = getelementptr inbounds %struct.snd_soc_jack, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %jack8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jack8, align 4
  %call9 = tail call i32 @snd_jack_set_key(ptr noundef %21, i32 noundef 16384, i32 noundef 164) #8
  %call10 = tail call i32 @snd_jack_set_key(ptr noundef %21, i32 noundef 8192, i32 noundef 582) #8
  %call11 = tail call i32 @snd_jack_set_key(ptr noundef %21, i32 noundef 4096, i32 noundef 115) #8
  %call12 = tail call i32 @snd_jack_set_key(ptr noundef %21, i32 noundef 2048, i32 noundef 114) #8
  %22 = ptrtoint ptr %jack_setup to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %jack_setup, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry.if.end14_crit_edge
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end14.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 2, label %if.end14.sw.bb28_crit_edge
    i32 3, label %if.end14.sw.bb28_crit_edge120
    i32 4, label %if.end14.sw.bb28_crit_edge121
    i32 5, label %if.end14.sw.bb28_crit_edge122
    i32 6, label %if.end14.sw.bb28_crit_edge123
    i32 7, label %if.end14.sw.bb28_crit_edge124
    i32 8, label %if.end14.sw.bb28_crit_edge125
    i32 9, label %if.end14.sw.bb28_crit_edge126
    i32 10, label %if.end14.sw.bb28_crit_edge127
    i32 11, label %if.end14.sw.bb28_crit_edge128
    i32 12, label %if.end14.sw.bb28_crit_edge129
    i32 13, label %if.end14.sw.bb28_crit_edge130
    i32 14, label %if.end14.sw.bb28_crit_edge131
    i32 15, label %if.end14.sw.bb28_crit_edge132
  ]

if.end14.sw.bb28_crit_edge132:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge131:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge130:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge129:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge128:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge127:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge126:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge125:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge124:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge123:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge122:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge121:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge120:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.sw.bb28_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end14
  %jack16 = getelementptr inbounds %struct.snd_soc_jack, ptr %11, i32 0, i32 1
  %26 = ptrtoint ptr %jack16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %jack16, align 4
  %component17 = getelementptr inbounds %struct.snd_soc_dai, ptr %7, i32 0, i32 12
  %28 = ptrtoint ptr %component17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %component17, align 4
  %private_data = getelementptr inbounds %struct.snd_jack, ptr %27, i32 0, i32 9
  %30 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_jack, ptr %27, i32 0, i32 10
  %31 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sdm845_jack_free, ptr %private_free, align 4
  %call19 = tail call i32 @snd_soc_component_set_jack(ptr noundef %29, ptr noundef %11, ptr noundef null) #8
  %32 = zext i32 %call19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call19, label %do.end25 [
    i32 0, label %sw.bb.cleanup_crit_edge
    i32 -524, label %sw.bb.cleanup_crit_edge133
  ]

sw.bb.cleanup_crit_edge133:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end25:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.50, i32 noundef %call19) #11
  br label %cleanup

sw.bb28:                                          ; preds = %if.end14.sw.bb28_crit_edge, %if.end14.sw.bb28_crit_edge120, %if.end14.sw.bb28_crit_edge121, %if.end14.sw.bb28_crit_edge122, %if.end14.sw.bb28_crit_edge123, %if.end14.sw.bb28_crit_edge124, %if.end14.sw.bb28_crit_edge125, %if.end14.sw.bb28_crit_edge126, %if.end14.sw.bb28_crit_edge127, %if.end14.sw.bb28_crit_edge128, %if.end14.sw.bb28_crit_edge129, %if.end14.sw.bb28_crit_edge130, %if.end14.sw.bb28_crit_edge131, %if.end14.sw.bb28_crit_edge132
  %slim_port_setup = getelementptr inbounds %struct.sdm845_snd_data, ptr %11, i32 0, i32 2
  %35 = ptrtoint ptr %slim_port_setup to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %slim_port_setup, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool29.not = icmp eq i8 %36, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb28
  %no_pcm = getelementptr inbounds %struct.snd_soc_dai_link, ptr %13, i32 0, i32 18
  %37 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load = load i32, ptr %no_pcm, align 4
  %38 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool30.not = icmp eq i32 %38, 0
  br i1 %tobool30.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 10
  %39 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp33113.not = icmp eq i32 %40, 0
  br i1 %cmp33113.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.land.rhs_crit_edge

for.cond.preheader.land.rhs_crit_edge:            ; preds = %for.cond.preheader
  br label %land.rhs

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.cond.preheader.land.rhs_crit_edge
  %i.0114 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %for.cond.preheader.land.rhs_crit_edge ]
  %41 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dais, align 4
  %43 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_cpus, align 4
  %add36 = add i32 %44, %i.0114
  %arrayidx37 = getelementptr ptr, ptr %42, i32 %add36
  %45 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx37, align 4
  %tobool38.not = icmp eq ptr %46, null
  br i1 %tobool38.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %call40 = call i32 @snd_soc_dai_set_channel_map(ptr noundef nonnull %46, i32 noundef 16, ptr noundef nonnull %tx_ch, i32 noundef 13, ptr noundef nonnull %rx_ch) #8
  %47 = zext i32 %call40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call40, label %for.body.cleanup_crit_edge [
    i32 0, label %for.body.if.end45_crit_edge
    i32 -524, label %for.body.if.end45_crit_edge134
  ]

for.body.if.end45_crit_edge134:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %for.body.if.end45_crit_edge, %for.body.if.end45_crit_edge134
  %call46 = call i32 @snd_soc_dai_set_sysclk(ptr noundef nonnull %46, i32 noundef 0, i32 noundef 9600000, i32 noundef 0) #8
  %component47 = getelementptr inbounds %struct.snd_soc_dai, ptr %46, i32 0, i32 12
  %48 = ptrtoint ptr %component47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %component47, align 4
  %call49 = call i32 @snd_soc_component_set_jack(ptr noundef %49, ptr noundef %11, ptr noundef null) #8
  %50 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call49, label %do.end56 [
    i32 0, label %if.end45.for.inc_crit_edge
    i32 -524, label %if.end45.for.inc_crit_edge135
  ]

if.end45.for.inc_crit_edge135:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 5
  %51 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev57, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.50, i32 noundef %call49) #11
  br label %cleanup

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %if.end45.for.inc_crit_edge135
  %inc = add nuw i32 %i.0114, 1
  %53 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_codecs, align 4
  %cmp33 = icmp ult i32 %inc, %54
  br i1 %cmp33, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %55 = ptrtoint ptr %slim_port_setup to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %slim_port_setup, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end56, %for.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %do.end25, %sw.bb.cleanup_crit_edge, %sw.bb.cleanup_crit_edge133, %if.end14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call49, %do.end56 ], [ %call19, %do.end25 ], [ %call5, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %sw.bb28.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge133 ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %for.end ], [ %call40, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tx_ch) #8
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %rx_ch) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdm845_snd_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cpus, align 4
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %11
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %15, label %do.end58 [
    i32 16, label %entry.sw.bb_crit_edge
    i32 17, label %entry.sw.bb_crit_edge109
    i32 19, label %sw.bb8
    i32 22, label %sw.bb17
    i32 72, label %entry.sw.bb20_crit_edge
    i32 73, label %entry.sw.bb20_crit_edge110
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %entry.cleanup_crit_edge111
    i32 4, label %entry.cleanup_crit_edge112
    i32 5, label %entry.cleanup_crit_edge113
    i32 6, label %entry.cleanup_crit_edge114
    i32 7, label %entry.cleanup_crit_edge115
    i32 8, label %entry.cleanup_crit_edge116
    i32 9, label %entry.cleanup_crit_edge117
    i32 10, label %entry.cleanup_crit_edge118
    i32 11, label %entry.cleanup_crit_edge119
    i32 12, label %entry.cleanup_crit_edge120
    i32 13, label %entry.cleanup_crit_edge121
    i32 14, label %entry.cleanup_crit_edge122
    i32 15, label %entry.cleanup_crit_edge123
  ]

entry.cleanup_crit_edge123:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge122:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge121:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge120:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge119:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge118:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge117:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge116:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge115:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge114:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge113:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge112:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge111:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.sw.bb20_crit_edge110:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

entry.sw.bb20_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb20

entry.sw.bb_crit_edge109:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge109
  %pri_mi2s_clk_count = getelementptr inbounds %struct.sdm845_snd_data, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %pri_mi2s_clk_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pri_mi2s_clk_count, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %pri_mi2s_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 768, i32 noundef 24576000, i32 noundef 0) #8
  %call5 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 256, i32 noundef 1536000, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %call6 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %9, i32 noundef 16384) #8
  %call7 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %13, i32 noundef 16384) #8
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %sec_mi2s_clk_count = getelementptr inbounds %struct.sdm845_snd_data, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %sec_mi2s_clk_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sec_mi2s_clk_count, align 4
  %inc10 = add i32 %20, 1
  store i32 %inc10, ptr %sec_mi2s_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11 = icmp eq i32 %20, 0
  br i1 %cmp11, label %if.then12, label %sw.bb8.if.end14_crit_edge

sw.bb8.if.end14_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 258, i32 noundef 1536000, i32 noundef 1) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %sw.bb8.if.end14_crit_edge
  %call15 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %9, i32 noundef 16384) #8
  %call16 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %13, i32 noundef 16385) #8
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 262, i32 noundef 1536000, i32 noundef 0) #8
  %call19 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %9, i32 noundef 16384) #8
  br label %cleanup

sw.bb20:                                          ; preds = %entry.sw.bb20_crit_edge, %entry.sw.bb20_crit_edge110
  %quat_tdm_clk_count = getelementptr inbounds %struct.sdm845_snd_data, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %quat_tdm_clk_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quat_tdm_clk_count, align 4
  %inc21 = add i32 %22, 1
  store i32 %inc21, ptr %quat_tdm_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp22 = icmp eq i32 %22, 0
  br i1 %cmp22, label %if.then23, label %sw.bb20.if.end25_crit_edge

sw.bb20.if.end25_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 518, i32 noundef 6144000, i32 noundef 0) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %sw.bb20.if.end25_crit_edge
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp27107.not = icmp eq i32 %24, 0
  br i1 %cmp27107.not, label %if.end25.cleanup_crit_edge, label %if.end25.land.rhs_crit_edge

if.end25.land.rhs_crit_edge:                      ; preds = %if.end25
  br label %land.rhs

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end25.land.rhs_crit_edge
  %j.0108 = phi i32 [ %inc54, %for.inc.land.rhs_crit_edge ], [ 0, %if.end25.land.rhs_crit_edge ]
  %25 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dais, align 4
  %27 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cpus, align 4
  %add30 = add i32 %28, %j.0108
  %arrayidx31 = getelementptr ptr, ptr %26, i32 %add30
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx31, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %land.rhs
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %component, align 4
  %name_prefix = getelementptr inbounds %struct.snd_soc_component, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %name_prefix to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name_prefix, align 4
  %call32 = tail call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(5) @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then34, label %for.body.if.end39_crit_edge

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then34:                                        ; preds = %for.body
  %call35 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef nonnull %30, i32 noundef 17157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end, label %if.then34.if.end39_crit_edge

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

do.end:                                           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.9, i32 noundef %call35) #11
  br label %cleanup

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %for.body.if.end39_crit_edge
  %37 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %component, align 4
  %name_prefix41 = getelementptr inbounds %struct.snd_soc_component, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %name_prefix41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name_prefix41, align 4
  %call42 = tail call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(6) @.str.14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then44:                                        ; preds = %if.end39
  %call45 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef nonnull %30, i32 noundef 17157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end50, label %if.then44.for.inc_crit_edge

if.then44.for.inc_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.16, i32 noundef %call45) #11
  br label %cleanup

for.inc:                                          ; preds = %if.then44.for.inc_crit_edge, %if.end39.for.inc_crit_edge
  %inc54 = add nuw i32 %j.0108, 1
  %43 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_codecs, align 4
  %cmp27 = icmp ult i32 %inc54, %44
  br i1 %cmp27, label %for.inc.land.rhs_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

do.end58:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, i32 noundef %15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %for.inc.cleanup_crit_edge, %do.end50, %do.end, %land.rhs.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %sw.bb17, %if.end14, %if.end, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge111, %entry.cleanup_crit_edge112, %entry.cleanup_crit_edge113, %entry.cleanup_crit_edge114, %entry.cleanup_crit_edge115, %entry.cleanup_crit_edge116, %entry.cleanup_crit_edge117, %entry.cleanup_crit_edge118, %entry.cleanup_crit_edge119, %entry.cleanup_crit_edge120, %entry.cleanup_crit_edge121, %entry.cleanup_crit_edge122, %entry.cleanup_crit_edge123
  %retval.0 = phi i32 [ %call45, %do.end50 ], [ %call35, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge111 ], [ 0, %entry.cleanup_crit_edge112 ], [ 0, %entry.cleanup_crit_edge113 ], [ 0, %entry.cleanup_crit_edge114 ], [ 0, %entry.cleanup_crit_edge115 ], [ 0, %entry.cleanup_crit_edge116 ], [ 0, %entry.cleanup_crit_edge117 ], [ 0, %entry.cleanup_crit_edge118 ], [ 0, %entry.cleanup_crit_edge119 ], [ 0, %entry.cleanup_crit_edge120 ], [ 0, %entry.cleanup_crit_edge121 ], [ 0, %entry.cleanup_crit_edge122 ], [ 0, %entry.cleanup_crit_edge123 ], [ 0, %do.end58 ], [ 0, %sw.bb17 ], [ 0, %if.end14 ], [ 0, %if.end ], [ 0, %if.end25.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdm845_snd_shutdown(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %11, label %do.end [
    i32 16, label %entry.sw.bb_crit_edge
    i32 17, label %entry.sw.bb_crit_edge27
    i32 19, label %sw.bb4
    i32 72, label %entry.sw.bb10_crit_edge
    i32 73, label %entry.sw.bb10_crit_edge28
    i32 22, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge29
    i32 3, label %entry.sw.epilog_crit_edge30
    i32 4, label %entry.sw.epilog_crit_edge31
    i32 5, label %entry.sw.epilog_crit_edge32
    i32 6, label %entry.sw.epilog_crit_edge33
    i32 7, label %entry.sw.epilog_crit_edge34
    i32 8, label %entry.sw.epilog_crit_edge35
    i32 9, label %entry.sw.epilog_crit_edge36
    i32 10, label %entry.sw.epilog_crit_edge37
    i32 11, label %entry.sw.epilog_crit_edge38
    i32 12, label %entry.sw.epilog_crit_edge39
    i32 13, label %entry.sw.epilog_crit_edge40
    i32 14, label %entry.sw.epilog_crit_edge41
    i32 15, label %entry.sw.epilog_crit_edge42
  ]

entry.sw.epilog_crit_edge42:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge41:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge40:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge39:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge38:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge37:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge36:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge35:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge34:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge31:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge30:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge29:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.bb10_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge27
  %pri_mi2s_clk_count = getelementptr inbounds %struct.sdm845_snd_data, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %pri_mi2s_clk_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pri_mi2s_clk_count, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %pri_mi2s_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 768, i32 noundef 0, i32 noundef 0) #8
  %call3 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 256, i32 noundef 0, i32 noundef 0) #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %sec_mi2s_clk_count = getelementptr inbounds %struct.sdm845_snd_data, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %sec_mi2s_clk_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sec_mi2s_clk_count, align 4
  %dec5 = add i32 %16, -1
  store i32 %dec5, ptr %sec_mi2s_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec5)
  %cmp6 = icmp eq i32 %dec5, 0
  br i1 %cmp6, label %if.then7, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then7:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 258, i32 noundef 0, i32 noundef 1) #8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge28
  %quat_tdm_clk_count = getelementptr inbounds %struct.sdm845_snd_data, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %quat_tdm_clk_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quat_tdm_clk_count, align 4
  %dec11 = add i32 %18, -1
  store i32 %dec11, ptr %quat_tdm_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec11)
  %cmp12 = icmp eq i32 %dec11, 0
  br i1 %cmp12, label %if.then13, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 518, i32 noundef 0, i32 noundef 0) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef %11) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then13, %sw.bb10.sw.epilog_crit_edge, %if.then7, %sw.bb4.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge29, %entry.sw.epilog_crit_edge30, %entry.sw.epilog_crit_edge31, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33, %entry.sw.epilog_crit_edge34, %entry.sw.epilog_crit_edge35, %entry.sw.epilog_crit_edge36, %entry.sw.epilog_crit_edge37, %entry.sw.epilog_crit_edge38, %entry.sw.epilog_crit_edge39, %entry.sw.epilog_crit_edge40, %entry.sw.epilog_crit_edge41, %entry.sw.epilog_crit_edge42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdm845_snd_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  %rx_ch.i = alloca [13 x i32], align 4
  %tx_ch.i = alloca [16 x i32], align 4
  %rx_ch_cnt.i = alloca i32, align 4
  %tx_ch_cnt.i = alloca i32, align 4
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
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %7, label %do.end10 [
    i32 16, label %entry.sw.bb_crit_edge
    i32 17, label %entry.sw.bb_crit_edge40
    i32 72, label %entry.sw.bb4_crit_edge
    i32 73, label %entry.sw.bb4_crit_edge41
    i32 2, label %entry.sw.bb6_crit_edge
    i32 3, label %entry.sw.bb6_crit_edge42
    i32 4, label %entry.sw.bb6_crit_edge43
    i32 5, label %entry.sw.bb6_crit_edge44
    i32 6, label %entry.sw.bb6_crit_edge45
    i32 7, label %entry.sw.bb6_crit_edge46
    i32 8, label %entry.sw.bb6_crit_edge47
    i32 9, label %entry.sw.bb6_crit_edge48
    i32 10, label %entry.sw.bb6_crit_edge49
    i32 11, label %entry.sw.bb6_crit_edge50
    i32 12, label %entry.sw.bb6_crit_edge51
    i32 13, label %entry.sw.bb6_crit_edge52
    i32 14, label %entry.sw.bb6_crit_edge53
    i32 15, label %entry.sw.bb6_crit_edge54
    i32 22, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.bb6_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb4_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge40
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_cpus, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %10
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx2, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %component, align 4
  %call = tail call i32 @rt5663_sel_asrc_clk_src(ptr noundef %14, i32 noundef 3, i32 noundef 1) #8
  %call3 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %12, i32 noundef 0, i32 noundef 24576000, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef %call3) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge41
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i118.i, label %params_format.exit.thread123.i

params_format.exit.thread123.i:                   ; preds = %sw.bb4
  %19 = and i32 %18, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %cond127.i = icmp eq i32 %19, 4
  br i1 %cond127.i, label %sw.bb.i, label %do.end.thread128.i

do.end.thread128.i:                               ; preds = %params_format.exit.thread123.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  br label %if.then.i.i115.i

sw.bb.i:                                          ; preds = %params_format.exit.thread123.i
  %arrayidx.i.i109.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i109.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %24 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i.i115.i:                                 ; preds = %for.inc.i.i118.i.if.then.i.i115.i_crit_edge, %do.end.thread128.i
  %26 = phi ptr [ %29, %for.inc.i.i118.i.if.then.i.i115.i_crit_edge ], [ %21, %do.end.thread128.i ]
  %i.09.lcssa.i.i112.i = phi i32 [ 32, %for.inc.i.i118.i.if.then.i.i115.i_crit_edge ], [ 0, %do.end.thread128.i ]
  %.lcssa.i.i113.i = phi i32 [ %31, %for.inc.i.i118.i.if.then.i.i115.i_crit_edge ], [ %18, %do.end.thread128.i ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i113.i, i1 true) #8, !range !121
  %add.i.i114.i = or i32 %27, %i.09.lcssa.i.i112.i
  br label %params_format.exit120.i

for.inc.i.i118.i:                                 ; preds = %sw.bb4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx.1.i.i116.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i116.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i117.i = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i117.i, label %for.inc.i.i118.i.params_format.exit120.i_crit_edge, label %for.inc.i.i118.i.if.then.i.i115.i_crit_edge

for.inc.i.i118.i.if.then.i.i115.i_crit_edge:      ; preds = %for.inc.i.i118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i115.i

for.inc.i.i118.i.params_format.exit120.i_crit_edge: ; preds = %for.inc.i.i118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit120.i

params_format.exit120.i:                          ; preds = %for.inc.i.i118.i.params_format.exit120.i_crit_edge, %if.then.i.i115.i
  %32 = phi ptr [ %26, %if.then.i.i115.i ], [ %29, %for.inc.i.i118.i.params_format.exit120.i_crit_edge ]
  %retval.0.i.i119.i = phi i32 [ %add.i.i114.i, %if.then.i.i115.i ], [ 0, %for.inc.i.i118.i.params_format.exit120.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.i119.i) #11
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb.i
  %call3.i = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %5, i32 noundef 0, i32 noundef 3, i32 noundef 8, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i

do.end8.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %call3.i) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then.i
  %call10.i = tail call i32 @snd_soc_dai_set_channel_map(ptr noundef %5, i32 noundef 0, ptr noundef null, i32 noundef %23, ptr noundef nonnull @tdm_slot_offset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end15.i, label %if.end.i.if.end34.i_crit_edge

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef %call10.i) #11
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.bb.i
  %call18.i = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %5, i32 noundef 15, i32 noundef 0, i32 noundef 8, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %do.end23.i, label %if.end25.i

do.end23.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %call18.i) #11
  br label %sw.epilog

if.end25.i:                                       ; preds = %if.else.i
  %call26.i = tail call i32 @snd_soc_dai_set_channel_map(ptr noundef %5, i32 noundef %23, ptr noundef nonnull @tdm_slot_offset, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %do.end31.i, label %if.end25.i.if.end34.i_crit_edge

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef %call26.i) #11
  br label %sw.epilog

if.end34.i:                                       ; preds = %if.end25.i.if.end34.i_crit_edge, %if.end.i.if.end34.i_crit_edge
  %ret.0.i = phi i32 [ %call10.i, %if.end.i.if.end34.i_crit_edge ], [ %call26.i, %if.end25.i.if.end34.i_crit_edge ]
  %num_codecs.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_codecs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp35131.not.i = icmp eq i32 %42, 0
  br i1 %cmp35131.not.i, label %if.end34.i.sw.epilog_crit_edge, label %land.rhs.lr.ph.i

if.end34.i.sw.epilog_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.rhs.lr.ph.i:                                 ; preds = %if.end34.i
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %j.0133.i = phi i32 [ 0, %land.rhs.lr.ph.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %ret.1132.i = phi i32 [ %ret.0.i, %land.rhs.lr.ph.i ], [ %ret.3.i, %for.inc.i.land.rhs.i_crit_edge ]
  %43 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dais, align 4
  %45 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_cpus.i, align 4
  %add.i = add i32 %46, %j.0133.i
  %arrayidx37.i = getelementptr ptr, ptr %44, i32 %add.i
  %47 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx37.i, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %land.rhs.i.sw.epilog_crit_edge, label %for.body.i

land.rhs.i.sw.epilog_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i:                                       ; preds = %land.rhs.i
  %component.i = getelementptr inbounds %struct.snd_soc_dai, ptr %48, i32 0, i32 12
  %49 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %component.i, align 4
  %name_prefix.i = getelementptr inbounds %struct.snd_soc_component, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %name_prefix.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name_prefix.i, align 4
  %call38.i = tail call i32 @strcmp(ptr noundef %52, ptr noundef nonnull dereferenceable(5) @.str.8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %for.body.i.if.end49.i_crit_edge

for.body.i.if.end49.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then40.i:                                      ; preds = %for.body.i
  %call41.i = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %48, i32 noundef 48, i32 noundef 3, i32 noundef 8, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %do.end46.i, label %if.then40.i.if.end49.i_crit_edge

if.then40.i.if.end49.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

do.end46.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.39, i32 noundef %call41.i) #11
  br label %sw.epilog

if.end49.i:                                       ; preds = %if.then40.i.if.end49.i_crit_edge, %for.body.i.if.end49.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1132.i, %for.body.i.if.end49.i_crit_edge ], [ %call41.i, %if.then40.i.if.end49.i_crit_edge ]
  %55 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %component.i, align 4
  %name_prefix51.i = getelementptr inbounds %struct.snd_soc_component, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name_prefix51.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name_prefix51.i, align 4
  %call52.i = tail call i32 @strcmp(ptr noundef %58, ptr noundef nonnull dereferenceable(6) @.str.14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then54.i, label %if.end49.i.for.inc.i_crit_edge

if.end49.i.for.inc.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then54.i:                                      ; preds = %if.end49.i
  %call55.i = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %48, i32 noundef 192, i32 noundef 3, i32 noundef 8, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %do.end60.i, label %if.then54.i.for.inc.i_crit_edge

if.then54.i.for.inc.i_crit_edge:                  ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end60.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.42, i32 noundef %call55.i) #11
  br label %sw.epilog

for.inc.i:                                        ; preds = %if.then54.i.for.inc.i_crit_edge, %if.end49.i.for.inc.i_crit_edge
  %ret.3.i = phi i32 [ %ret.2.i, %if.end49.i.for.inc.i_crit_edge ], [ %call55.i, %if.then54.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %j.0133.i, 1
  %61 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_codecs.i, align 4
  %cmp35.i = icmp ult i32 %inc.i, %62
  br i1 %cmp35.i, label %for.inc.i.land.rhs.i_crit_edge, label %for.inc.i.sw.epilog_crit_edge

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge42, %entry.sw.bb6_crit_edge43, %entry.sw.bb6_crit_edge44, %entry.sw.bb6_crit_edge45, %entry.sw.bb6_crit_edge46, %entry.sw.bb6_crit_edge47, %entry.sw.bb6_crit_edge48, %entry.sw.bb6_crit_edge49, %entry.sw.bb6_crit_edge50, %entry.sw.bb6_crit_edge51, %entry.sw.bb6_crit_edge52, %entry.sw.bb6_crit_edge53, %entry.sw.bb6_crit_edge54
  %card.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %64, i32 0, i32 57
  %65 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %drvdata.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %rx_ch.i) #8
  %67 = call ptr @memset(ptr %rx_ch.i, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tx_ch.i) #8
  %68 = call ptr @memset(ptr %tx_ch.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_ch_cnt.i) #8
  %69 = ptrtoint ptr %rx_ch_cnt.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %rx_ch_cnt.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_ch_cnt.i) #8
  %70 = ptrtoint ptr %tx_ch_cnt.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %tx_ch_cnt.i, align 4
  %num_codecs.i25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %71 = ptrtoint ptr %num_codecs.i25 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_codecs.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp3.not.i = icmp eq i32 %72, 0
  br i1 %cmp3.not.i, label %sw.bb6.sdm845_slim_snd_hw_params.exit_crit_edge, label %land.rhs.lr.ph.i28

sw.bb6.sdm845_slim_snd_hw_params.exit_crit_edge:  ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdm845_slim_snd_hw_params.exit

land.rhs.lr.ph.i28:                               ; preds = %sw.bb6
  %num_cpus.i26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %stream.i27 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  br label %land.rhs.i31

land.rhs.i31:                                     ; preds = %for.inc.i38.land.rhs.i31_crit_edge, %land.rhs.lr.ph.i28
  %i.04.i = phi i32 [ 0, %land.rhs.lr.ph.i28 ], [ %inc.i36, %for.inc.i38.land.rhs.i31_crit_edge ]
  %73 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dais, align 4
  %75 = ptrtoint ptr %num_cpus.i26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_cpus.i26, align 4
  %add.i29 = add i32 %76, %i.04.i
  %arrayidx2.i = getelementptr ptr, ptr %74, i32 %add.i29
  %77 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i30 = icmp eq ptr %78, null
  br i1 %tobool.not.i30, label %land.rhs.i31.sdm845_slim_snd_hw_params.exit_crit_edge, label %for.body.i32

land.rhs.i31.sdm845_slim_snd_hw_params.exit_crit_edge: ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdm845_slim_snd_hw_params.exit

for.body.i32:                                     ; preds = %land.rhs.i31
  %driver.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %driver.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.snd_soc_dai_driver, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i.i, align 8
  %get_stream.i.i = getelementptr inbounds %struct.snd_soc_dai_ops, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %get_stream.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %get_stream.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %for.body.i32.if.end.i34_crit_edge, label %snd_soc_dai_get_stream.exit.i

for.body.i32.if.end.i34_crit_edge:                ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i34

snd_soc_dai_get_stream.exit.i:                    ; preds = %for.body.i32
  %85 = ptrtoint ptr %stream.i27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %stream.i27, align 4
  %call.i.i = call ptr %84(ptr noundef nonnull %78, i32 noundef %86) #8
  %cmp5.not.i = icmp eq ptr %call.i.i, inttoptr (i32 -524 to ptr)
  br i1 %cmp5.not.i, label %snd_soc_dai_get_stream.exit.i.if.end.i34_crit_edge, label %if.then.i33

snd_soc_dai_get_stream.exit.i.if.end.i34_crit_edge: ; preds = %snd_soc_dai_get_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i34

if.then.i33:                                      ; preds = %snd_soc_dai_get_stream.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %id, align 4
  %arrayidx7.i = getelementptr %struct.sdm845_snd_data, ptr %66, i32 0, i32 8, i32 %88
  %89 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i.i, ptr %arrayidx7.i, align 4
  br label %if.end.i34

if.end.i34:                                       ; preds = %if.then.i33, %snd_soc_dai_get_stream.exit.i.if.end.i34_crit_edge, %for.body.i32.if.end.i34_crit_edge
  %call9.i = call i32 @snd_soc_dai_get_channel_map(ptr noundef nonnull %78, ptr noundef nonnull %tx_ch_cnt.i, ptr noundef nonnull %tx_ch.i, ptr noundef nonnull %rx_ch_cnt.i, ptr noundef nonnull %rx_ch.i) #8
  %90 = zext i32 %call9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call9.i, label %do.end.i [
    i32 -524, label %if.end.i34.for.inc.i38_crit_edge
    i32 0, label %if.end17.i
  ]

if.end.i34.for.inc.i38_crit_edge:                 ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i38

do.end.i:                                         ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call9.i) #11
  br label %sdm845_slim_snd_hw_params.exit

if.end17.i:                                       ; preds = %if.end.i34
  %91 = ptrtoint ptr %stream.i27 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stream.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp19.i35 = icmp eq i32 %92, 0
  br i1 %cmp19.i35, label %if.then20.i, label %if.else23.i

if.then20.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %rx_ch_cnt.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_ch_cnt.i, align 4
  %call22.i = call i32 @snd_soc_dai_set_channel_map(ptr noundef %5, i32 noundef 0, ptr noundef null, i32 noundef %94, ptr noundef nonnull %rx_ch.i) #8
  br label %for.inc.i38

if.else23.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %tx_ch_cnt.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tx_ch_cnt.i, align 4
  %call25.i = call i32 @snd_soc_dai_set_channel_map(ptr noundef %5, i32 noundef %96, ptr noundef nonnull %tx_ch.i, i32 noundef 0, ptr noundef null) #8
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %if.else23.i, %if.then20.i, %if.end.i34.for.inc.i38_crit_edge
  %inc.i36 = add nuw i32 %i.04.i, 1
  %97 = ptrtoint ptr %num_codecs.i25 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_codecs.i25, align 4
  %cmp.i37 = icmp ult i32 %inc.i36, %98
  br i1 %cmp.i37, label %for.inc.i38.land.rhs.i31_crit_edge, label %for.inc.i38.sdm845_slim_snd_hw_params.exit_crit_edge

for.inc.i38.sdm845_slim_snd_hw_params.exit_crit_edge: ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %sdm845_slim_snd_hw_params.exit

for.inc.i38.land.rhs.i31_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i31

sdm845_slim_snd_hw_params.exit:                   ; preds = %for.inc.i38.sdm845_slim_snd_hw_params.exit_crit_edge, %do.end.i, %land.rhs.i31.sdm845_slim_snd_hw_params.exit_crit_edge, %sw.bb6.sdm845_slim_snd_hw_params.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call9.i, %do.end.i ], [ 0, %sw.bb6.sdm845_slim_snd_hw_params.exit_crit_edge ], [ 0, %for.inc.i38.sdm845_slim_snd_hw_params.exit_crit_edge ], [ 0, %land.rhs.i31.sdm845_slim_snd_hw_params.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_ch_cnt.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_ch_cnt.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tx_ch.i) #8
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %rx_ch.i) #8
  br label %sw.epilog

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.23, i32 noundef %7) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %sdm845_slim_snd_hw_params.exit, %for.inc.i.sw.epilog_crit_edge, %do.end60.i, %do.end46.i, %land.rhs.i.sw.epilog_crit_edge, %if.end34.i.sw.epilog_crit_edge, %do.end31.i, %do.end23.i, %do.end15.i, %do.end8.i, %params_format.exit120.i, %do.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.end10 ], [ 0, %entry.sw.epilog_crit_edge ], [ %retval.0.i39, %sdm845_slim_snd_hw_params.exit ], [ %call3, %do.end ], [ %call3, %sw.bb.sw.epilog_crit_edge ], [ %call55.i, %do.end60.i ], [ %call41.i, %do.end46.i ], [ -22, %params_format.exit120.i ], [ %call3.i, %do.end8.i ], [ %call10.i, %do.end15.i ], [ %call18.i, %do.end23.i ], [ %call26.i, %do.end31.i ], [ %ret.0.i, %if.end34.i.sw.epilog_crit_edge ], [ %ret.3.i, %for.inc.i.sw.epilog_crit_edge ], [ %ret.1132.i, %land.rhs.i.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdm845_snd_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %arrayidx2 = getelementptr %struct.sdm845_snd_data, ptr %5, i32 0, i32 8, i32 %11
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx4 = getelementptr %struct.sdm845_snd_data, ptr %5, i32 0, i32 3, i32 %11
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @sdw_disable_stream(ptr noundef nonnull %13) #8
  %call7 = tail call i32 @sdw_deprepare_stream(ptr noundef nonnull %13) #8
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %arrayidx10 = getelementptr %struct.sdm845_snd_data, ptr %5, i32 0, i32 3, i32 %17
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdm845_snd_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %arrayidx2 = getelementptr %struct.sdm845_snd_data, ptr %5, i32 0, i32 8, i32 %11
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.sdm845_snd_data, ptr %5, i32 0, i32 3, i32 %11
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool5.not = icmp eq i8 %15, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.then6

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @sdw_disable_stream(ptr noundef nonnull %13) #8
  %call8 = tail call i32 @sdw_deprepare_stream(ptr noundef nonnull %13) #8
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %arrayidx11 = getelementptr %struct.sdm845_snd_data, ptr %5, i32 0, i32 3, i32 %17
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %if.end.if.end12_crit_edge
  %call13 = tail call i32 @sdw_prepare_stream(ptr noundef nonnull %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @sdw_enable_stream(ptr noundef nonnull %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 @sdw_deprepare_stream(ptr noundef nonnull %13) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %arrayidx24 = getelementptr %struct.sdm845_snd_data, ptr %5, i32 0, i32 3, i32 %20
  %21 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx24, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then19, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.then19 ], [ 0, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt5663_sel_asrc_clk_src(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_channel_map(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_get_channel_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_disable_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_deprepare_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_prepare_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_enable_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdm845_jack_free(ptr nocapture noundef readonly %jack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_set_jack(ptr noundef %1, ptr noundef null, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_snd_soc_sdm845__238_604_sdm845_snd_driver_init6, !1, !"__initcall__kmod_snd_soc_sdm845__238_604_sdm845_snd_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/sdm845.c", i32 604, i32 1}
!2 = !{ptr @__exitcall_sdm845_snd_driver_exit, !1, !"__exitcall_sdm845_snd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/sdm845.c", i32 606, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/sdm845.c", i32 607, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/sdm845.c", i32 600, i32 11}
!10 = !{ptr @sdm845_snd_driver, !11, !"sdm845_snd_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/sdm845.c", i32 597, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/sdm845.c", i32 572, i32 22}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/sdm845.c", i32 535, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/sdm845.c", i32 536, i32 2}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/sdm845.c", i32 537, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/sdm845.c", i32 538, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/sdm845.c", i32 539, i32 2}
!24 = !{ptr @sdm845_snd_widgets, !25, !"sdm845_snd_widgets", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/sdm845.c", i32 534, i32 41}
!26 = !{ptr @sdm845_be_ops, !27, !"sdm845_be_ops", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/sdm845.c", i32 510, i32 33}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/sdm845.c", i32 377, i32 9}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/sdm845.c", i32 381, i32 6}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sdm845_snd_startup._entry, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @sdm845_snd_startup._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/qcom/sdm845.c", i32 388, i32 9}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/qcom/sdm845.c", i32 392, i32 6}
!42 = !{ptr @sdm845_snd_startup._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sdm845_snd_startup._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/sdm845.c", i32 403, i32 3}
!46 = !{ptr @sdm845_snd_startup._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sdm845_snd_startup._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/sdm845.c", i32 450, i32 3}
!50 = !{ptr @sdm845_snd_shutdown._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sdm845_snd_shutdown._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/qcom/sdm845.c", i32 195, i32 4}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sdm845_snd_hw_params._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @sdm845_snd_hw_params._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @sdm845_snd_hw_params._entry.24, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../sound/soc/qcom/sdm845.c", i32 208, i32 3}
!59 = !{ptr @sdm845_snd_hw_params._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/qcom/sdm845.c", i32 101, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sdm845_tdm_snd_hw_params._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @sdm845_tdm_snd_hw_params._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/qcom/sdm845.c", i32 111, i32 4}
!67 = !{ptr @sdm845_tdm_snd_hw_params._entry.28, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sdm845_tdm_snd_hw_params._entry_ptr.30, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/qcom/sdm845.c", i32 119, i32 4}
!71 = !{ptr @sdm845_tdm_snd_hw_params._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sdm845_tdm_snd_hw_params._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @sdm845_tdm_snd_hw_params._entry.34, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../sound/soc/qcom/sdm845.c", i32 127, i32 4}
!75 = !{ptr @sdm845_tdm_snd_hw_params._entry_ptr.35, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @sdm845_tdm_snd_hw_params._entry.36, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../sound/soc/qcom/sdm845.c", i32 135, i32 4}
!78 = !{ptr @sdm845_tdm_snd_hw_params._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/qcom/sdm845.c", i32 149, i32 5}
!81 = !{ptr @sdm845_tdm_snd_hw_params._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @sdm845_tdm_snd_hw_params._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/qcom/sdm845.c", i32 161, i32 5}
!85 = !{ptr @sdm845_tdm_snd_hw_params._entry.41, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @sdm845_tdm_snd_hw_params._entry_ptr.43, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @tdm_slot_offset, !88, !"tdm_slot_offset", i1 false, i1 false}
!88 = !{!"../sound/soc/qcom/sdm845.c", i32 45, i32 21}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/qcom/sdm845.c", i32 69, i32 4}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @sdm845_slim_snd_hw_params._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @sdm845_slim_snd_hw_params._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/qcom/sdm845.c", i32 245, i32 38}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/qcom/sdm845.c", i32 253, i32 4}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sdm845_dai_init._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @sdm845_dai_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/qcom/sdm845.c", i32 276, i32 4}
!103 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @sdm845_dai_init._entry.49, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @sdm845_dai_init._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @sdm845_dai_init._entry.53, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../sound/soc/qcom/sdm845.c", i32 301, i32 5}
!108 = !{ptr @sdm845_dai_init._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @sdm845_snd_device_id, !110, !"sdm845_snd_device_id", i1 false, i1 false}
!110 = !{!"../sound/soc/qcom/sdm845.c", i32 589, i32 34}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{i32 0, i32 33}
