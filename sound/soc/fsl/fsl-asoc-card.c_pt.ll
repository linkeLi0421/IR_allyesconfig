; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/fsl-asoc-card.c_pt.bc'
source_filename = "../sound/soc/fsl/fsl-asoc-card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.fsl_asoc_card_priv = type { [3 x %struct.snd_soc_dai_link], %struct.asoc_simple_jack, %struct.asoc_simple_jack, ptr, %struct.codec_priv, %struct.cpu_priv, %struct.snd_soc_card, i8, i32, i32, i32, i32, i32, [32 x i8] }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.asoc_simple_jack = type { %struct.snd_soc_jack, %struct.snd_soc_jack_pin, %struct.snd_soc_jack_gpio }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_jack_pin = type { %struct.list_head, ptr, i32, i8 }
%struct.snd_soc_jack_gpio = type { i32, i32, ptr, ptr, i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block, ptr, ptr, ptr }
%struct.codec_priv = type { i32, i32, i32, i32, i32 }
%struct.cpu_priv = type { [2 x i32], [2 x i32], [2 x i32], i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_fsl_asoc_card__295_921_fsl_asoc_card_driver_init6 = internal global ptr @fsl_asoc_card_driver_init, section ".initcall6.init", align 4
@fsl_asoc_card_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_asoc_card_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_asoc_card_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_asoc_card_driver_exit = internal global ptr @fsl_asoc_card_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [85 x i8] c"snd_soc_fsl_asoc_card.description=Freescale Generic ASoC Sound Card driver with ASRC\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [67 x i8] c"snd_soc_fsl_asoc_card.author=Nicolin Chen <nicoleotsuka@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [51 x i8] c"snd_soc_fsl_asoc_card.alias=platform:fsl-asoc-card\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [63 x i8] c"snd_soc_fsl_asoc_card.file=sound/soc/fsl/snd-soc-fsl-asoc-card\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [34 x i8] c"snd_soc_fsl_asoc_card.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl-asoc-card\00", [18 x i8] zeroinitializer }, align 32
@fsl_asoc_card_dt_ids = internal constant { [13 x %struct.of_device_id], [620 x i8] } { [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-ac97\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-cs42888\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-cs427x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-tlv320aic32x4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-tlv320aic31xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-wm8962\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-wm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-mqs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-wm8524\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-si476x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-wm8958\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [620 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio-cpu\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssi-controller\00", [17 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 556, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CPU phandle missing or invalid\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_asoc_card_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/fsl/fsl-asoc-card.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr = internal global ptr @fsl_asoc_card_probe._entry, section ".printk_index", align 4
@fsl_asoc_card_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 563, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to find CPU DAI device\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr.10 = internal global ptr @fsl_asoc_card_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audio-codec\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audio-asrc\00", [21 x i8] zeroinitializer }, align 32
@audio_map = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl,imx-audio-cs42888\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cs42888\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx-audio-cs427x\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs4271-hifi\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,imx-audio-sgtl5000\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sgtl5000\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsl,imx-audio-tlv320aic32x4\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320aic32x4-hifi\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fsl,imx-audio-tlv320aic31xx\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320dac31xx-hifi\00", [45 x i8] zeroinitializer }, align 32
@audio_map_tx = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx-audio-wm8962\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8962\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx-audio-wm8960\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8960-hifi\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl,imx-audio-ac97\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ac97-hifi\00", [22 x i8] zeroinitializer }, align 32
@audio_map_ac97 = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl,imx-audio-mqs\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl-mqs-dai\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx-audio-wm8524\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8524-hifi\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx-audio-si476x\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si476x-codec\00", [19 x i8] zeroinitializer }, align 32
@audio_map_rx = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,imx-audio-wm8958\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994-aif1\00", [20 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.4, ptr @.str.5, i32 691, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unknown Device Tree compatible\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr.39 = internal global ptr @fsl_asoc_card_probe._entry.37, section ".printk_index", align 4
@fsl_asoc_card_probe.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.4, ptr @.str.5, ptr @.str.41, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_fsl_asoc_card\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to find codec device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssi\00", [28 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.4, ptr @.str.5, i32 732, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init audmux\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr.45 = internal global ptr @fsl_asoc_card_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"esai\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"extal\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sai\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-audio\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-routing\00", [18 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.4, ptr @.str.5, i32 776, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse audio-routing: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr.55 = internal global ptr @fsl_asoc_card_probe._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cell-index\00", [21 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.4, ptr @.str.5, i32 793, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot get CPU index property\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr.59 = internal global ptr @fsl_asoc_card_probe._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ac97-codec.%u\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,asrc-rate\00", [18 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.4, ptr @.str.5, i32 826, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get output rate\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr.64 = internal global ptr @fsl_asoc_card_probe._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,asrc-format\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,asrc-width\00", [17 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.4, ptr @.str.5, i32 839, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to decide output format\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_asoc_card_probe._entry_ptr.69 = internal global ptr @fsl_asoc_card_probe._entry.67, section ".printk_index", align 4
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_soc_register_card failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hp-det-gpio\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@hp_jack_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @hp_jack_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mic-det-gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Jack\00", [23 x i8] zeroinitializer }, align 32
@mic_jack_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mic_jack_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HiFi\00", [27 x i8] zeroinitializer }, align 32
@hifi_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@fsl_asoc_card_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @fsl_asoc_card_hw_params, ptr @fsl_asoc_card_hw_free, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi-ASRC-FE\00", [19 x i8] zeroinitializer }, align 32
@hifi_fe_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_fe_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.95, ptr null, ptr @.str.96 }], [20 x i8] zeroinitializer }, align 32
@hifi_fe_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi-ASRC-BE\00", [19 x i8] zeroinitializer }, align 32
@hifi_be_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_be_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@hifi_be_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.95, ptr null, ptr @.str.96 }], [20 x i8] zeroinitializer }, align 32
@fsl_asoc_card_dai = internal constant { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [68 x i8] } { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.75, ptr @.str.75, ptr @hifi_cpus, i32 1, ptr @hifi_codecs, i32 1, ptr @hifi_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @fsl_asoc_card_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.76, ptr @.str.76, ptr @hifi_fe_cpus, i32 1, ptr @hifi_fe_codecs, i32 1, ptr @hifi_fe_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -32, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.77, ptr @.str.77, ptr @hifi_be_cpus, i32 1, ptr @hifi_be_codecs, i32 1, ptr @hifi_be_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr @be_hw_params_fixup, ptr @fsl_asoc_card_ops, ptr null, i8 1, i8 96, i8 0, %struct.snd_soc_dobj zeroinitializer }], [68 x i8] zeroinitializer }, align 32
@fsl_asoc_card_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.5, i32 185, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set sysclk for cpu dai\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fsl_asoc_card_hw_params\00", [40 x i8] zeroinitializer }, align 32
@fsl_asoc_card_hw_params._entry_ptr = internal global ptr @fsl_asoc_card_hw_params._entry, section ".printk_index", align 4
@fsl_asoc_card_hw_params._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.5, i32 193, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set TDM slot for cpu dai\0A\00", [60 x i8] zeroinitializer }, align 32
@fsl_asoc_card_hw_params._entry_ptr.83 = internal global ptr @fsl_asoc_card_hw_params._entry.81, section ".printk_index", align 4
@fsl_asoc_card_hw_params._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.5, i32 210, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to start FLL: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_asoc_card_hw_params._entry_ptr.86 = internal global ptr @fsl_asoc_card_hw_params._entry.84, section ".printk_index", align 4
@fsl_asoc_card_hw_params._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.80, ptr @.str.5, i32 219, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to set SYSCLK: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_asoc_card_hw_params._entry_ptr.89 = internal global ptr @fsl_asoc_card_hw_params._entry.87, section ".printk_index", align 4
@fsl_asoc_card_hw_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.5, i32 248, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to switch away from FLL: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_asoc_card_hw_free\00", [42 x i8] zeroinitializer }, align 32
@fsl_asoc_card_hw_free._entry_ptr = internal global ptr @fsl_asoc_card_hw_free._entry, section ".printk_index", align 4
@fsl_asoc_card_hw_free._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.91, ptr @.str.5, i32 255, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to stop FLL: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_asoc_card_hw_free._entry_ptr.94 = internal global ptr @fsl_asoc_card_hw_free._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ASRC-Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASRC-Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AC97 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AC97 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mux-int-port\00", [19 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mux-int-port missing or invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fsl_asoc_card_audmux_init\00", [38 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry_ptr = internal global ptr @fsl_asoc_card_audmux_init._entry, section ".printk_index", align 4
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mux-ext-port\00", [19 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.107, ptr @.str.5, i32 344, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mux-ext-port missing or invalid\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry_ptr.111 = internal global ptr @fsl_asoc_card_audmux_init._entry.109, section ".printk_index", align 4
@fsl_asoc_card_audmux_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.107, ptr @.str.5, i32 423, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"audmux internal port setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry_ptr.114 = internal global ptr @fsl_asoc_card_audmux_init._entry.112, section ".printk_index", align 4
@fsl_asoc_card_audmux_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.107, ptr @.str.5, i32 431, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry_ptr.116 = internal global ptr @fsl_asoc_card_audmux_init._entry.115, section ".printk_index", align 4
@fsl_asoc_card_audmux_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.5, i32 442, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"audmux external port setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry_ptr.119 = internal global ptr @fsl_asoc_card_audmux_init._entry.117, section ".printk_index", align 4
@fsl_asoc_card_audmux_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.5, i32 450, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@fsl_asoc_card_audmux_init._entry_ptr.121 = internal global ptr @fsl_asoc_card_audmux_init._entry.120, section ".printk_index", align 4
@fsl_asoc_card_late_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.5, i32 525, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set sysclk in %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fsl_asoc_card_late_probe\00", [39 x i8] zeroinitializer }, align 32
@fsl_asoc_card_late_probe._entry_ptr = internal global ptr @fsl_asoc_card_late_probe._entry, section ".printk_index", align 4
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Line Out Jack\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Line In Jack\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Ext Spk\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@fsl_asoc_card_dapm_widgets = internal constant { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [308 x i8] } { [7 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [308 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"fsl_asoc_card_driver\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 913, i32 31 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 916, i32 11 }
@___asan_gen_.141 = private unnamed_addr constant [21 x i8] c"fsl_asoc_card_dt_ids\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 896, i32 34 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 551, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 554, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 556, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 563, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 568, i32 34 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 587, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"audio_map\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 113, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 614, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 615, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 622, i32 41 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 623, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 626, i32 41 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 627, i32 20 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 630, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 631, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 633, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 634, i32 20 }
@___asan_gen_.213 = private unnamed_addr constant [13 x i8] c"audio_map_tx\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 131, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 643, i32 41 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 644, i32 20 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 649, i32 41 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 650, i32 20 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 654, i32 41 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 655, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"audio_map_ac97\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 122, i32 40 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 659, i32 41 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 660, i32 20 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 668, i32 41 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 669, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 676, i32 41 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 677, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant [13 x i8] c"audio_map_rx\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 138, i32 40 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 681, i32 41 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 682, i32 20 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 691, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 722, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 728, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 732, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 735, i32 37 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 736, i32 50 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 749, i32 37 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 758, i32 48 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 760, i32 44 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 761, i32 35 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 773, i32 32 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 776, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 790, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 792, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 799, i32 13 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 823, i32 39 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 826, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 831, i32 39 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 835, i32 40 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 838, i32 5 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 856, i32 34 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 868, i32 32 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 870, i32 19 }
@___asan_gen_.354 = private unnamed_addr constant [11 x i8] c"hp_jack_nb\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 472, i32 30 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 877, i32 32 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 879, i32 19 }
@___asan_gen_.363 = private unnamed_addr constant [12 x i8] c"mic_jack_nb\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 491, i32 30 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 303, i32 11 }
@___asan_gen_.369 = private unnamed_addr constant [10 x i8] c"hifi_cpus\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [12 x i8] c"hifi_codecs\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [15 x i8] c"hifi_platforms\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 285, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant [18 x i8] c"fsl_asoc_card_ops\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 263, i32 33 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 310, i32 11 }
@___asan_gen_.384 = private unnamed_addr constant [13 x i8] c"hifi_fe_cpus\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [15 x i8] c"hifi_fe_codecs\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [18 x i8] c"hifi_fe_platforms\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 318, i32 11 }
@___asan_gen_.396 = private unnamed_addr constant [13 x i8] c"hifi_be_cpus\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [15 x i8] c"hifi_be_codecs\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [18 x i8] c"hifi_be_platforms\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 295, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant [18 x i8] c"fsl_asoc_card_dai\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 300, i32 32 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 185, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 193, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 210, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 219, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 248, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 255, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 290, i32 1 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 115, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 115, i32 22 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 116, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 116, i32 25 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 118, i32 26 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 119, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 124, i32 22 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 125, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 337, i32 33 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 339, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 342, i32 33 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 344, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 423, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 431, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 442, i32 4 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 450, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 525, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 147, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 148, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 150, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 152, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 153, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [27 x i8] c"fsl_asoc_card_dapm_widgets\00", align 1
@___asan_gen_.544 = private constant [33 x i8] c"../sound/soc/fsl/fsl-asoc-card.c\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.544, i32 146, i32 41 }
@llvm.compiler.used = appending global [166 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_fsl_asoc_card_driver_exit, ptr @__initcall__kmod_snd_soc_fsl_asoc_card__295_921_fsl_asoc_card_driver_init6, ptr @fsl_asoc_card_audmux_init._entry, ptr @fsl_asoc_card_audmux_init._entry.109, ptr @fsl_asoc_card_audmux_init._entry.112, ptr @fsl_asoc_card_audmux_init._entry.115, ptr @fsl_asoc_card_audmux_init._entry.117, ptr @fsl_asoc_card_audmux_init._entry.120, ptr @fsl_asoc_card_audmux_init._entry_ptr, ptr @fsl_asoc_card_audmux_init._entry_ptr.111, ptr @fsl_asoc_card_audmux_init._entry_ptr.114, ptr @fsl_asoc_card_audmux_init._entry_ptr.116, ptr @fsl_asoc_card_audmux_init._entry_ptr.119, ptr @fsl_asoc_card_audmux_init._entry_ptr.121, ptr @fsl_asoc_card_driver_exit, ptr @fsl_asoc_card_hw_free._entry, ptr @fsl_asoc_card_hw_free._entry.92, ptr @fsl_asoc_card_hw_free._entry_ptr, ptr @fsl_asoc_card_hw_free._entry_ptr.94, ptr @fsl_asoc_card_hw_params._entry, ptr @fsl_asoc_card_hw_params._entry.81, ptr @fsl_asoc_card_hw_params._entry.84, ptr @fsl_asoc_card_hw_params._entry.87, ptr @fsl_asoc_card_hw_params._entry_ptr, ptr @fsl_asoc_card_hw_params._entry_ptr.83, ptr @fsl_asoc_card_hw_params._entry_ptr.86, ptr @fsl_asoc_card_hw_params._entry_ptr.89, ptr @fsl_asoc_card_late_probe._entry, ptr @fsl_asoc_card_late_probe._entry_ptr, ptr @fsl_asoc_card_probe._entry, ptr @fsl_asoc_card_probe._entry.37, ptr @fsl_asoc_card_probe._entry.43, ptr @fsl_asoc_card_probe._entry.53, ptr @fsl_asoc_card_probe._entry.57, ptr @fsl_asoc_card_probe._entry.62, ptr @fsl_asoc_card_probe._entry.67, ptr @fsl_asoc_card_probe._entry.8, ptr @fsl_asoc_card_probe._entry_ptr, ptr @fsl_asoc_card_probe._entry_ptr.10, ptr @fsl_asoc_card_probe._entry_ptr.39, ptr @fsl_asoc_card_probe._entry_ptr.45, ptr @fsl_asoc_card_probe._entry_ptr.55, ptr @fsl_asoc_card_probe._entry_ptr.59, ptr @fsl_asoc_card_probe._entry_ptr.64, ptr @fsl_asoc_card_probe._entry_ptr.69, ptr @fsl_asoc_card_driver, ptr @.str, ptr @fsl_asoc_card_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @audio_map, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @audio_map_tx, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @audio_map_ac97, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @audio_map_rx, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @hp_jack_nb, ptr @.str.73, ptr @.str.74, ptr @mic_jack_nb, ptr @.str.75, ptr @hifi_cpus, ptr @hifi_codecs, ptr @hifi_platforms, ptr @fsl_asoc_card_ops, ptr @.str.76, ptr @hifi_fe_cpus, ptr @hifi_fe_codecs, ptr @hifi_fe_platforms, ptr @.str.77, ptr @hifi_be_cpus, ptr @hifi_be_codecs, ptr @hifi_be_platforms, ptr @fsl_asoc_card_dai, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.118, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @fsl_asoc_card_dapm_widgets], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_dt_ids to i32), i32 2548, i32 3168, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_map to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_map_tx to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_map_ac97 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_map_rx to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_jack_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_jack_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_fe_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_fe_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_fe_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_be_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_be_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hifi_be_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_dai to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_hw_params._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_hw_params._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_hw_params._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_hw_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_hw_free._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_audmux_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_audmux_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_audmux_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_audmux_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_audmux_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_audmux_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_late_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_asoc_card_dapm_widgets to i32), i32 1260, i32 1568, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asoc_card_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_asoc_card_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_asoc_card_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_asoc_card_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asoc_card_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %int_port.i = alloca i32, align 4
  %ext_port.i = alloca i32, align 4
  %args.i746 = alloca %struct.of_phandle_args, align 4
  %args.i740 = alloca %struct.of_phandle_args, align 4
  %args.i734 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %bitclkprovider = alloca ptr, align 4
  %frameprovider = alloca ptr, align 4
  %width = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitclkprovider) #8
  %2 = ptrtoint ptr %bitclkprovider to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %bitclkprovider, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frameprovider) #8
  %3 = ptrtoint ptr %frameprovider to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %frameprovider, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width) #8
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %width, align 4, !annotation !281
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1904, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup502_crit_edge, label %if.end

entry.cleanup502_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup502

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %5 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i732 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i732)
  %tobool.not.i = icmp eq i32 %call.i732, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.then4

of_parse_phandle.exit:                            ; preds = %if.end
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.if.then4_crit_edge, label %of_parse_phandle.exit.if.end10_crit_edge

of_parse_phandle.exit.if.end10_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

of_parse_phandle.exit.if.then4_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %of_parse_phandle.exit.if.then4_crit_edge, %of_parse_phandle.exit.thread
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i734) #8
  %8 = call ptr @memset(ptr %args.i734, i32 255, i32 72)
  %call.i735 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i734) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i735)
  %tobool.not.i736 = icmp eq i32 %call.i735, 0
  br i1 %tobool.not.i736, label %if.end6, label %if.end6.thread775

if.end6.thread775:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i734) #8
  br label %do.end

if.end6:                                          ; preds = %if.then4
  %9 = ptrtoint ptr %args.i734 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %args.i734, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i734) #8
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end6.do.end_crit_edge, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.end6.do.end_crit_edge, %if.end6.thread775
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  br label %fail

if.end10:                                         ; preds = %if.end6.if.end10_crit_edge, %of_parse_phandle.exit.if.end10_crit_edge
  %cpu_np.0774 = phi ptr [ %10, %if.end6.if.end10_crit_edge ], [ %7, %of_parse_phandle.exit.if.end10_crit_edge ]
  %call11 = call ptr @of_find_device_by_node(ptr noundef nonnull %cpu_np.0774) #8
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %fail

if.end18:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i740) #8
  %11 = call ptr @memset(ptr %args.i740, i32 255, i32 72)
  %call.i741 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i740) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i741)
  %tobool.not.i742 = icmp eq i32 %call.i741, 0
  br i1 %tobool.not.i742, label %of_parse_phandle.exit745, label %of_parse_phandle.exit745.thread

of_parse_phandle.exit745.thread:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i740) #8
  br label %if.end36

of_parse_phandle.exit745:                         ; preds = %if.end18
  %12 = ptrtoint ptr %args.i740 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i740, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i740) #8
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %of_parse_phandle.exit745.if.end36_crit_edge, label %if.then21

of_parse_phandle.exit745.if.end36_crit_edge:      ; preds = %of_parse_phandle.exit745
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then21:                                        ; preds = %of_parse_phandle.exit745
  %call22 = call ptr @of_find_i2c_device_by_node(ptr noundef nonnull %13) #8
  %tobool23.not = icmp eq ptr %call22, null
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %call22, i32 0, i32 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %call22, i32 0, i32 2
  %codec_dev_name.0 = select i1 %tobool23.not, ptr inttoptr (i32 -1 to ptr), ptr %name
  %tobool27.not795 = icmp eq ptr %dev25, null
  %tobool27.not = select i1 %tobool23.not, i1 true, i1 %tobool27.not795
  br i1 %tobool27.not, label %if.then28, label %if.then21.if.end36_crit_edge

if.then21.if.end36_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then28:                                        ; preds = %if.then21
  %call29 = call ptr @of_find_device_by_node(ptr noundef nonnull %13) #8
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then28.if.end36_crit_edge, label %if.then31

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %call29, i32 0, i32 3
  %14 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call29, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then28.if.end36_crit_edge, %if.then21.if.end36_crit_edge, %of_parse_phandle.exit745.if.end36_crit_edge, %of_parse_phandle.exit745.thread
  %retval.0.i744781 = phi ptr [ null, %of_parse_phandle.exit745.if.end36_crit_edge ], [ %13, %if.then21.if.end36_crit_edge ], [ %13, %if.then31 ], [ %13, %if.then28.if.end36_crit_edge ], [ null, %of_parse_phandle.exit745.thread ]
  %codec_dev.2 = phi ptr [ null, %of_parse_phandle.exit745.if.end36_crit_edge ], [ %dev25, %if.then21.if.end36_crit_edge ], [ %dev32, %if.then31 ], [ null, %if.then28.if.end36_crit_edge ], [ null, %of_parse_phandle.exit745.thread ]
  %codec_dev_name.2 = phi ptr [ inttoptr (i32 -1 to ptr), %of_parse_phandle.exit745.if.end36_crit_edge ], [ %codec_dev_name.0, %if.then21.if.end36_crit_edge ], [ %15, %if.then31 ], [ %codec_dev_name.0, %if.then28.if.end36_crit_edge ], [ inttoptr (i32 -1 to ptr), %of_parse_phandle.exit745.thread ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i746) #8
  %16 = call ptr @memset(ptr %args.i746, i32 255, i32 72)
  %call.i747 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i746) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i747)
  %tobool.not.i748 = icmp eq i32 %call.i747, 0
  br i1 %tobool.not.i748, label %of_parse_phandle.exit751, label %of_parse_phandle.exit751.thread

of_parse_phandle.exit751.thread:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i746) #8
  br label %if.end41

of_parse_phandle.exit751:                         ; preds = %if.end36
  %17 = ptrtoint ptr %args.i746 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args.i746, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i746) #8
  %tobool38.not = icmp eq ptr %18, null
  br i1 %tobool38.not, label %of_parse_phandle.exit751.if.end41_crit_edge, label %if.then39

of_parse_phandle.exit751.if.end41_crit_edge:      ; preds = %of_parse_phandle.exit751
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then39:                                        ; preds = %of_parse_phandle.exit751
  call void @__sanitizer_cov_trace_pc() #10
  %call40 = call ptr @of_find_device_by_node(ptr noundef nonnull %18) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %of_parse_phandle.exit751.if.end41_crit_edge, %of_parse_phandle.exit751.thread
  %retval.0.i750786 = phi ptr [ %18, %if.then39 ], [ null, %of_parse_phandle.exit751.if.end41_crit_edge ], [ null, %of_parse_phandle.exit751.thread ]
  %asrc_pdev.0 = phi ptr [ %call40, %if.then39 ], [ null, %of_parse_phandle.exit751.if.end41_crit_edge ], [ null, %of_parse_phandle.exit751.thread ]
  %tobool42.not = icmp eq ptr %codec_dev.2, null
  br i1 %tobool42.not, label %if.end41.if.end49_crit_edge, label %if.then43

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then43:                                        ; preds = %if.end41
  %call44 = call ptr @clk_get(ptr noundef nonnull %codec_dev.2, ptr noundef null) #8
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then43.if.end49_crit_edge, label %if.then46

if.then43.if.end49_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = call i32 @clk_get_rate(ptr noundef %call44) #8
  %codec_priv = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %codec_priv to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call47, ptr %codec_priv, align 4
  call void @clk_put(ptr noundef %call44) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.then43.if.end49_crit_edge, %if.end41.if.end49_crit_edge
  %sample_rate = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 44100, ptr %sample_rate, align 4
  %sample_format = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 9
  %21 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %sample_format, align 4
  %dai_fmt = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 12
  %22 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %dai_fmt, align 4
  %23 = call ptr @memcpy(ptr %call.i, ptr @fsl_asoc_card_dai, i32 348)
  %card = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6
  %dapm_routes = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 37
  %24 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @audio_map, ptr %dapm_routes, align 4
  %num_dapm_routes = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 38
  %25 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %num_dapm_routes, align 4
  %call52 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %codec_priv55 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %codec_priv55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %codec_priv55, align 4
  %cpu_priv = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5
  %arrayidx = getelementptr %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %cpu_priv to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %cpu_priv, align 4
  %sysclk_dir = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 1
  %arrayidx63 = getelementptr %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx63, align 4
  %31 = ptrtoint ptr %sysclk_dir to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %sysclk_dir, align 4
  %slot_width = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %slot_width to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 32, ptr %slot_width, align 4
  %33 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dai_fmt, align 4
  %or = or i32 %34, 16384
  store i32 %or, ptr %dai_fmt, align 4
  br label %if.end234

if.else:                                          ; preds = %if.end49
  %call69 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.else75, label %if.then71

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %mclk_id to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %mclk_id, align 4
  %36 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dai_fmt, align 4
  %or74 = or i32 %37, 4096
  store i32 %or74, ptr %dai_fmt, align 4
  br label %if.end234

if.else75:                                        ; preds = %if.else
  %call76 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.else83, label %if.then78

if.then78:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_id80 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 2
  %38 = ptrtoint ptr %mclk_id80 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %mclk_id80, align 4
  %39 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dai_fmt, align 4
  %or82 = or i32 %40, 4096
  store i32 %or82, ptr %dai_fmt, align 4
  br label %if.end234

if.else83:                                        ; preds = %if.else75
  %call84 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.else89, label %if.then86

if.then86:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dai_fmt, align 4
  %or88 = or i32 %42, 4096
  store i32 %or88, ptr %dai_fmt, align 4
  br label %if.end234

if.else89:                                        ; preds = %if.else83
  %call90 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.else115, label %if.then92

if.then92:                                        ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dai_fmt, align 4
  %or94 = or i32 %44, 16384
  store i32 %or94, ptr %dai_fmt, align 4
  %dpcm_capture = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 1, i32 18
  %45 = ptrtoint ptr %dpcm_capture to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load = load i32, ptr %dpcm_capture, align 4
  %bf.clear = and i32 %bf.load, -4194305
  store i32 %bf.clear, ptr %dpcm_capture, align 4
  %dpcm_capture99 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 2, i32 18
  %46 = ptrtoint ptr %dpcm_capture99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load100 = load i32, ptr %dpcm_capture99, align 4
  %bf.clear101 = and i32 %bf.load100, -4194305
  store i32 %bf.clear101, ptr %dpcm_capture99, align 4
  %sysclk_dir104 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 1
  %arrayidx105 = getelementptr %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %47 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %arrayidx105, align 4
  %48 = ptrtoint ptr %sysclk_dir104 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %sysclk_dir104, align 4
  %mclk_id110 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %mclk_id110 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %mclk_id110, align 4
  %50 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @audio_map_tx, ptr %dapm_routes, align 4
  %51 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %num_dapm_routes, align 4
  br label %if.end234

if.else115:                                       ; preds = %if.else89
  %call116 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.else125, label %if.then118

if.then118:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  %mclk_id120 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 2
  %52 = ptrtoint ptr %mclk_id120 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %mclk_id120, align 4
  %fll_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %fll_id to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %fll_id, align 4
  %pll_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 4
  %54 = ptrtoint ptr %pll_id to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %pll_id, align 4
  %55 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dai_fmt, align 4
  %or124 = or i32 %56, 4096
  store i32 %or124, ptr %dai_fmt, align 4
  br label %if.end234

if.else125:                                       ; preds = %if.else115
  %call126 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.else135, label %if.then128

if.then128:                                       ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #10
  %fll_id130 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 3
  %57 = ptrtoint ptr %fll_id130 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %fll_id130, align 4
  %pll_id132 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 4
  %58 = ptrtoint ptr %pll_id132 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %pll_id132, align 4
  %59 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dai_fmt, align 4
  %or134 = or i32 %60, 4096
  store i32 %or134, ptr %dai_fmt, align 4
  br label %if.end234

if.else135:                                       ; preds = %if.else125
  %call136 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.else144, label %if.then138

if.then138:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 6, ptr %dai_fmt, align 4
  %62 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @audio_map_ac97, ptr %dapm_routes, align 4
  %63 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %num_dapm_routes, align 4
  br label %if.end234

if.else144:                                       ; preds = %if.else135
  %call145 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.else165, label %if.then147

if.then147:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 16387, ptr %dai_fmt, align 4
  %dpcm_capture151 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 1, i32 18
  %65 = ptrtoint ptr %dpcm_capture151 to i32
  call void @__asan_load4_noabort(i32 %65)
  %bf.load152 = load i32, ptr %dpcm_capture151, align 4
  %bf.clear153 = and i32 %bf.load152, -4194305
  store i32 %bf.clear153, ptr %dpcm_capture151, align 4
  %dpcm_capture157 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 2, i32 18
  %66 = ptrtoint ptr %dpcm_capture157 to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load158 = load i32, ptr %dpcm_capture157, align 4
  %bf.clear159 = and i32 %bf.load158, -4194305
  store i32 %bf.clear159, ptr %dpcm_capture157, align 4
  %67 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @audio_map_tx, ptr %dapm_routes, align 4
  %68 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %num_dapm_routes, align 4
  br label %if.end234

if.else165:                                       ; preds = %if.else144
  %call166 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %if.else189, label %if.then168

if.then168:                                       ; preds = %if.else165
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dai_fmt, align 4
  %or170 = or i32 %70, 16384
  store i32 %or170, ptr %dai_fmt, align 4
  %dpcm_capture173 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 1, i32 18
  %71 = ptrtoint ptr %dpcm_capture173 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load174 = load i32, ptr %dpcm_capture173, align 4
  %bf.clear175 = and i32 %bf.load174, -4194305
  store i32 %bf.clear175, ptr %dpcm_capture173, align 4
  %dpcm_capture179 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 2, i32 18
  %72 = ptrtoint ptr %dpcm_capture179 to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load180 = load i32, ptr %dpcm_capture179, align 4
  %bf.clear181 = and i32 %bf.load180, -4194305
  store i32 %bf.clear181, ptr %dpcm_capture179, align 4
  %slot_width184 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 3
  %73 = ptrtoint ptr %slot_width184 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 32, ptr %slot_width184, align 4
  %74 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @audio_map_tx, ptr %dapm_routes, align 4
  %75 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %num_dapm_routes, align 4
  br label %if.end234

if.else189:                                       ; preds = %if.else165
  %call190 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.else199, label %if.then192

if.then192:                                       ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dai_fmt, align 4
  %or194 = or i32 %77, 16384
  store i32 %or194, ptr %dai_fmt, align 4
  %78 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @audio_map_rx, ptr %dapm_routes, align 4
  %79 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %num_dapm_routes, align 4
  br label %if.end234

if.else199:                                       ; preds = %if.else189
  %call200 = call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %do.end221, label %if.then202

if.then202:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dai_fmt, align 4
  %or204 = or i32 %81, 4096
  store i32 %or204, ptr %dai_fmt, align 4
  %codec_priv205 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4
  %mclk_id206 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 2
  %82 = ptrtoint ptr %mclk_id206 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %mclk_id206, align 4
  %fll_id208 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 3
  %83 = ptrtoint ptr %fll_id208 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %fll_id208, align 4
  %pll_id210 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 4
  %84 = ptrtoint ptr %pll_id210 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %pll_id210, align 4
  %85 = ptrtoint ptr %codec_priv205 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %codec_priv205, align 4
  %free_freq = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 4, i32 1
  %87 = ptrtoint ptr %free_freq to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %free_freq, align 4
  %88 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %dapm_routes, align 4
  %89 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %num_dapm_routes, align 4
  br label %if.end234

do.end221:                                        ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #11
  br label %asrc_fail

if.end234:                                        ; preds = %if.then202, %if.then192, %if.then168, %if.then147, %if.then138, %if.then128, %if.then118, %if.then92, %if.then86, %if.then78, %if.then71, %if.then54
  %codec_dai_name.0 = phi ptr [ @.str.14, %if.then54 ], [ @.str.16, %if.then71 ], [ @.str.18, %if.then78 ], [ @.str.20, %if.then86 ], [ @.str.22, %if.then92 ], [ @.str.24, %if.then118 ], [ @.str.26, %if.then128 ], [ @.str.28, %if.then138 ], [ @.str.30, %if.then147 ], [ @.str.32, %if.then168 ], [ @.str.34, %if.then192 ], [ @.str.36, %if.then202 ]
  %call235 = call i32 @snd_soc_daifmt_parse_clock_provider_raw(ptr noundef %1, ptr noundef null, ptr noundef nonnull %bitclkprovider, ptr noundef nonnull %frameprovider) #8
  %90 = ptrtoint ptr %bitclkprovider to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bitclkprovider, align 4
  %tobool236.not = icmp eq ptr %91, null
  br i1 %tobool236.not, label %lor.lhs.false, label %if.end234.if.then238_crit_edge

if.end234.if.then238_crit_edge:                   ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then238

lor.lhs.false:                                    ; preds = %if.end234
  %92 = ptrtoint ptr %frameprovider to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %frameprovider, align 4
  %tobool237.not = icmp eq ptr %93, null
  br i1 %tobool237.not, label %lor.lhs.false.if.end249_crit_edge, label %lor.lhs.false.if.then238_crit_edge

lor.lhs.false.if.then238_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then238

lor.lhs.false.if.end249_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end249

if.then238:                                       ; preds = %lor.lhs.false.if.then238_crit_edge, %if.end234.if.then238_crit_edge
  %call239 = call i32 @snd_soc_daifmt_parse_format(ptr noundef %1, ptr noundef null) #8
  %94 = ptrtoint ptr %bitclkprovider to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %bitclkprovider, align 4
  %cmp = icmp eq ptr %retval.0.i744781, %95
  %96 = ptrtoint ptr %frameprovider to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %frameprovider, align 4
  %cmp241 = icmp eq ptr %retval.0.i744781, %97
  %cond = select i1 %cmp241, i32 4096, i32 12288
  %cond245 = select i1 %cmp241, i32 8192, i32 16384
  %cond.pn = select i1 %cmp, i32 %cond, i32 %cond245
  %daifmt.0 = or i32 %cond.pn, %call239
  %98 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %daifmt.0, ptr %dai_fmt, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.then238, %lor.lhs.false.if.end249_crit_edge
  %99 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dai_fmt, align 4
  %and = and i32 %100, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool251.not = icmp eq i32 %and, 0
  br i1 %tobool251.not, label %if.end249.if.end259_crit_edge, label %if.then252

if.end249.if.end259_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end259

if.then252:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %sysclk_dir254 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 1
  %arrayidx255 = getelementptr %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx255 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx255, align 4
  %102 = ptrtoint ptr %sysclk_dir254 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %sysclk_dir254, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then252, %if.end249.if.end259_crit_edge
  %103 = ptrtoint ptr %bitclkprovider to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bitclkprovider, align 4
  call void @of_node_put(ptr noundef %104) #8
  %105 = ptrtoint ptr %frameprovider to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %frameprovider, align 4
  call void @of_node_put(ptr noundef %106) #8
  %107 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dai_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %108)
  %cmp.i752 = icmp eq i32 %108, 6
  %tobool42.not.not = xor i1 %tobool42.not, true
  %brmerge = select i1 %cmp.i752, i1 true, i1 %tobool42.not.not
  br i1 %brmerge, label %if.end273, label %do.body263

do.body263:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_asoc_card_probe.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_asoc_card_probe, %if.then268)) #8
          to label %asrc_fail [label %if.then268], !srcloc !282

if.then268:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_asoc_card_probe.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.41) #8
  br label %asrc_fail

if.end273:                                        ; preds = %if.end259
  %call274 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %cpu_np.0774, ptr noundef nonnull @.str.42) #8
  br i1 %call274, label %if.then275, label %if.else284

if.then275:                                       ; preds = %if.end273
  %pdev.i = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 3
  %109 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %110, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_port.i) #8
  %111 = ptrtoint ptr %int_port.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %int_port.i, align 4, !annotation !281
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext_port.i) #8
  %112 = ptrtoint ptr %ext_port.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %ext_port.i, align 4, !annotation !281
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.105, ptr noundef nonnull %int_port.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i753 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i753, label %if.end.i754, label %if.then275.cleanup137.sink.split.i_crit_edge

if.then275.cleanup137.sink.split.i_crit_edge:     ; preds = %if.then275
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137.sink.split.i

if.end.i754:                                      ; preds = %if.then275
  %call.i.i167.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.108, ptr noundef nonnull %ext_port.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i167.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i167.i, -1
  br i1 %tobool3.not.i, label %if.end8.i, label %if.end.i754.cleanup137.sink.split.i_crit_edge

if.end.i754.cleanup137.sink.split.i_crit_edge:    ; preds = %if.end.i754
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137.sink.split.i

if.end8.i:                                        ; preds = %if.end.i754
  %113 = ptrtoint ptr %int_port.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %int_port.i, align 4
  %dec.i = add i32 %114, -1
  store i32 %dec.i, ptr %int_port.i, align 4
  %115 = ptrtoint ptr %ext_port.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ext_port.i, align 4
  %dec9.i = add i32 %116, -1
  store i32 %dec9.i, ptr %ext_port.i, align 4
  %117 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dai_fmt, align 4
  %and.i = and i32 %118, 61440
  %119 = add nsw i32 %and.i, -4096
  %120 = lshr exact i32 %119, 12
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i32 %120, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb25.i
    i32 1, label %sw.bb42.i
    i32 3, label %sw.bb59.i
  ]

sw.bb.i:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = and i32 %dec9.i, 7
  %and10.i = or i32 %or.i, 8
  %or14.i = mul nuw nsw i32 %and10.i, 135168
  %and15.i = and i32 %dec9.i, 15
  %shl16.i = shl nuw nsw i32 %and15.i, 27
  %shl19.i = shl nuw nsw i32 %and15.i, 22
  %or17.i = or i32 %shl19.i, %shl16.i
  %or20.i = or i32 %or17.i, -2078212096
  %or24.i = add nsw i32 %or20.i, %or14.i
  br label %sw.epilog.i

sw.bb25.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or26.i = shl i32 %dec9.i, 12
  %and27.i = and i32 %or26.i, 28672
  %and29.i = shl i32 %dec9.i, 22
  %shl30.i = and i32 %and29.i, 62914560
  %shl28.i = or i32 %and27.i, %shl30.i
  %or33.i = or i32 %shl28.i, 67207168
  %or34.i = shl i32 %dec.i, 17
  %and35.i = and i32 %or34.i, 917504
  %and37.i = shl i32 %dec.i, 27
  %shl36.i = or i32 %and35.i, %and37.i
  %or41.i = or i32 %shl36.i, -2144337920
  br label %sw.epilog.i

sw.bb42.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or43.i = shl i32 %dec9.i, 17
  %and44.i = and i32 %or43.i, 917504
  %and46.i = shl i32 %dec9.i, 27
  %shl45.i = or i32 %and44.i, %and46.i
  %or50.i = or i32 %shl45.i, -2144337920
  %or51.i = shl i32 %dec.i, 12
  %and52.i = and i32 %or51.i, 28672
  %and54.i = shl i32 %dec.i, 22
  %shl55.i = and i32 %and54.i, 62914560
  %shl53.i = or i32 %and52.i, %shl55.i
  %or58.i = or i32 %shl53.i, 67207168
  br label %sw.epilog.i

sw.bb59.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %or60.i = and i32 %dec.i, 7
  %and61.i = or i32 %or60.i, 8
  %or66.i = mul nuw nsw i32 %and61.i, 135168
  %and67.i = and i32 %dec.i, 15
  %shl68.i = shl nuw nsw i32 %and67.i, 27
  %shl71.i = shl nuw nsw i32 %and67.i, 22
  %or69.i = or i32 %shl71.i, %shl68.i
  %or72.i = or i32 %or69.i, -2078212096
  %or76.i = add nsw i32 %or72.i, %or66.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %118)
  %cmp.i.i = icmp eq i32 %118, 6
  br i1 %cmp.i.i, label %if.end90.i, label %sw.default.i.do.end281_crit_edge

sw.default.i.do.end281_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end281

sw.epilog.i:                                      ; preds = %sw.bb59.i, %sw.bb42.i, %sw.bb25.i, %sw.bb.i
  %int_ptcr.0.i = phi i32 [ 0, %sw.bb59.i ], [ %or50.i, %sw.bb42.i ], [ %or33.i, %sw.bb25.i ], [ %or24.i, %sw.bb.i ]
  %ext_ptcr.0.i = phi i32 [ %or76.i, %sw.bb59.i ], [ %or58.i, %sw.bb42.i ], [ %or41.i, %sw.bb25.i ], [ 0, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %118)
  %cmp.i169.i = icmp eq i32 %118, 6
  br i1 %cmp.i169.i, label %if.end90.thread186.i, label %if.then92.i

if.end90.thread186.i:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %and82188.i = shl i32 %dec9.i, 22
  %shl83189.i = and i32 %and82188.i, 62914560
  %or85190.i = or i32 %shl83189.i, 67110912
  %and86191.i = shl i32 %dec.i, 27
  %or89192.i = or i32 %and86191.i, -2147481600
  br label %if.end102.i

if.end90.i:                                       ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %and82.i = shl i32 %dec9.i, 22
  %shl83.i = and i32 %and82.i, 62914560
  %or85.i = or i32 %shl83.i, 67110912
  %and86.i = shl i32 %dec.i, 27
  %or89.i = or i32 %and86.i, -2147481600
  br label %if.end102.i

if.then92.i:                                      ; preds = %sw.epilog.i
  %and93.i = shl i32 %dec9.i, 13
  %shl94.i = and i32 %and93.i, 57344
  %call95.i = call i32 @imx_audmux_v2_configure_port(i32 noundef %dec.i, i32 noundef 0, i32 noundef %shl94.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.then92.i.if.end102.i_crit_edge, label %if.then92.i.cleanup137.sink.split.i_crit_edge

if.then92.i.cleanup137.sink.split.i_crit_edge:    ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137.sink.split.i

if.then92.i.if.end102.i_crit_edge:                ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then92.i.if.end102.i_crit_edge, %if.end90.i, %if.end90.thread186.i
  %ext_ptcr.1185.i = phi i32 [ %or89.i, %if.end90.i ], [ %ext_ptcr.0.i, %if.then92.i.if.end102.i_crit_edge ], [ %or89192.i, %if.end90.thread186.i ]
  %int_ptcr.1183.i = phi i32 [ %or85.i, %if.end90.i ], [ %int_ptcr.0.i, %if.then92.i.if.end102.i_crit_edge ], [ %or85190.i, %if.end90.thread186.i ]
  %122 = ptrtoint ptr %int_port.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %int_port.i, align 4
  %124 = ptrtoint ptr %ext_port.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %ext_port.i, align 4
  %and103.i = shl i32 %125, 13
  %shl104.i = and i32 %and103.i, 57344
  %call105.i = call i32 @imx_audmux_v2_configure_port(i32 noundef %123, i32 noundef %int_ptcr.1183.i, i32 noundef %shl104.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %tobool106.not.i = icmp eq i32 %call105.i, 0
  br i1 %tobool106.not.i, label %if.end111.i, label %if.end102.i.cleanup137.sink.split.i_crit_edge

if.end102.i.cleanup137.sink.split.i_crit_edge:    ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137.sink.split.i

if.end111.i:                                      ; preds = %if.end102.i
  %126 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %dai_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %127)
  %cmp.i173.i = icmp eq i32 %127, 6
  br i1 %cmp.i173.i, label %if.end111.i.if.end127.i_crit_edge, label %if.then113.i

if.end111.i.if.end127.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127.i

if.then113.i:                                     ; preds = %if.end111.i
  %128 = ptrtoint ptr %int_port.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %int_port.i, align 4
  %and115.i = shl i32 %129, 13
  %shl116.i = and i32 %and115.i, 57344
  %130 = ptrtoint ptr %ext_port.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %ext_port.i, align 4
  %call117.i = call i32 @imx_audmux_v2_configure_port(i32 noundef %131, i32 noundef 0, i32 noundef %shl116.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117.i)
  %tobool118.not.i = icmp eq i32 %call117.i, 0
  br i1 %tobool118.not.i, label %if.then113.i.if.end127.i_crit_edge, label %if.then113.i.cleanup137.sink.split.i_crit_edge

if.then113.i.cleanup137.sink.split.i_crit_edge:   ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137.sink.split.i

if.then113.i.if.end127.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.then113.i.if.end127.i_crit_edge, %if.end111.i.if.end127.i_crit_edge
  %132 = ptrtoint ptr %ext_port.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ext_port.i, align 4
  %134 = ptrtoint ptr %int_port.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %int_port.i, align 4
  %and128.i = shl i32 %135, 13
  %shl129.i = and i32 %and128.i, 57344
  %call130.i = call i32 @imx_audmux_v2_configure_port(i32 noundef %133, i32 noundef %ext_ptcr.1185.i, i32 noundef %shl129.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %tobool131.not.i = icmp eq i32 %call130.i, 0
  br i1 %tobool131.not.i, label %fsl_asoc_card_audmux_init.exit, label %if.end127.i.cleanup137.sink.split.i_crit_edge

if.end127.i.cleanup137.sink.split.i_crit_edge:    ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup137.sink.split.i

cleanup137.sink.split.i:                          ; preds = %if.end127.i.cleanup137.sink.split.i_crit_edge, %if.then113.i.cleanup137.sink.split.i_crit_edge, %if.end102.i.cleanup137.sink.split.i_crit_edge, %if.then92.i.cleanup137.sink.split.i_crit_edge, %if.end.i754.cleanup137.sink.split.i_crit_edge, %if.then275.cleanup137.sink.split.i_crit_edge
  %.str.118.sink.i = phi ptr [ @.str.106, %if.then275.cleanup137.sink.split.i_crit_edge ], [ @.str.110, %if.end.i754.cleanup137.sink.split.i_crit_edge ], [ @.str.113, %if.then92.i.cleanup137.sink.split.i_crit_edge ], [ @.str.113, %if.end102.i.cleanup137.sink.split.i_crit_edge ], [ @.str.118, %if.then113.i.cleanup137.sink.split.i_crit_edge ], [ @.str.118, %if.end127.i.cleanup137.sink.split.i_crit_edge ]
  %retval.3.ph.i = phi i32 [ %call.i.i.i, %if.then275.cleanup137.sink.split.i_crit_edge ], [ %call.i.i167.i, %if.end.i754.cleanup137.sink.split.i_crit_edge ], [ %call95.i, %if.then92.i.cleanup137.sink.split.i_crit_edge ], [ %call105.i, %if.end102.i.cleanup137.sink.split.i_crit_edge ], [ %call117.i, %if.then113.i.cleanup137.sink.split.i_crit_edge ], [ %call130.i, %if.end127.i.cleanup137.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.118.sink.i) #11
  br label %do.end281

fsl_asoc_card_audmux_init.exit:                   ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_port.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_port.i) #8
  br label %if.end321

do.end281:                                        ; preds = %cleanup137.sink.split.i, %sw.default.i.do.end281_crit_edge
  %retval.3.i.ph = phi i32 [ %retval.3.ph.i, %cleanup137.sink.split.i ], [ -22, %sw.default.i.do.end281_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext_port.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_port.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #11
  br label %asrc_fail

if.else284:                                       ; preds = %if.end273
  %call285 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %cpu_np.0774, ptr noundef nonnull @.str.46) #8
  br i1 %call285, label %if.then286, label %if.else310

if.then286:                                       ; preds = %if.else284
  %dev287 = getelementptr inbounds %struct.platform_device, ptr %call11, i32 0, i32 3
  %call288 = call ptr @clk_get(ptr noundef %dev287, ptr noundef nonnull @.str.47) #8
  %cmp.i756 = icmp ugt ptr %call288, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i756, label %if.else299, label %if.then290

if.then290:                                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #10
  %call291 = call i32 @clk_get_rate(ptr noundef %call288) #8
  %cpu_priv292 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5
  %arrayidx294 = getelementptr %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call291, ptr %arrayidx294, align 4
  %call295 = call i32 @clk_get_rate(ptr noundef %call288) #8
  %137 = ptrtoint ptr %cpu_priv292 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call295, ptr %cpu_priv292, align 4
  call void @clk_put(ptr noundef %call288) #8
  br label %cleanup.thread

if.else299:                                       ; preds = %if.then286
  %cmp301 = icmp eq ptr %call288, inttoptr (i32 -517 to ptr)
  br i1 %cmp301, label %if.else299.asrc_fail_crit_edge, label %if.else299.cleanup.thread_crit_edge

if.else299.cleanup.thread_crit_edge:              ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.else299.asrc_fail_crit_edge:                   ; preds = %if.else299
  call void @__sanitizer_cov_trace_pc() #10
  br label %asrc_fail

cleanup.thread:                                   ; preds = %if.else299.cleanup.thread_crit_edge, %if.then290
  %sysclk_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 2
  %arrayidx306 = getelementptr %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 2, i32 1
  %138 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %arrayidx306, align 4
  %139 = ptrtoint ptr %sysclk_id to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 3, ptr %sysclk_id, align 4
  br label %if.end321

if.else310:                                       ; preds = %if.else284
  %call311 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %cpu_np.0774, ptr noundef nonnull @.str.48) #8
  br i1 %call311, label %if.then312, label %if.else310.if.end321_crit_edge

if.else310.if.end321_crit_edge:                   ; preds = %if.else310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end321

if.then312:                                       ; preds = %if.else310
  call void @__sanitizer_cov_trace_pc() #10
  %sysclk_id314 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 2
  %arrayidx315 = getelementptr %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 5, i32 2, i32 1
  %140 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %arrayidx315, align 4
  %141 = ptrtoint ptr %sysclk_id314 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %sysclk_id314, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.then312, %if.else310.if.end321_crit_edge, %cleanup.thread, %fsl_asoc_card_audmux_init.exit
  %pdev322 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 3
  %142 = ptrtoint ptr %pdev322 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %pdev, ptr %pdev322, align 4
  %dev325 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 5
  %143 = ptrtoint ptr %dev325 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %dev, ptr %dev325, align 4
  %owner = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 7
  %144 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %owner, align 4
  %call328 = call i32 @snd_soc_of_parse_card_name(ptr noundef %card, ptr noundef nonnull @.str.49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328)
  %tobool329.not = icmp eq i32 %call328, 0
  br i1 %tobool329.not, label %if.end321.if.end340_crit_edge, label %if.then330

if.end321.if.end340_crit_edge:                    ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end340

if.then330:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #10
  %name331 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 13
  %145 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dai_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %146)
  %cmp.i758 = icmp eq i32 %146, 6
  %spec.select = select i1 %cmp.i758, ptr @.str.51, ptr %codec_dev_name.2
  %call335 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name331, i32 noundef 32, ptr noundef nonnull @.str.50, ptr noundef %spec.select)
  %147 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %name331, ptr %card, align 4
  br label %if.end340

if.end340:                                        ; preds = %if.then330, %if.end321.if.end340_crit_edge
  %dai_link344 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 24
  %148 = ptrtoint ptr %dai_link344 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i, ptr %dai_link344, align 4
  %late_probe = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 13
  %149 = ptrtoint ptr %late_probe to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @fsl_asoc_card_late_probe, ptr %late_probe, align 4
  %dapm_widgets = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 35
  %150 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @fsl_asoc_card_dapm_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 36
  %151 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 7, ptr %num_dapm_widgets, align 4
  %tobool348.not = icmp eq ptr %asrc_pdev.0, null
  br i1 %tobool348.not, label %if.then349, label %if.end340.if.end352_crit_edge

if.end340.if.end352_crit_edge:                    ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end352

if.then349:                                       ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_dapm_routes, align 4
  %div = sdiv i32 %153, 2
  store i32 %div, ptr %num_dapm_routes, align 4
  br label %if.end352

if.end352:                                        ; preds = %if.then349, %if.end340.if.end352_crit_edge
  %call.i759 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.52, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i759, null
  br i1 %tobool.i.not, label %if.end352.if.end364_crit_edge, label %if.then354

if.end352.if.end364_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end364

if.then354:                                       ; preds = %if.end352
  %call356 = call i32 @snd_soc_of_parse_audio_routing(ptr noundef %card, ptr noundef nonnull @.str.52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call356)
  %tobool357.not = icmp eq i32 %call356, 0
  br i1 %tobool357.not, label %if.then354.if.end364_crit_edge, label %do.end361

if.then354.if.end364_crit_edge:                   ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end364

do.end361:                                        ; preds = %if.then354
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call356) #11
  br label %asrc_fail

if.end364:                                        ; preds = %if.then354.if.end364_crit_edge, %if.end352.if.end364_crit_edge
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 2
  %154 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cpus, align 4
  %of_node367 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %of_node367 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %cpu_np.0774, ptr %of_node367, align 4
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 4
  %157 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %codecs, align 4
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %codec_dai_name.0, ptr %dai_name, align 4
  %160 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %dai_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %161)
  %cmp.i761 = icmp eq i32 %161, 6
  br i1 %cmp.i761, label %if.else376, label %if.then371

if.then371:                                       ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %codecs, align 4
  %of_node375 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %of_node375 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %retval.0.i744781, ptr %of_node375, align 4
  br label %if.end401

if.else376:                                       ; preds = %if.end364
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %165 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -1, ptr %idx, align 4, !annotation !281
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %cpu_np.0774, ptr noundef nonnull @.str.56, ptr noundef nonnull %idx, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool378.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool378.not, label %if.end384, label %do.end382

do.end382:                                        ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #11
  br label %cleanup398.thread

if.end384:                                        ; preds = %if.else376
  %166 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %idx, align 4
  %call386 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.60, i32 noundef %167) #8
  %168 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %codecs, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call386, ptr %169, align 4
  %171 = load ptr, ptr %codecs, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %tobool395.not = icmp eq ptr %173, null
  br i1 %tobool395.not, label %if.end384.cleanup398.thread_crit_edge, label %cleanup398

if.end384.cleanup398.thread_crit_edge:            ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup398.thread

cleanup398.thread:                                ; preds = %if.end384.cleanup398.thread_crit_edge, %do.end382
  %ret.1.ph = phi i32 [ %call.i.i, %do.end382 ], [ -12, %if.end384.cleanup398.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  br label %asrc_fail

cleanup398:                                       ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  br label %if.end401

if.end401:                                        ; preds = %cleanup398, %if.then371
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 6
  %174 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %platforms, align 4
  %of_node404 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %of_node404 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %cpu_np.0774, ptr %of_node404, align 4
  %177 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %dai_fmt, align 4
  %dai_fmt408 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i, i32 0, i32 11
  %179 = ptrtoint ptr %dai_fmt408 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %dai_fmt408, align 4
  %num_links = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 25
  %180 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 1, ptr %num_links, align 4
  br i1 %tobool348.not, label %if.end401.if.end472_crit_edge, label %if.then411

if.end401.if.end472_crit_edge:                    ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end472

if.then411:                                       ; preds = %if.end401
  %cpus414 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 1, i32 2
  %181 = ptrtoint ptr %cpus414 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cpus414, align 4
  %of_node415 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %of_node415 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %retval.0.i750786, ptr %of_node415, align 4
  %platforms418 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 1, i32 6
  %184 = ptrtoint ptr %platforms418 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %platforms418, align 4
  %of_node419 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %185, i32 0, i32 1
  %186 = ptrtoint ptr %of_node419 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %retval.0.i750786, ptr %of_node419, align 4
  %codecs422 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 2, i32 4
  %187 = ptrtoint ptr %codecs422 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %codecs422, align 4
  %dai_name423 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %dai_name423 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %codec_dai_name.0, ptr %dai_name423, align 4
  %190 = load ptr, ptr %codecs422, align 4
  %of_node427 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %of_node427 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %retval.0.i744781, ptr %of_node427, align 4
  %192 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %codecs, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = load ptr, ptr %codecs422, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %195, ptr %196, align 4
  %cpus438 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 2, i32 2
  %198 = ptrtoint ptr %cpus438 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cpus438, align 4
  %of_node439 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %of_node439 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %cpu_np.0774, ptr %of_node439, align 4
  %201 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %dai_fmt, align 4
  %dai_fmt443 = getelementptr [3 x %struct.snd_soc_dai_link], ptr %call.i, i32 0, i32 2, i32 11
  %203 = ptrtoint ptr %dai_fmt443 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %202, ptr %dai_fmt443, align 4
  %204 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 3, ptr %num_links, align 4
  %asrc_rate = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 10
  %call.i.i762 = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i750786, ptr noundef nonnull @.str.61, ptr noundef %asrc_rate, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i762)
  %tobool447.not = icmp sgt i32 %call.i.i762, -1
  br i1 %tobool447.not, label %if.end453, label %do.end451

do.end451:                                        ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63) #11
  br label %asrc_fail

if.end453:                                        ; preds = %if.then411
  %asrc_format = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 11
  %call.i.i763 = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i750786, ptr noundef nonnull @.str.65, ptr noundef %asrc_format, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i763)
  %tobool455.not = icmp sgt i32 %call.i.i763, -1
  br i1 %tobool455.not, label %if.end453.if.end472_crit_edge, label %if.then456

if.end453.if.end472_crit_edge:                    ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end472

if.then456:                                       ; preds = %if.end453
  %call.i.i764 = call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i750786, ptr noundef nonnull @.str.66, ptr noundef nonnull %width, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i764)
  %tobool458.not = icmp sgt i32 %call.i.i764, -1
  br i1 %tobool458.not, label %if.end464, label %do.end462

do.end462:                                        ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68) #11
  br label %asrc_fail

if.end464:                                        ; preds = %if.then456
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %206)
  %cmp465 = icmp eq i32 %206, 24
  %. = select i1 %cmp465, i32 6, i32 2
  %207 = ptrtoint ptr %asrc_format to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %., ptr %asrc_format, align 4
  br label %if.end472

if.end472:                                        ; preds = %if.end464, %if.end453.if.end472_crit_edge, %if.end401.if.end472_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %208 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drvdata.i = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 6, i32 57
  %209 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call.i, ptr %drvdata.i, align 4
  %call476 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call476)
  %tobool477.not = icmp eq i32 %call476, 0
  br i1 %tobool477.not, label %if.end481, label %if.then478

if.then478:                                       ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #10
  %call480 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call476, ptr noundef nonnull @.str.70) #8
  br label %asrc_fail

if.end481:                                        ; preds = %if.end472
  %call.i765 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.71, ptr noundef null) #8
  %tobool.i766.not = icmp eq ptr %call.i765, null
  br i1 %tobool.i766.not, label %if.end481.if.end490_crit_edge, label %if.then483

if.end481.if.end490_crit_edge:                    ; preds = %if.end481
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end490

if.then483:                                       ; preds = %if.end481
  %hp_jack = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 1
  %call485 = call i32 @asoc_simple_init_jack(ptr noundef %card, ptr noundef %hp_jack, i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.72) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call485)
  %tobool486.not = icmp eq i32 %call485, 0
  br i1 %tobool486.not, label %if.end488, label %if.then483.asrc_fail_crit_edge

if.then483.asrc_fail_crit_edge:                   ; preds = %if.then483
  call void @__sanitizer_cov_trace_pc() #10
  br label %asrc_fail

if.end488:                                        ; preds = %if.then483
  call void @__sanitizer_cov_trace_pc() #10
  call void @snd_soc_jack_notifier_register(ptr noundef %hp_jack, ptr noundef nonnull @hp_jack_nb) #8
  br label %if.end490

if.end490:                                        ; preds = %if.end488, %if.end481.if.end490_crit_edge
  %call.i767 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef null) #8
  %tobool.i768.not = icmp eq ptr %call.i767, null
  br i1 %tobool.i768.not, label %if.end490.asrc_fail_crit_edge, label %if.then492

if.end490.asrc_fail_crit_edge:                    ; preds = %if.end490
  call void @__sanitizer_cov_trace_pc() #10
  br label %asrc_fail

if.then492:                                       ; preds = %if.end490
  %mic_jack = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %call.i, i32 0, i32 2
  %call494 = call i32 @asoc_simple_init_jack(ptr noundef %card, ptr noundef %mic_jack, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call494)
  %tobool495.not = icmp eq i32 %call494, 0
  br i1 %tobool495.not, label %if.end497, label %if.then492.asrc_fail_crit_edge

if.then492.asrc_fail_crit_edge:                   ; preds = %if.then492
  call void @__sanitizer_cov_trace_pc() #10
  br label %asrc_fail

if.end497:                                        ; preds = %if.then492
  call void @__sanitizer_cov_trace_pc() #10
  call void @snd_soc_jack_notifier_register(ptr noundef %mic_jack, ptr noundef nonnull @mic_jack_nb) #8
  br label %asrc_fail

asrc_fail:                                        ; preds = %if.end497, %if.then492.asrc_fail_crit_edge, %if.end490.asrc_fail_crit_edge, %if.then483.asrc_fail_crit_edge, %if.then478, %do.end462, %do.end451, %cleanup398.thread, %do.end361, %if.else299.asrc_fail_crit_edge, %do.end281, %if.then268, %do.body263, %do.end221
  %ret.3 = phi i32 [ %retval.3.i.ph, %do.end281 ], [ %call356, %do.end361 ], [ -22, %do.end451 ], [ %call.i.i764, %do.end462 ], [ %call476, %if.then478 ], [ %call485, %if.then483.asrc_fail_crit_edge ], [ %call494, %if.then492.asrc_fail_crit_edge ], [ 0, %if.end497 ], [ 0, %if.end490.asrc_fail_crit_edge ], [ -22, %do.end221 ], [ -517, %if.then268 ], [ -517, %do.body263 ], [ -517, %if.else299.asrc_fail_crit_edge ], [ %ret.1.ph, %cleanup398.thread ]
  call void @of_node_put(ptr noundef %retval.0.i750786) #8
  call void @of_node_put(ptr noundef %retval.0.i744781) #8
  %dev501 = getelementptr inbounds %struct.platform_device, ptr %call11, i32 0, i32 3
  call void @put_device(ptr noundef %dev501) #8
  br label %fail

fail:                                             ; preds = %asrc_fail, %do.end16, %do.end
  %cpu_np.0773 = phi ptr [ %cpu_np.0774, %asrc_fail ], [ %cpu_np.0774, %do.end16 ], [ null, %do.end ]
  %ret.4 = phi i32 [ %ret.3, %asrc_fail ], [ -22, %do.end16 ], [ -22, %do.end ]
  call void @of_node_put(ptr noundef %cpu_np.0773) #8
  br label %cleanup502

cleanup502:                                       ; preds = %fail, %entry.cleanup502_crit_edge
  %retval.0 = phi i32 [ %ret.4, %fail ], [ -12, %entry.cleanup502_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frameprovider) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitclkprovider) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_daifmt_parse_clock_provider_raw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_daifmt_parse_format(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asoc_card_late_probe(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %rtd_list = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 26
  %2 = ptrtoint ptr %rtd_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rtd_list, align 4
  %dais = getelementptr i8, ptr %3, i32 -132
  %4 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr i8, ptr %3, i32 -124
  %6 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %dev2 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %dai_fmt.i = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dai_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp.i = icmp eq i32 %13, 6
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %component8 = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 12
  %14 = ptrtoint ptr %component8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %component8, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @snd_ac97_update_bits(ptr noundef %19, i16 noundef zeroext 42, i16 noundef zeroext 48, i16 noundef zeroext 0) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %codec_priv1 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %1, i32 0, i32 4
  %mclk_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %1, i32 0, i32 4, i32 2
  %20 = ptrtoint ptr %mclk_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mclk_id, align 4
  %22 = ptrtoint ptr %codec_priv1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %codec_priv1, align 4
  %call11 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef %21, i32 noundef %23, i32 noundef 0) #8
  %24 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %call11, label %do.end [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -524, label %if.end.cleanup_crit_edge28
  ]

if.end.cleanup_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge28, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call11, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge28 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_init_jack(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_hw_params_fixup(ptr nocapture noundef readonly %rtd, ptr nocapture noundef %params) #6 align 64 {
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
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %asrc_rate = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %asrc_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asrc_rate, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx.i, align 4
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %7 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %max, align 4
  %arrayidx.i7 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = call ptr @memset(ptr %arrayidx.i7, i32 0, i32 32)
  %asrc_format = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %asrc_format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %asrc_format, align 4
  %and.i.i = and i32 %10, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %shr.i.i = lshr i32 %10, 5
  %arrayidx.i.i = getelementptr [8 x i32], ptr %arrayidx.i7, i32 0, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %12
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asoc_card_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  %codec_priv1 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4
  %dev4 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %sample_rate = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sample_rate, align 4
  %arrayidx.i.i133 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %14, %entry.if.then.i.i_crit_edge ], [ %17, %for.inc.i.i.if.then.i.i_crit_edge ]
  %15 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !283
  %add.i.i = or i32 %15, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %sample_format = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i.i, ptr %sample_format, align 4
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %20
  %streams = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %streams, align 4
  %23 = trunc i32 %shl to i8
  %conv8 = or i8 %22, %23
  store i8 %conv8, ptr %streams, align 4
  %dai_fmt.i = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 12
  %24 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dai_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %cmp.i = icmp eq i32 %25, 6
  br i1 %cmp.i, label %params_format.exit.cleanup_crit_edge, label %if.end

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %params_format.exit
  %cpu_priv2 = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dais, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %idxprom = zext i1 %cmp to i32
  %arrayidx10 = getelementptr %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 5, i32 2, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10, align 4
  %arrayidx13 = getelementptr [2 x i32], ptr %cpu_priv2, i32 0, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx13, align 4
  %arrayidx16 = getelementptr %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 5, i32 1, i32 %idxprom
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx16, align 4
  %call17 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #8
  %36 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call17, label %do.end [
    i32 0, label %if.end.if.end22_crit_edge
    i32 -524, label %if.end.if.end22_crit_edge134
  ]

if.end.if.end22_crit_edge134:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.79) #11
  br label %fail

if.end22:                                         ; preds = %if.end.if.end22_crit_edge, %if.end.if.end22_crit_edge134
  %slot_width = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 5, i32 3
  %37 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slot_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool23.not = icmp eq i32 %38, 0
  br i1 %tobool23.not, label %if.end22.if.end38_crit_edge, label %if.then24

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then24:                                        ; preds = %if.end22
  %39 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dais, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call28 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %42, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef %38) #8
  %43 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %call28, label %do.end36 [
    i32 0, label %if.then24.if.end38_crit_edge
    i32 -524, label %if.then24.if.end38_crit_edge135
  ]

if.then24.if.end38_crit_edge135:                  ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then24.if.end38_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end36:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.82) #11
  br label %fail

if.end38:                                         ; preds = %if.then24.if.end38_crit_edge, %if.then24.if.end38_crit_edge135, %if.end22.if.end38_crit_edge
  %pll_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pll_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool39.not = icmp eq i32 %45, 0
  br i1 %tobool39.not, label %if.end38.cleanup_crit_edge, label %land.lhs.true40

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true40:                                  ; preds = %if.end38
  %fll_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %fll_id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fll_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool41.not = icmp eq i32 %47, 0
  br i1 %tobool41.not, label %land.lhs.true40.cleanup_crit_edge, label %if.then42

land.lhs.true40.cleanup_crit_edge:                ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true40
  %48 = ptrtoint ptr %sample_format to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sample_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %49)
  %cmp44 = icmp eq i32 %49, 6
  %50 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sample_rate, align 4
  %mul = mul i32 %51, 384
  %mul49 = shl i32 %51, 8
  %pll_out.0 = select i1 %cmp44, i32 %mul, i32 %mul49
  %52 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_cpus, align 4
  %arrayidx52 = getelementptr ptr, ptr %53, i32 %55
  %56 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx52, align 4
  %mclk_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4, i32 2
  %58 = ptrtoint ptr %mclk_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mclk_id, align 4
  %60 = ptrtoint ptr %codec_priv1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %codec_priv1, align 4
  %call54 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %57, i32 noundef %45, i32 noundef %59, i32 noundef %61, i32 noundef %pll_out.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.85, i32 noundef %call54) #11
  br label %fail

if.end60:                                         ; preds = %if.then42
  %62 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dais, align 4
  %64 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_cpus, align 4
  %arrayidx64 = getelementptr ptr, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx64, align 4
  %68 = ptrtoint ptr %fll_id to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fll_id, align 4
  %call66 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %67, i32 noundef %69, i32 noundef %pll_out.0, i32 noundef 0) #8
  %70 = zext i32 %call66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call66, label %do.end74 [
    i32 0, label %if.end60.cleanup_crit_edge
    i32 -524, label %if.end60.cleanup_crit_edge136
  ]

if.end60.cleanup_crit_edge136:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end74:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.88, i32 noundef %call66) #11
  br label %fail

fail:                                             ; preds = %do.end74, %do.end59, %do.end36, %do.end
  %ret.0 = phi i32 [ %call17, %do.end ], [ %call28, %do.end36 ], [ %call54, %do.end59 ], [ %call66, %do.end74 ]
  %71 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stream, align 4
  %shl78 = shl nuw i32 1, %72
  %73 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %streams, align 4
  %75 = trunc i32 %shl78 to i8
  %76 = xor i8 %75, -1
  %conv81 = and i8 %74, %76
  store i8 %conv81, ptr %streams, align 4
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end60.cleanup_crit_edge, %if.end60.cleanup_crit_edge136, %land.lhs.true40.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %params_format.exit.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge136 ], [ 0, %land.lhs.true40.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_asoc_card_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %dev3 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stream, align 4
  %shl = shl nuw i32 1, %9
  %streams = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %streams to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %streams, align 4
  %12 = trunc i32 %shl to i8
  %13 = xor i8 %12, -1
  %conv4 = and i8 %11, %13
  store i8 %conv4, ptr %streams, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not = icmp eq i8 %conv4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %pll_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pll_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true7:                                   ; preds = %land.lhs.true
  %fll_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %fll_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fll_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %land.lhs.true7.cleanup_crit_edge, label %if.then

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true7
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %mclk_id = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %mclk_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mclk_id, align 4
  %free_freq = getelementptr inbounds %struct.fsl_asoc_card_priv, ptr %5, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %free_freq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %free_freq, align 4
  %call9 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.90, i32 noundef %call9) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %28 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dais, align 4
  %30 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_cpus, align 4
  %arrayidx15 = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx15, align 4
  %34 = ptrtoint ptr %pll_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pll_id, align 4
  %call17 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %33, i32 noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %36 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call17, label %do.end24 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 -524, label %if.end.cleanup_crit_edge50
  ]

if.end.cleanup_crit_edge50:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end24:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.93, i32 noundef %call17) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge50, %do.end, %land.lhs.true7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ %call17, %do.end24 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge50 ], [ 0, %land.lhs.true7.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_audmux_v2_configure_port(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_update_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_jack_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_jack, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dapm1 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 50
  %and = and i32 %event, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm1, ptr noundef nonnull @.str.126) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %dapm1, ptr noundef nonnull @.str.126) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_jack_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_jack, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dapm1 = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 50
  %and = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm1, ptr noundef nonnull @.str.128) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_dapm_enable_pin(ptr noundef %dapm1, ptr noundef nonnull @.str.128) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !92, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !120, !121, !122, !124, !126, !128, !129, !130, !132, !134, !136, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !193, !194, !196, !197, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !227, !228, !229, !231, !233, !234, !235, !237, !238, !239, !241, !242, !244, !245, !246, !248, !249, !251, !252, !253, !254, !256, !258, !260, !262, !264, !266, !268, !270}
!llvm.module.flags = !{!272, !273, !274, !275, !276, !277, !278, !279}
!llvm.ident = !{!280}

!0 = !{ptr @__initcall__kmod_snd_soc_fsl_asoc_card__295_921_fsl_asoc_card_driver_init6, !1, !"__initcall__kmod_snd_soc_fsl_asoc_card__295_921_fsl_asoc_card_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 921, i32 1}
!2 = !{ptr @__exitcall_fsl_asoc_card_driver_exit, !1, !"__exitcall_fsl_asoc_card_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 923, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 924, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias298, !8, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 925, i32 1}
!9 = !{ptr @__UNIQUE_ID_file299, !10, !"__UNIQUE_ID_file299", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 926, i32 1}
!11 = !{ptr @__UNIQUE_ID_license300, !10, !"__UNIQUE_ID_license300", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 916, i32 11}
!14 = !{ptr @fsl_asoc_card_driver, !15, !"fsl_asoc_card_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 913, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 551, i32 32}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 554, i32 33}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 556, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fsl_asoc_card_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @fsl_asoc_card_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 563, i32 3}
!30 = !{ptr @fsl_asoc_card_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fsl_asoc_card_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 568, i32 34}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 587, i32 33}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 614, i32 34}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 615, i32 20}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 622, i32 41}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 623, i32 20}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 626, i32 41}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 627, i32 20}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 630, i32 41}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 631, i32 20}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 633, i32 41}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 634, i32 20}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 643, i32 41}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 644, i32 20}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 649, i32 41}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 650, i32 20}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 654, i32 41}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 655, i32 20}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 659, i32 41}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 660, i32 20}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 668, i32 41}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 669, i32 20}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 676, i32 41}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 677, i32 20}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 681, i32 41}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 682, i32 20}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 691, i32 3}
!86 = !{ptr @fsl_asoc_card_probe._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fsl_asoc_card_probe._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 722, i32 3}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @fsl_asoc_card_probe.__UNIQUE_ID_ddebug294, !89, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 728, i32 30}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 732, i32 4}
!96 = !{ptr @fsl_asoc_card_probe._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @fsl_asoc_card_probe._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 735, i32 37}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 736, i32 50}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 749, i32 37}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 758, i32 48}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 760, i32 44}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 761, i32 35}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 773, i32 32}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 776, i32 4}
!114 = !{ptr @fsl_asoc_card_probe._entry.53, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @fsl_asoc_card_probe._entry_ptr.55, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 790, i32 38}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 792, i32 4}
!120 = !{ptr @fsl_asoc_card_probe._entry.57, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @fsl_asoc_card_probe._entry_ptr.59, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 799, i32 13}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 823, i32 39}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 826, i32 4}
!128 = !{ptr @fsl_asoc_card_probe._entry.62, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @fsl_asoc_card_probe._entry_ptr.64, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 831, i32 39}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 835, i32 40}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 838, i32 5}
!136 = !{ptr @fsl_asoc_card_probe._entry.67, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @fsl_asoc_card_probe._entry_ptr.69, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 856, i32 34}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 868, i32 32}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 870, i32 19}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 877, i32 32}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 879, i32 19}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 303, i32 11}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 310, i32 11}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 318, i32 11}
!154 = !{ptr @fsl_asoc_card_dai, !155, !"fsl_asoc_card_dai", i1 false, i1 false}
!155 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 300, i32 32}
!156 = !{ptr @hifi_cpus, !157, !"hifi_cpus", i1 false, i1 false}
!157 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 285, i32 1}
!158 = !{ptr @hifi_codecs, !157, !"hifi_codecs", i1 false, i1 false}
!159 = !{ptr @hifi_platforms, !157, !"hifi_platforms", i1 false, i1 false}
!160 = !{ptr @fsl_asoc_card_ops, !161, !"fsl_asoc_card_ops", i1 false, i1 false}
!161 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 263, i32 33}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 185, i32 3}
!164 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @fsl_asoc_card_hw_params._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @fsl_asoc_card_hw_params._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.82, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 193, i32 4}
!169 = !{ptr @fsl_asoc_card_hw_params._entry.81, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @fsl_asoc_card_hw_params._entry_ptr.83, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 210, i32 4}
!173 = !{ptr @fsl_asoc_card_hw_params._entry.84, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @fsl_asoc_card_hw_params._entry_ptr.86, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 219, i32 4}
!177 = !{ptr @fsl_asoc_card_hw_params._entry.87, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @fsl_asoc_card_hw_params._entry_ptr.89, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 248, i32 4}
!181 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @fsl_asoc_card_hw_free._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @fsl_asoc_card_hw_free._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 255, i32 4}
!186 = !{ptr @fsl_asoc_card_hw_free._entry.92, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @fsl_asoc_card_hw_free._entry_ptr.94, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @hifi_fe_cpus, !189, !"hifi_fe_cpus", i1 false, i1 false}
!189 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 290, i32 1}
!190 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @hifi_fe_codecs, !189, !"hifi_fe_codecs", i1 false, i1 false}
!193 = !{ptr @hifi_fe_platforms, !189, !"hifi_fe_platforms", i1 false, i1 false}
!194 = !{ptr @hifi_be_cpus, !195, !"hifi_be_cpus", i1 false, i1 false}
!195 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 295, i32 1}
!196 = !{ptr @hifi_be_codecs, !195, !"hifi_be_codecs", i1 false, i1 false}
!197 = !{ptr @hifi_be_platforms, !195, !"hifi_be_platforms", i1 false, i1 false}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 115, i32 3}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 115, i32 22}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 116, i32 3}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 116, i32 25}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 118, i32 26}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 119, i32 3}
!210 = !{ptr @audio_map, !211, !"audio_map", i1 false, i1 false}
!211 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 113, i32 40}
!212 = !{ptr @audio_map_tx, !213, !"audio_map_tx", i1 false, i1 false}
!213 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 131, i32 40}
!214 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 124, i32 22}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 125, i32 3}
!218 = !{ptr @audio_map_ac97, !219, !"audio_map_ac97", i1 false, i1 false}
!219 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 122, i32 40}
!220 = !{ptr @audio_map_rx, !221, !"audio_map_rx", i1 false, i1 false}
!221 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 138, i32 40}
!222 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 337, i32 33}
!224 = !{ptr @.str.106, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 339, i32 3}
!226 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @fsl_asoc_card_audmux_init._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @fsl_asoc_card_audmux_init._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 342, i32 33}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 344, i32 3}
!233 = !{ptr @fsl_asoc_card_audmux_init._entry.109, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @fsl_asoc_card_audmux_init._entry_ptr.111, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 423, i32 4}
!237 = !{ptr @fsl_asoc_card_audmux_init._entry.112, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @fsl_asoc_card_audmux_init._entry_ptr.114, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @fsl_asoc_card_audmux_init._entry.115, !240, !"_entry", i1 false, i1 false}
!240 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 431, i32 3}
!241 = !{ptr @fsl_asoc_card_audmux_init._entry_ptr.116, !240, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 442, i32 4}
!244 = !{ptr @fsl_asoc_card_audmux_init._entry.117, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @fsl_asoc_card_audmux_init._entry_ptr.119, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @fsl_asoc_card_audmux_init._entry.120, !247, !"_entry", i1 false, i1 false}
!247 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 450, i32 3}
!248 = !{ptr @fsl_asoc_card_audmux_init._entry_ptr.121, !247, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 525, i32 3}
!251 = !{ptr @.str.123, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @fsl_asoc_card_late_probe._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @fsl_asoc_card_late_probe._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 147, i32 2}
!256 = !{ptr @.str.125, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 148, i32 2}
!258 = !{ptr @.str.126, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 150, i32 2}
!260 = !{ptr @.str.127, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 152, i32 2}
!262 = !{ptr @.str.128, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 153, i32 2}
!264 = !{ptr @fsl_asoc_card_dapm_widgets, !265, !"fsl_asoc_card_dapm_widgets", i1 false, i1 false}
!265 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 146, i32 41}
!266 = !{ptr @hp_jack_nb, !267, !"hp_jack_nb", i1 false, i1 false}
!267 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 472, i32 30}
!268 = !{ptr @mic_jack_nb, !269, !"mic_jack_nb", i1 false, i1 false}
!269 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 491, i32 30}
!270 = !{ptr @fsl_asoc_card_dt_ids, !271, !"fsl_asoc_card_dt_ids", i1 false, i1 false}
!271 = !{!"../sound/soc/fsl/fsl-asoc-card.c", i32 896, i32 34}
!272 = !{i32 1, !"wchar_size", i32 2}
!273 = !{i32 1, !"min_enum_size", i32 4}
!274 = !{i32 8, !"branch-target-enforcement", i32 0}
!275 = !{i32 8, !"sign-return-address", i32 0}
!276 = !{i32 8, !"sign-return-address-all", i32 0}
!277 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!278 = !{i32 7, !"uwtable", i32 1}
!279 = !{i32 7, !"frame-pointer", i32 2}
!280 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!281 = !{!"auto-init"}
!282 = !{i64 2148747583, i64 2148747588, i64 2148747601, i64 2148747645, i64 2148747679, i64 2148747700}
!283 = !{i32 0, i32 33}
